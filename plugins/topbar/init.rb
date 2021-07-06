require 'redmine'
require_dependency 'stylesheet_hook_listener'

Redmine::Plugin.register :topbar do
  name 'Topbar plugin'
  author 'CSCS.asia'
  description 'This is a topbar plugin for Redmine'
  version '0.0.1'
  url 'https://cscs.asia'
  author_url 'https://cscs.asia'

  menu :top_menu, :workflow, '/projects/cscs-workflow/wiki/Workflow', caption: '作業流程'
end
