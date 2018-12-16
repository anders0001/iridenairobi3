class BlogpostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @blogposts = Blogpost.all
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def crud
    @blogposts = Blogpost.all
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    @blogpost = Blogpost.new(blogpost_params)
    @blogpost.save

    redirect_to blogposts_path
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  def update
    @blogpost = Blogpost.find(params[:id])
    @blogpost.update(blogpost_params)

    redirect_to blogposts_path
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy

    redirect_to blogposts_path
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:name, :description, :photo)
  end
end
