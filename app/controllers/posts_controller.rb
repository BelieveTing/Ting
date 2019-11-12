class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  after_action :save_my_previous_url, only: [:new, :show]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @posts_not_mine = Post.where.not(owner_id: current_user.id)
    # @profile_check = current_user.posts
    #이걸로 하면, nil 인데도 index에서 nil로 인식을 안함. 왜?
    @profile_check = Post.find_by(owner_id: current_user.id)
    # @my_friend_request = Post.users_ids.where(id: current_user.id)
    # @my_friends = Post.where(post_id: Friend.where(post_id: current_user.id).select(:user_id), user_id: current_user.id)
    @my_friends = Post.where(owner_id: Friend.where(user_id: Post.where(owner_id: current_user.post_ids).pluck(:owner_id), post_id: current_user.id).pluck(:user_id))
    @my_requests = Post.where(owner_id: current_user.post_ids).where.not(id: @my_friends.pluck(:id))
    @friend_requests = Post.where(owner_id: Friend.where(post_id: current_user.id).pluck(:user_id)).where.not(id: @my_friends.pluck(:id))
    
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @back_url = session[:my_previous_url]
  end

  # GET /posts/new
  def new
    @post = Post.new
    @back_url = session[:my_previous_url]
  end
  
  def save_my_previous_url
    # session[:previous_url] is a Rails built-in variable to save last url.
    session[:my_previous_url] = URI(request.referer || '').path
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.owner_id = params[:id]
    # @post.save
    # redirect_to '/'
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: '프로필이 성공적으로 등록됐습니다.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: '프로필이 성공적으로 수정됐습니다.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find_by(owner_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:name, :profile_picture, :dateofbirth, :owner_email, :sex)
    end
end
