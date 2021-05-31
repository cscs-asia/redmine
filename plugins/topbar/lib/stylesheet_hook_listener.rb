class StylesheetHookListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    if context[:controller]
      return stylesheet_link_tag('global', :plugin => "topbar")
    else
      return ''
    end
  end
end