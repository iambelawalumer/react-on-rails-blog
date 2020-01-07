class WelcomeController < ApplicationController

  #layout false, :only => :index

  def index
    @posts = Post.search(params[:search]).order(id: :desc).paginate(page: params[:page],per_page: 5)
    render ('index')
  end

  def category
    render ('pages/category')
  end
end
