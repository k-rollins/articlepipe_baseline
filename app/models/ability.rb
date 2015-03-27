class Ability
  include CanCan::Ability

  def initialize(user)
    

    
    #can :manage, Feature if (user && user.admin?)
   
    
    can :read, Profile if user != nil
  
  
    can :update, Profile do |resource|
      (user && user.access_level >= 100 && (user.id == resource.id)) ? true : false
    end
    

#    can :read, Feature if catch(:bad_req) do
#      (1..5).to_a.each { |i| throw(:bad_req, false) unless i < 4 }
#      true
#   end
      
#    can :read, Feature if catch(:bad_req) do |feature|
#    Feature.class_requirements.each  { |reqt_met| throw(:bad_req, false) unless reqt_met }
#     feature.requirements { |reqt_met| throw(:bad_req, false) unless i } if feature
#      true
#    end
    

        
        
    
#    can :read, SecureResource do |sr|
#       sr.user_id == user.try(:id)
#    end
    
#   if (user && user.try(:access_level) >= 100)
#     can :read, Profile
#     can :update, Profile do |pr|
#     pr.user_id === user.try(:id)    
#     end
#   end
  
  end

end
