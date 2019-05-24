class AddPrerequisitesToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :prerequisites, :string
  end
end
