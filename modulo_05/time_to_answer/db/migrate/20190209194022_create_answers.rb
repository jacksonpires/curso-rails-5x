class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :description, null: false
      t.references :question, foreign_key: true
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
