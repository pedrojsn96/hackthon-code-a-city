class CreateLessonSections < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_sections do |t|
      t.string :name
      t.text :content
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
