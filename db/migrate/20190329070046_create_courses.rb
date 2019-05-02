class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    create_join_table :courses, :categories
    create_join_table :courses, :locations
    
  end
end
