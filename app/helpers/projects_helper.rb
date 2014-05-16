module ProjectsHelper
	def project_params
		params.require(:project).permit(:name, :description, :image, images_attributes: [:image])
	end

	def find_project
		@project = Project.find(params[:id])
	end
end
