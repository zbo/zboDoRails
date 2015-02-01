class ReaderArticleController < ApplicationController
  def edit
    @reader_id=params[:id]
    @reader_name=Reader.find(@reader_id).name
    @reader_article=ReaderArticle.find_by_reader_id(@reader_id);
  end
  def index

  end
end
