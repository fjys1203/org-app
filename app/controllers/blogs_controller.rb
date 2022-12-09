class BlogsController < ApplicationController
  before_action :move_to_index

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.create(blog_parameter)
    @blog.save
    redirect_to root_path
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to root_path, notice:"削除しました"
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time, :user_id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end