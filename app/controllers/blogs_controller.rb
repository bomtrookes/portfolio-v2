class BlogsController < ApplicationController
  include ActionView::Helpers::SanitizeHelper
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :sanitize_html_input, only: [:create, :update]
  def index
    @blogs = Blog.all
  end

  def show
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, status: :see_other
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def sanitize_html_input
    params[:blog][:content] = sanitize(params[:blog][:content], attributes: %w(style src id class))
  end
end
