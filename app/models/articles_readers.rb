class ArticlesReaders < ActiveRecord::Base
  validates_uniqueness_of :reader_id, :scope => :article_id
end
