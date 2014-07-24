class AddCoursesToInstitution < ActiveRecord::Migration
  def up
    add_column :courses, :institution_id, :integer
  end

  def down
    remove_column :courses, :institution_id
  end
end
