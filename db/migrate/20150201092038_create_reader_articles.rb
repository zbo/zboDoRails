class CreateReaderArticles < ActiveRecord::Migration
  def change
    create_table :reader_articles do |t|
      t.integer :article_id,:null => false
      t.integer :reader_id,:null => false
      t.timestamps null: false
    end
    add_index :reader_articles, [:article_id, :reader_id], :unique => true
  end
end
