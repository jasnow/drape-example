class CommentsController < ApplicationController
  def create
    comment = post.comments.new(comment_params)

    if comment.save
      redirect_to post
    else
      redirect_to post, flash: { error: 'Oups, something went wrong :(' }
    end
  end

  private

  def post
    return @post if defined?(@post)
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
