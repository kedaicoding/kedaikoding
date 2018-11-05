class ForumPostsController < ApplicationController
    def create
        @forum_thread = ForumThread.find(params[:forum_thread_id])
        @forum_post = ForumPost.new(forumposts_params)

        @forum_post.forum_thread = @forum_thread
        @forum_post.user = current_user

        # authorize @forum_post

        if @forum_post.save
           redirect_to forum_thread_path(@forum_thread) 
        else
            render 'forum_threads/show'
        end
        
    end

    private

    def forumposts_params
        params.require(:forum_post).permit(:body)
    end
    
    
end