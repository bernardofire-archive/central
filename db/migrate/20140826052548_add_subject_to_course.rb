class AddSubjectToCourse < ActiveRecord::Migration
  def up
    add_column :subjects, :course_id, :integer
  end

  def down
    remove_column :subjects, :course_id
  end
end
