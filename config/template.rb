copy_file 'config/application.yml'

copy_file 'config/initializers/0_settings.rb'
copy_file 'config/initializers/kaminari_config.rb'
copy_file 'config/initializers/rollbar.rb'
copy_file 'config/initializers/sidekiq.rb'
copy_file 'config/newrelic.yml'

insert_into_file 'config/environments/development.rb', after: /\A/ do
  <<~'RUBY'
  # 明示的に読み込まないとdb:migrate時に落ちる
  require_relative '../initializers/0_settings.rb'

  RUBY
end

insert_into_file 'config/environments/development.rb', before: /\nend\n\z/ do
  <<-'RUBY'
  # N + 1は問答無用で500画面に遷移させる
  config.after_initialize do
    Bullet.enable = true
    Bullet.console = true
    Bullet.rails_logger = true
    Bullet.raise = true
    Bullet.add_footer = true
    Bullet.unused_eager_loading_enable = false
    Bullet.counter_cache_enable        = false
  end

  # host white list
  config.hosts += Settings.hosts.values
  RUBY
end

insert_into_file 'config/environments/test.rb', before: /\nend\n\z/ do
  <<-'RUBY'
  # N + 1は問答無用で500画面に遷移させる
  config.after_initialize do
    Bullet.enable = true
    Bullet.console = true
    Bullet.rails_logger = true
    Bullet.raise = true
    Bullet.add_footer = true
    Bullet.unused_eager_loading_enable = false
    Bullet.counter_cache_enable        = false
  end
  RUBY
end

insert_into_file 'config/application.rb', before: /^  end/ do
  <<-'RUBY'
    config.active_job.queue_adapter = :sidekiq
  RUBY
end
