class AddPeriodsToCourses < ActiveRecord::Migration
  def up
    add_column :periods, :course_id, :integer
  end

  def down
    remove_column :periods, :course_id
  end
end
