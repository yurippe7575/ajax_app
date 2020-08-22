class PostsController < ApplicationController

  def index # インデックスを定義した
    @posts = Post.all.order(id: "DESC")
  end


  def create
    Post.create(content: params[:content])
  end
end
