class AddImageToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :image, :string
  end
end
