class APostsController < ApplicationController
  before_action :set_a_post, only: [:show, :edit, :update, :destroy]

  # GET /a_posts
  # GET /a_posts.json
  def index
    @a_posts = APost.all
  end

  # GET /a_posts/1
  # GET /a_posts/1.json
  def show
  end

  # GET /a_posts/new
  def new
    @a_post = APost.new
  end

  # GET /a_posts/1/edit
  def edit
  end

  # POST /a_posts
  # POST /a_posts.json
  def create
    @a_post = APost.new(a_post_params)

    respond_to do |format|
      if @a_post.save
        format.html { redirect_to @a_post, notice: 'A post was successfully created.' }
        format.json { render :show, status: :created, location: @a_post }
      else
        format.html { render :new }
        format.json { render json: @a_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_posts/1
  # PATCH/PUT /a_posts/1.json
  def update
    respond_to do |format|
      if @a_post.update(a_post_params)
        format.html { redirect_to @a_post, notice: 'A post was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_post }
      else
        format.html { render :edit }
        format.json { render json: @a_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_posts/1
  # DELETE /a_posts/1.json
  def destroy
    @a_post.destroy
    respond_to do |format|
      format.html { redirect_to a_posts_url, notice: 'A post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_post
      @a_post = APost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_post_params
      params.require(:a_post).permit(:title, :description)
    end
end
