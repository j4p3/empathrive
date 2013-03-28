class ExperiencesController < ApplicationController
	before_filter :signed_in_user

	def create
		@experience = current_user.experiences.build(params[:experience])
		if @experience.save
			flash[:success] = "Post successful!"
			redirect_to current_user_path
		end
	end

	def show
		@experience = current_user.experiences.find_by_id(params[:experience])
	end

	def destroy
		@micropost.destroy
		redirect_to current_user_path
	end
end
