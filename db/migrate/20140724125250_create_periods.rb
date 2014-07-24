class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :number
      t.string :kind

      t.timestamps
    end
  end
end
