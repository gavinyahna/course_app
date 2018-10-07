class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :type
      t.string :term
      t.string :code
      t.integer :subject_id
      t.string :description
      t.float :credits
      t.boolean :independent_study

      t.timestamps
    end
  end
end
