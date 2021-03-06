class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  # GET /pics
  # GET /pics.json
  def index
    @pics = Pic.all
    @users = User.all
  end

  # GET /pics/1
  # GET /pics/1.json
  def show
    @comments = @pic.comments.order(like_count: :desc).all
    @comment = @pic.comments.build
  end

  def hashtag
<<<<<<< HEAD
    if params[:tag]
      @pics =Pic.tagged_with(params[:tag])
    else
      @pics = Pic.all
    end
=======
    @pics = Pic.tagged_with(:tag)
>>>>>>> 2a7907e4534f75a031a124aaa23e209984bdd525
  end

  # GET /pics/new
  def new
    @pic = Pic.new
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  # POST /pics.json
  def create
    @pic = Pic.new(pic_params)
    @album = Album.find_by_id @pic.album_id
    #@pics = @user.pics.all

    respond_to do |format|
      if @pic.save
        format.html { redirect_to @pic, notice: 'Pic was successfully created.' }
        format.json { render :show, status: :created, location: @pic }
      else
        format.html { render :new }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pics/1
  # PATCH/PUT /pics/1.json
  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to @pic, notice: 'Pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @pic }
      else
        format.html { render :edit }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pics/1
  # DELETE /pics/1.json
  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pics_url, notice: 'Pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params.require(:pic).permit(:name, :description, :picture, :user_id, :tag_list)
    end
end
