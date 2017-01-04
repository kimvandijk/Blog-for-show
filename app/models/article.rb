class Article < ApplicationRecord
	self.per_page = 3

	has_many :comments, dependent: :destroy
	belongs_to :user, optional: true
	validates :title, presence: true,
                    length: { minimum: 3 }
end
