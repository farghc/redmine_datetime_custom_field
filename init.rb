require 'redmine'

Rails.logger.info 'o=>'
Rails.logger.info 'o=>Starting Redmine Datetime Custom Field plugin for Redmine'

Redmine::Plugin.register :redmine_datetime_custom_field do
  name 'Redmine Datetime Custom Field plugin'
  author 'Anthony LEGIRET <anthony.legiret@smile.fr>, Jérôme BATAILLE <jerome.bataille@smile.fr>'
  description 'This plugin adds the DateTime type to Redmine custom fields'
  url "https://github.com/Smile-SA/redmine_datetime_custom_field"
  version '1.0.4'
  requires_redmine :version_or_higher => '3.1.1'
end

require_relative 'lib/redmine_datetime_custom_field.rb'

Rails.application.config.to_prepare do
  require_relative 'lib/application_helper.rb'
  require_relative 'lib/datetime_custom_field_field_format_patch'
  require_relative 'lib/datetime_custom_field.rb'

  require_relative 'lib/datetime_custom_field_query_patch'
end
