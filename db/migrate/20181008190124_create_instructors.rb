class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :instructor_id
      t.string :type

      t.timestamps
    end
  end
end
