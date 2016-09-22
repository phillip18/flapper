class Post < ApplicationRecord
	has_many :comments

	def as_jason(option = {})
		super(option.merge(include: :comments))
	end
end
