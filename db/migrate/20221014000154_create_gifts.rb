class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string :url
      t.string :title
      t.string :gift_picture
      t.float :price, default: 0
      t.float :ranking, default: 0
      t.string :description
      t.string :status, default: "disponible"
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
