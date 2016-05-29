class PostsController < ApplicationController
  def index
    render locals: { posts: posts }
  end

  def show
    render locals: { post: post }
  end

  def create
    post = Post.new(post_params)

    if post.save
      redirect_to post
    else
      redirect_to posts_path, flash: { error: 'Oups, something went wrong :(' }
    end
  end

  private

  def posts
    return @posts if defined?(@posts)
    @posts = Post.all.decorate
  end

  def post
    return @post if defined?(@post)
    @post = Post.find(params[:id]).decorate
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
