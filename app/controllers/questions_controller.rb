class QuestionsController < ApplicationController
	def create
		@question = Question.new(question_params)
		if @question.save
			p 'SAVED'
		else
			p 'FAILED'
		end
		redirect_to root_path
	end


private

	def question_params
		params.require(:question).permit(:question_one, :question_two, :question_three, :question_four, :question_five)
	end
end