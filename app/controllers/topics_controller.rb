class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]


  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create topic_params
    respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Topic was successfully added!' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    @topic.update_attributes topic_params
    redirect_to topic_path(@topic)
  end

  def destroy
    @topic.delete
    redirect_to topics_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def topic_params
      params.require(:topic).permit(:name, :decription)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end
end
