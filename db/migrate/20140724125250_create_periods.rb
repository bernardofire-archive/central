class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :number
      t.string :type

      t.timestamps
    end
  end
end
