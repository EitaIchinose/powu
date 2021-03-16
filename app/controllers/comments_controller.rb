class CommentsController < ApplicationController
  def create
    @department = Department.find(params[:department_id])
    @comment = @department.comments.new(comment_params)
    if @comment.save
      redirect_to department_events_path(@department)
    else
      @comments = @department.comments.includes(:user)
      redirect_to department_events_path(@department)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :image).merge(user_id: current_user.id, department_id: params[:department_id])
  end
end
