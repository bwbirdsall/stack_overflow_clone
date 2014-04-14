class Question < ActiveRecord::Base
  belongs_to :user
  validates :header, :presence => true, :uniqueness => true
  validates :content, :presence => true
  has_many :answers
end
