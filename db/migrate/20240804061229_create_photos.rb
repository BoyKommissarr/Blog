class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :desc
      t.text :location

      t.timestamps
    end
  end
end
