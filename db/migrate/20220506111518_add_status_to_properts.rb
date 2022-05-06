class AddStatusToProperts < ActiveRecord::Migration[6.0]
  def change
    add_column :properts, :status, :string, default: "available"
  end
end
