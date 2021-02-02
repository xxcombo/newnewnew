class PostsController < ApplicationController
  before_action :set_domitory
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    if @domitory.present?
      @posts = @domitory.posts.all
    else
      if params[:tag]
        @posts = Post.tagged_with(params[:tag])
      else
        @posts = Post.all
      end
    end
  end

  def show
    @posts = Post.new
  end

  def new
    @post = @domitory.present? ? @domitory.posts.new : Post.new
  end

  def edit
  end

  def create
    
    @post = @domitory.present? ? @domitory.posts.new(post_params) : Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to (@domitory.present? ? [@post.domitory, @post] : @post), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to (@domitory.present? ? [@post.domitory, @post] : @post), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to (@domitory.present? ? domitory_posts_url(@domitory) : posts_url), notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_domitory
    @domitory = Domitory.find(params[:domitory_id]) if params[:domitory_id].present?
  end

  def set_post
    if @domitory.present?
      @post = @domitory.posts.find(params[:id])
    else
      @post = Post.find(params[:id])
    end
  end

  def post_params
  params.require(:post).permit(:title, :content, :picture, :picture_cache)
  end
end 