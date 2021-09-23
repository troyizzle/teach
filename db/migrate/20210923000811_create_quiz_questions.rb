class CreateQuizQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_questions do |t|
      t.belongs_to :form, null: false, foreign_key: true
      t.string :name
      t.integer :input_type
      t.boolean :required

      t.timestamps
    end
  end
end
