class ThoughtsController < ApplicationController

  respond_to :json, :html

  def index
    user = User.friendly.find(params[:user_id])
    respond_with user.thoughts.all
  end

  def show
    respond_with Thought.find(params[:id])
  end

  def new
    respond_with nil
  end

  def create
    authorize! :create, Thought
    thought = current_user.thoughts.create(thought_params)
    respond_with thought, location: root_path
  end

  def edit
  end

  def update
    thought = Thought.find(params[:id])
    authorize! :update, thought
    thought.update_attributes(thought_params)
    respond_with thought, location: root_path
  end

  def destroy
    thought = Thought.find(params[:id])
    authorize! :destroy, thought
    thought.delete
    respond_with nil, location: root_path
  end

private

  def thought_params
    params.require(:thought).permit(:description)
  end

end