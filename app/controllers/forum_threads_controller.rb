class ForumThreadsController < ApplicationController
    before_action :authenticate_user! , only: [:new, :create]
    
    def index
        @forum_threads = ForumThread.all
    end

    def new 
        @forum_thread = ForumThread.new        
    end

    def show
        @forum_thread = ForumThread.find(params[:id])
        @forum_post = ForumPost.new
    end

    def edit
        @forum_thread = ForumThread.find(params[:id])
        authorize @forum_thread        
    end  

    def create 
        @forum_thread = ForumThread.new(forumthreads_params)
        @forum_thread.user = current_user
    
        # authorize @forum_thread
    
        if @forum_thread.save
          redirect_to forum_threads_path
        else
          render 'new'
        end
    end

    def update
        @forum_thread = ForumThread.find(params[:id])
        authorize @forum_thread
        if @forum_thread.update(forumthreads_params)
          redirect_to forum_threads_path
        else
          render 'edit'
        end
    end

    def destroy
        @forum_thread = ForumThread.find(params[:id])
        authorize @forum_thread

        if @forum_thread.destroy
            redirect_to forum_threads_path
        else
            render 'edit'         
        end
    end
    
    private
    
    def forumthreads_params
        params.require(:forum_thread).permit(:title, :body, :tag)
    end
       
end