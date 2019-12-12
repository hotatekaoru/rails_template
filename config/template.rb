copy_file 'config/application.yml'

copy_file 'config/initializers/0_settings.rb'
copy_file 'config/initializers/kaminari_config.rb'
copy_file 'config/initializers/rollbar.rb'
copy_file 'config/newrelic.yml'

insert_into_file 'config/environments/development.rb', after: /\A/ do
  <<~'RUBY'
  # 明示的に読み込まないとdb:migrate時に落ちる
  require_relative '../initializers/0_settings.rb'

  RUBY
end
