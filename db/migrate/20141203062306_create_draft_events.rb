class CreateDraftEvents < ActiveRecord::Migration
  def change
    create_table :draft_events do |t|
      t.integer :destination_id
      t.datetime :due_date
      t.integer :event_id

      t.timestamps
    end
  end
end
