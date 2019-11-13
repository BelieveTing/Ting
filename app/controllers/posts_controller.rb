class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @back_url = session[:my_previous_url]
  end
  
  def loundge
    @back_url = session[:my_previous_url]
    @posts_not_mine = Post.where.not(owner_id: current_user.id)
    # @loundge_owner = User.find(@post.owner_id).post_ids.pluck(:owner_id)
    @friendship = Friend.where(user_id: Post.where(owner_id: User.find(@post.owner_id).post_ids).pluck(:owner_id), post_id: @post.owner_id)
    @his_or_her_friends = Post.where(owner_id: @friendship.pluck(:user_id))
    @recommended_solos_not_my_sex = @his_or_her_friends.where.not(sex: Post.find_by(owner_id: current_user).sex)
  end

  def new
  end

  def create
    @post = Post.create(post_params)
    @post.owner_id = params[:id]
    @post.save
    redirect_to "/posts/#{@post.owner_id}/show"
  end

  def edit
    # @post = Post.find(params[:id])
  end

  def update
    # @post = Post.find(params[:id])
    @post.update(post_params)
      
    redirect_to "/posts/#{@post.owner_id}/show"
  end

  def destroy
    # @post = Post.find(params[:id])
    @post.destroy
    
    redirect_back(fallback_location: root_path)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find_by(owner_id: params[:id])
      #post의 params[:id]는 current_user.id이며, owner_id로 넘어옵니다.
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # 여기서 허용된 params들만 갖고올 수 있도록. 
    def post_params
      params.permit(:name, :dateofbirth, :content, :sex, :home, :job, :workplace, :height)
    end
    
    def save_my_previous_url
    # session[:previous_url] is a Rails built-in variable to save last url.
    session[:my_previous_url] = URI(request.referer || '').path
    end
end
