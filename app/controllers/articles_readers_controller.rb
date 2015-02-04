class ArticlesReadersController < ApplicationController
  def edit
    @reader_id=params[:id]
    @reader=Reader.find(@reader_id)
    @reader_name=@reader.name
    @article_reader=ArticlesReaders.where(reader_id:@reader_id);
    puts '====================='
    puts '=====edit============'
    puts '====================='
    @articles=@reader.articles
    @article_available=Article.all;
    @submit=ArticlesReaders.new
  end

  def api_connect
    puts '====================='
    puts '=====connect========='
    puts '====================='
  end

  def index
    puts '====================='
    puts '=====index==========='
    puts '====================='
  end

  def my_api
    puts '====================='
    puts '=====myapi==========='
    puts '====================='
    redirect_to ({action: 'index'})
  end

  def create
    @article_id=params[:article_id]
    @reader_id=params[:article_reader][:reader_id]
    puts '====================='
    puts '=====create=========='
    puts '====================='
    redirect_to ({action: 'edit', id: @reader_id})
  end
end
