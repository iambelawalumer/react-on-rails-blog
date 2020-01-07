class CommentsController < ApplicationController
   # http_basic_authenticate_with name: "ali", password:"123", only: [:destroy]
   before_action :authenticate_user!,only: [:create, :destroy]

    def create
        @post = Post.friendly.find(params[:post_id])
        @comment = @post.comments.new(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.friendly.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        if(@comment.destroy!)
          @status = true
          @id = @comment
        else
          @status = false
        end
#         render json: {
#   error: "No such user; check the submitted email address",
#   status: 400
# },
      #  redirect_to post_path(@post)
        respond_to do |format|
          format.js
        end
    end

    private def comment_params
        params.require(:comment).permit(:body)
    end
end
