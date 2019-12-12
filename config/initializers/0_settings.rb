# frozen_string_literal: true

class Settings < Settingslogic
  source Rails.root.join('config/application.yml')
  namespace Rails.env
  suppress_errors true
  load!
end
