class Question < ActiveRecord::Base
	def self.to_csv
		attributes = %w{name question_one question_two question_three question_four question_six question_seven}

		CSV.generate(headers: true) do |csv|
			csv << attributes

			all.each do |user|
				csv << attributes.map{ |attr| user.send(attr) }
			end
		end
	end
end
