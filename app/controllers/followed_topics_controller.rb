class FollowedTopicsController < ApplicationController
  before_action :set_followed_topic, only: %i[ show edit update destroy ]

  # GET /followed_topics or /followed_topics.json
  def index
    @followed_topics = FollowedTopic.all
  end

  # GET /followed_topics/1 or /followed_topics/1.json
  def show
  end

  # GET /followed_topics/new
  def new
    @followed_topic = FollowedTopic.new
  end

  # GET /followed_topics/1/edit
  def edit
  end

  # POST /followed_topics or /followed_topics.json
  def create
    @followed_topic = FollowedTopic.new(followed_topic_params)

    respond_to do |format|
      if @followed_topic.save
        format.html { redirect_to followed_topic_url(@followed_topic), notice: "Followed topic was successfully created." }
        format.json { render :show, status: :created, location: @followed_topic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @followed_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /followed_topics/1 or /followed_topics/1.json
  def update
    respond_to do |format|
      if @followed_topic.update(followed_topic_params)
        format.html { redirect_to followed_topic_url(@followed_topic), notice: "Followed topic was successfully updated." }
        format.json { render :show, status: :ok, location: @followed_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @followed_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followed_topics/1 or /followed_topics/1.json
  def destroy
    @followed_topic.destroy

    respond_to do |format|
      format.html { redirect_to followed_topics_url, notice: "Followed topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_followed_topic
      @followed_topic = FollowedTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def followed_topic_params
      params.require(:followed_topic).permit(:follower_id, :topic_id)
    end
end
