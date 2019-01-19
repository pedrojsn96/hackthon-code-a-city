class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.float :score_min
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
