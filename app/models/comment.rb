class Comment < ActiveRecord::Base
  self.per_page = 10
  attr_accessible :body, :post
  belongs_to :post
  has_many :replies, dependent: :destroy
end
