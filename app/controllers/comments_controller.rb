class CommentsController < ApplicationController
before_action :find_commentable

    def new
      @comment = Comment.new
    end

    def create
      @comment = @commentable.comments.new comment_params

      if @comment.save
        redirect_back fallback_location: root_path, notice: 'Your comment was successfully posted!'
      else
        redirect_back fallback_location: root_path, notice: "Your comment wasn't posted!"
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :user_id)
    end

    def find_commentable
      puts "Inside find_commentable : question id = #{params[:question_id]}"
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Question.find_by_id(params[:question_id]) if params[:question_id]
      #@commentable = Answer.find_by_id(params[:answer_id]) if params[:answer_id]

    end

end