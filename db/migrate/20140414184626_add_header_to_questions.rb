class AddHeaderToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :header, :string
  end
end
