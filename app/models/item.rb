class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, length: { minimum: 2 }, presence: true

	def days_left
		@days = 6- (DateTime.now.to_date - created_at.to_date).to_i
	end

end