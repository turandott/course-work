class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :summary
      t.text :body
      t.string :photo
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
