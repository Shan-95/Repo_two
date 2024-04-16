class PostsController < ApplicationController
  
  def create
    post = Post.new(post_params)
    if post.save
      render json: { data: post.as_json }
    else
      render json: { errors: post.errors }, status: 422
    end
  end

  private 

  def post_params
    params.require(:post_data).permit(:caption)
  end
end
