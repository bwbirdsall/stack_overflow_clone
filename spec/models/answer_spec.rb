require 'spec_helper'

describe Answer do
  it { should belong_to :question }
  it { should belong_to :user }
  it { should validate_presence_of :content }

  describe '.reset_is_best' do
    it 'should reset all is_best values for a given question' do
      question = create(:question, :header => "I am a question", :content => "I am some content")
      answer1 = create(:answer, :question_id => question.id)
      answer2 = create(:answer, :question_id => question.id, :content => "Answer 2 content!")
      answer1.update(:is_best => true)
      Answer.reset_is_best(question.id)
      Answer.where(:is_best => true).should eq []
    end
  end
end
