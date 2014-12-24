class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :runner_id
      t.integer :destination_id
      t.datetime :delivery_date

      t.timestamps
    end
  end
end
