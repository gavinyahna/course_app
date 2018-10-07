class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :type
      t.string :term
      t.string :name
      t.string :abbreviation
      t.integer :segment_id

      t.timestamps
    end
  end
end
