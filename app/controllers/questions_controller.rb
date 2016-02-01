class QuestionsController < ApplicationController
	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to thanks_path
		else
			redirect_to root_path
		end
	end


private

	def question_params
		params.require(:question).permit(:question_one, :question_two, :question_three, :question_four, :question_five)
	end
end