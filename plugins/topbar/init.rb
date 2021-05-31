require 'redmine'
require_dependency 'stylesheet_hook_listener'

Redmine::Plugin.register :topbar do
  name 'Topbar plugin'
  author 'CSCS.asia'
  description 'This is a topbar plugin for Redmine'
  version '0.0.1'
  url 'https://cscs.asia'
  author_url 'https://cscs.asia'

  menu :top_menu, :novice, 'https://docs.google.com/spreadsheets/d/1iBafbD6Ghpb_x2lPz0kVa5PG4rNyHtJFpxPwGYEimtU/edit?usp=sharing', {caption: '新手任務', html: {target: 'cscs_novice'}}
  menu :top_menu, :workflow, '/projects/cscs-workflow/wiki/Workflow', caption: '作業流程'
  menu :top_menu, :qna, 'https://docs.google.com/spreadsheets/d/1QfQOTOn-uGINixT_n7sxWYzP-f0z8q6j0EcaXw4txL8/edit#gid=0', {caption: 'Q&A', html: {target: 'cscs_qna'}}
end
