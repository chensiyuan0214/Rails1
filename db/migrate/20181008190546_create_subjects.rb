class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :subject_id
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end