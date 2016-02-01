class SurveyController < ApplicationController
	def survey
		@question = Question.new
	end
end