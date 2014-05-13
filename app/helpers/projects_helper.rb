module ProjectsHelper
	def project_params
		params.require(:project).permit(:name, :description)
	end
end
