class AddEmailToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :email, :string
  end
end
