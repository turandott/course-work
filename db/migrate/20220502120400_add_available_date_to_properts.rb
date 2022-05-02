class AddAvailableDateToProperts < ActiveRecord::Migration[6.0]
  def change
    add_column :properts, :available_date, :datetime
  end
end
