def setup_rails_apllication!
  p '👍 Start setup_rails_apllication!'

  setup_source_paths

  template 'Gemfile', force: true
  template 'README.md', force: true

  remove_unuse_files
  create_use_files

  p '✌️ Finish setup_rails_apllication!'
end

def remove_unuse_files
  remove_dir 'app/channels'
  remove_dir 'app/jobs'
  remove_file 'config/cable.yml'
  remove_file 'config/storage.yml'
  remove_dir 'storage'
  remove_dir 'test'
end

def create_use_files
  empty_directory_with_keep_file 'app/validators'
  empty_directory_with_keep_file 'app/view_objects'
  empty_directory_with_keep_file 'app/workers'
  copy_file '.fasterer.yml'
  copy_file '.haml-lint.yml'
  copy_file '.rubocop.yml'
  copy_file 'todo.md'

  apply 'bin/template.rb'
  apply 'config/template.rb'
  apply 'spec/template.rb'
end

# rails newだけで即座にsample pageを作れた方が、DX的にありがたいので、
# setupやscaffoldをrails newの中で行う
def run_rails_setup_commands!
  run 'bin/setup'
  run 'bin/webpack'
end

# https://github.com/erikhuda/thor/blob/2115b7accb42e0acca330ba694552322386994a5/lib/thor/actions.rb#L127
# source_pathsメソッドを上書きしてテンプレートの位置を指定し、
# templateメソッドやcopy_fileメソッドでテンプレートの位置からの相対パスを指定できるようにする
# 参考: https://railsguides.jp/rails_application_templates.html#%E9%AB%98%E5%BA%A6%E3%81%AA%E5%88%A9%E7%94%A8%E6%B3%95
def setup_source_paths
  source_paths.unshift File.dirname __FILE__
end

setup_rails_apllication!
run_rails_setup_commands!
