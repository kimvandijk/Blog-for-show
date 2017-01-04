class Comment < ApplicationRecord
  self.per_page = 3
  
  belongs_to :article
  belongs_to :user

  validates :body, presence: true
  validates :user, presence: true
  validates :article, presence: true
end
