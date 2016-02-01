class SurveyController < ApplicationController
	def survey
		@question = Question.new
		@questions = Question.all
	end

	def thanks
	end
end