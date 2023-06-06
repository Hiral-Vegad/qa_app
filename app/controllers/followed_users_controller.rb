class FollowedUsersController < ApplicationController
  before_action :set_followed_user, only: %i[ show edit update destroy ]

  # GET /followed_users or /followed_users.json
  def index
    @followed_users = FollowedUser.all
  end

  # GET /followed_users/1 or /followed_users/1.json
  def show
  end

  # GET /followed_users/new
  def new
    @followed_user = FollowedUser.new
  end

  # GET /followed_users/1/edit
  def edit
  end

  # POST /followed_users or /followed_users.json
  def create
    @followed_user = FollowedUser.new(followed_user_params)

    respond_to do |format|
      if @followed_user.save
        format.html { redirect_to followed_user_url(@followed_user), notice: "Followed user was successfully created." }
        format.json { render :show, status: :created, location: @followed_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @followed_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /followed_users/1 or /followed_users/1.json
  def update
    respond_to do |format|
      if @followed_user.update(followed_user_params)
        format.html { redirect_to followed_user_url(@followed_user), notice: "Followed user was successfully updated." }
        format.json { render :show, status: :ok, location: @followed_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @followed_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followed_users/1 or /followed_users/1.json
  def destroy
    @followed_user.destroy

    respond_to do |format|
      format.html { redirect_to followed_users_url, notice: "Followed user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_followed_user
      @followed_user = FollowedUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def followed_user_params
      params.require(:followed_user).permit(:follower_id, :followee_id)
    end
end
