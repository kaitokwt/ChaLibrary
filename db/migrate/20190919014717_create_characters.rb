class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string    :name,    null: false, index: true
      t.integer   :age,     null: false
      t.string    :sex,     null: false
      t.string    :species, null: false
      t.string    :belong,  null: false
      t.text      :text,    null: false
      t.string    :image
      t.references :user,    null: false, foreign_key: true
      t.references :book,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
