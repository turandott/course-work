class AddDetailsToProperts < ActiveRecord::Migration[6.0]
  def change
    add_column :properts, :details, :text
  end
end
