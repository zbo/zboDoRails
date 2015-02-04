class ArticlesReadersController < ApplicationController
  def edit
    @reader_id=params[:id]
    @reader=Reader.find(@reader_id)
    @reader_name=@reader.name
    @article_reader=ArticlesReaders.where(reader_id:@reader_id);
    puts '====================='
    puts @article_reader
    puts '====================='
    @articles=@reader.articles
    puts '====================='
    puts @articles
    puts '====================='
    #@article=Article.find(2)
    #@readers=@article.readers
    puts '-----------------------'
    puts @readers
    puts '-----------------------'
    @article_available=Article.all;
    @submit=ArticlesReaders.new
  end
  def index
  end

  def create
    @article_id=params[:article_id]
    @reader_id=params[:article_reader][:reader_id]
    # puts '====================='
    # puts params[:article_id]
    # puts '====================='
    # puts @read_article= ReaderArticle.find_by(article_id:@article_id,reader_id:@reader_id)
    # #puts @read_article.size()
    # puts '====================='
    redirect_to ({action: 'edit', id: @reader_id})
  end
end
