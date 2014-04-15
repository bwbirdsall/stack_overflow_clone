class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  validates :content, :presence => true

  def self.reset_is_best(question_id)
    self.where(:question_id == question_id).each do |answer|
      answer.update(:is_best => false)
    end
  end
end
