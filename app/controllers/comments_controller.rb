class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments

    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def create

        @comment = Comment.new(params)
        @comment.save
    end
end
