class AddForeignToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :forum_id, :integer
  end
end
