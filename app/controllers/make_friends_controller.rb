class MakeFriendsController < ApplicationController
  before_action :authenticate_user!
  
  def new
  end

  def create
    @post = Post.new
     
     @post.sex =params[:sex]
     @post.age =params[:age]
     @post.status =params[:status]
     @post.home =params[:home]
     @post.job =params[:job]
     @post.workplace =params[:workplace]
     @post.height =params[:height]
     @post.selfintroduction =params[:selfintroduction]
     @post.religion =params[:religion]
     @post.smoking =params[:smoking]
     @post.drink =params[:drink]
     @post.mind =params[:mind]
     @post.phone =params[:phone]
     
     @post.save
     
     redirect_to "/make_friends/#{@post.id}/profile"
  end

  def profile
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
