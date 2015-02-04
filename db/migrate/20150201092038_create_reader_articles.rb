class CreateReaderArticles < ActiveRecord::Migration
  def change
    create_table :articles_readers do |t|
      t.integer :article_id,:null => false
      t.integer :reader_id,:null => false
      t.timestamps null: false
    end
    add_index :articles_readers, [:article_id, :reader_id], :unique => true
  end
end
