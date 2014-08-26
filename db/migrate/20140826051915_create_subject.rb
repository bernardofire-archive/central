class CreateSubject < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :name
    end
  end
end
