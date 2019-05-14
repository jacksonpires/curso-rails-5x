class AddQuestionsCountToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :questions_count, :integer
  end
end
