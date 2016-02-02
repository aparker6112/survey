class SurveyController < ApplicationController
	def survey
		@question = Question.new
		@questions = Question.all
	end

	def thanks
	end

	def feedback
		redirect_to root_path if !logged_in?
		@feedback = Question.all
	end

	def feedback_destroy
		@questions = Question.all
		if !@questions.empty?
				@questions.delete_all
		end
			redirect_to secretfeedback_path
	end
	
end