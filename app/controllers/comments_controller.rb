class CommentsController < ApplicationController
  def create
    @department = Department.find(params[:department_id])
    @comment = @department.comments.build(comment_params)
    if @comment.save
       render :index
    else
      render :error
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :image).merge(user_id: current_user.id, department_id: params[:department_id])
  end
end
