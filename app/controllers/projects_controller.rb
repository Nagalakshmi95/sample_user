class ProjectsController < ApplicationController
	def index
		@projects=Project.all
	end 
	def show
		@project= Project.find(params[:id])
  end

  # GET /purchases/new
  def new
    @project = Project.new
  end

  # GET /purchases/1/edit
  
  # POST /purchases
  # POST /purchases.json
  def create
    @project = Project.new(project_params)
      if @project.save
       redirect_to projects_path, :notice=> 'project was successfully created.' 
     
      else
        render "new"
      end
    end

    private 
    def project_params
      params.require(:project).permit(:title, :description)
    end
end
 
