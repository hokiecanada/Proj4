class CommentsController < ApplicationController

  before_filter(:get_entry)
  
  def get_entry
	@entry = Entry.find(params[:entry_id])
  end

  
  # POST /experiments
  # POST /experiments.xml
  def create
    authenticate_user!
    @comment = @entry.comments.create(params[:comment])
	@comment.user_id = current_user
	@comment.save
	redirect_to entry_path(@entry)
  end

  
  # DELETE /experiments/1
  # DELETE /experiments/1.xml
  def destroy
    @comment = @entry.comments.find(params[:id])
    @comment.destroy
	redirect_to entry_path(@entry)
  end
  
end