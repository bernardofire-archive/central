class AddClassroomToPeriod < ActiveRecord::Migration
  def up
    add_column :classrooms, :period_id, :integer
  end

  def down
    remove_column :classrooms, :period_id
  end
end
