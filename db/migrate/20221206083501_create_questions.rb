class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
