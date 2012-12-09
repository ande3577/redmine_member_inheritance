require_dependency 'member_inheritance_hooks'
require_dependency 'member_inheritance_project_patch'
require_dependency 'member_inheritance_projects_controller_patch'

Rails.configuration.to_prepare do
    unless Project.included_modules.include?(MemberInheritanceProjectPatch)
        Project.send(:include, MemberInheritanceProjectPatch
          )
    end
    unless ProjectsController.included_modules.include?(MemberInheritanceProjectsControllerPatch)
        ProjectsController.send(:include, MemberInheritanceProjectsControllerPatch
          )
    end
    
end

Redmine::Plugin.register :redmine_member_inheritance do
  name 'Redmine Member Inheritance'
  author 'David Anderson'
  description 'When creating a new subproject, gives option of inheriting project members from parent'
  version '0.0.1'
  url 'https://github.com/ande3577/redmine_member_inheritance'
  author_url 'https://github.com/ande3577'
end
