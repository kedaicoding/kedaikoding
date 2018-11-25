class ForumThreadPolicy < ApplicationPolicy
    
    def edit?
        user.present? && user == forum_thread.user
    end

    def update?
        user.present? && user == forum_thread.user       
    end

    def destroy?
        user.present? && user == forum_thread.user
    end
       
    def forum_thread
        record
    end
    
end