class CommentsController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@comment = @project.comments.new(comments_params)
		respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def comments_params
  	params.require(:comment).permit(:content)
  end
end
