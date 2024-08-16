class AddArticleIdToPhotos < ActiveRecord::Migration[7.2]
  def change
    add_column :photos, :article_id, :integer, null: false
  end
end
