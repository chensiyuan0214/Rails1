class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :term
      t.string :type
      t.string :code
      t.boolean :independent_study

      t.timestamps
    end
  end
end
