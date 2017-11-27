class HashtagsController < ApplicationController
	before_action :set_hashtag, only: [:show, :edit, :update, :destroy]
  

  # GET /hashtags
  # GET /hashtags.json
  def index
    @hashtags = Hashtag.all
  end

  # GET /hashtags/1
  # GET /hashtags/1.json
  def show
  end

  # GET /hashtags/new
  def new
    @hashtag = Hashtag.new
  end

  # GET /hashtags/1/edit
  def edit
  end

  # POST /hashtags
  # POST /hashtags.json
  def create
    @hashtag = Hashtag.new(hashtag_params)
    @user = User.find_by_id @hashtag.user_id
    @hashtags = @user.hashtags.all

    respond_to do |format|
      if @hashtag.save
        format.html { redirect_to user_path(@hashtag.user_id), notice: 'hashtag was successfully created.' }
        format.json { render :show, status: :created, location: @hashtag }
      else
        format.html { render :template => "users/show" }
        format.json { render json: @hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hashtags/1
  # PATCH/PUT /hashtags/1.json
  def update
    respond_to do |format|
      if @hashtag.update(hashtag_params)
        format.html { redirect_to @hashtag, notice: 'hashtag was successfully updated.' }
        format.json { render :show, status: :ok, location: @hashtag }
      else
        format.html { render :edit }
        format.json { render json: @hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hashtags/1
  # DELETE /hashtags/1.json
  def destroy
    @hashtag.destroy
    respond_to do |format|
      format.html { redirect_to hashtags_url, notice: 'hashtag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private

  	# Use callbacks to share common setup or constraints between actions.
    def set_comment
      @hashtag = hashtag.find(params[:id])
    end
    def hashtag_params
      params.require(:hashtag).permit(:content, :pic_id, :hashtag_id, :user_id)
    end
end

