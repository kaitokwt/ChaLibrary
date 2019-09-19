class RemoveImageFromCharacters < ActiveRecord::Migration[5.2]
  def up
    remove_column :characters, :image, :string
  end

  def down
    add_column :characters, :image, :string
  end
end
