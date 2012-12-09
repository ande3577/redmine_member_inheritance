module RedmineMemberInheritance
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_projects_form,
                  :partial => 'projects/member_inheritance_view_projects_form'
  end
end