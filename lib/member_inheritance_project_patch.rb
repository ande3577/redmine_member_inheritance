module MemberInheritanceProjectPatch
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
      unloadable
    end
  end
          
  module ClassMethods
  end
  
  module InstanceMethods
    def inherit_members
      return false
    end
    
    def inherit_members=(inherit)
    end
  end
end