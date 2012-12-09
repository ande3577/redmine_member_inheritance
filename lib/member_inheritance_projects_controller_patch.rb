module MemberInheritanceProjectsControllerPatch
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
      unloadable
      
      after_filter :inherit_members, :only => [:create] 
    end
  end
          
  module ClassMethods
  end
  
  module InstanceMethods
  end
  
  def inherit_members
    if !@project.nil? and !@project.parent.nil? and (params[:project][:inherit_members] == '1')
      logger.info "inheriting members from: #{@project.parent.name}"
      
      members = @project.parent.members
      logger.debug "members = #{members.inspect}"
      
      @project.copy(@project.parent, :only => 'members')
    end
  end
  
end