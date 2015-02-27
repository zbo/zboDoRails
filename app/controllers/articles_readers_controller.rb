class ArticlesReadersController < ApplicationController
  def edit
    @errors=params[:error_msg]
    if @errors==nil
      @errors=[]
    end
    @reader_id=params[:id]
    @reader=Reader.find(@reader_id)
    @reader_name=@reader.name
    @article_reader=ArticlesReaders.where(reader_id:@reader_id);
    @articles=@reader.articles
    @article_available=Article.all;
    @submit=ArticlesReaders.new
  end

  def api_connect
    @article_id=params[:article_id]
    @reader_id=params[:articles_readers][:reader_id]
    @existing=ArticlesReaders.where(reader_id: @reader_id, article_id: @article_id)
    @errors=[]
    if @existing.size==0
      @article=Article.find_by_id(@article_id)
      @article.readers.append(Reader.find_by_id(@reader_id))
      puts @article.readers
    else
      @errors.append('article by reader already exists')
    end
    redirect_to ({action: 'edit', id: @reader_id, error_msg: @errors})
  end


  def my_api
    redirect_to ({action: 'index'})
  end

end
