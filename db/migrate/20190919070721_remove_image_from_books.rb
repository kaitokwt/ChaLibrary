class RemoveImageFromBooks < ActiveRecord::Migration[5.2]
  def up
    remove_column :books, :image, :string
  end

  def down
    add_column :books, :image, :string
  end
end
