class BlogpostsController < ApplicationController
  def index
    @blogposts = Blogpost.all
  end

  def show
    @blogpost = Blogpost.find(params[:id])
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
  end

  def update
  end

  def delete
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:name, :description)   
  end
end
