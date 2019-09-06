class BlogsController < ApplicationController
    protect_from_forgery except: :index
     # caches_page :index
     # skip_before_filter :verify_authenticity_token, :only => [:create]
    
    def index
        @blogs = Blog.all
        render json: @blogs
    end
    def show
        @blog = Blog.find(params[:id])
        render json: @blog
    end


    def create
        
        
        @blog = Blog.new(blog_params)
        @blog.save
        render json: @blog
    end
    def update
        
        @blog = Blog.find(params[:id])
       
         if (params[:thought] == 1 && @blog.like == nil)
            @blog.like = 1
            
         elsif (params[:thought] == 1 && @blog.like != nil)
            @blog.like += 1
         elsif (params[:thought] == 2 && @blog.dislike == nil)
            @blog.dislike = 1
            elsif (params[:thought] == 2 && @blog.dislike != nil)
                @blog.dislike += 1
         end
       
         @blog.save
         render json: @blog
    end

     private
     
    def blog_params
     params.require(:blog).permit(:username, :headline, :content, :date, :like, :dislike)
              
    end
end
