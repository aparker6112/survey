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
end