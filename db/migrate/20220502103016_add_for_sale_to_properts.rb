class AddForSaleToProperts < ActiveRecord::Migration[6.0]
  def change
    add_column :properts, :for_sale, :boolean, default: false
  end
end
