require 'spec_helper'

describe Question do
  it { should belong_to :user }
  it { should validate_presence_of :header }
  it { should validate_presence_of :content }
  it { should validate_uniqueness_of :header }
  it { should have_many :answers }
end
