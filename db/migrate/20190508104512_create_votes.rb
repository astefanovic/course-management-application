class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.boolean :is_positive

      t.integer :coordinator_id
      t.integer :course_id

      t.timestamps
    end
  end
end
