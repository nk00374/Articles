require 'json'
class ArticlesController < ApplicationController
  
  
  def article1
    file = File.read('app/assets/javascripts/article-1.json')
    @article1 = JSON.parse(file)

  end

  def article2
    file1 = File.read('app/assets/javascripts/article-2.json')
    @article2 = JSON.parse(file1)
  end

  def article3
    file2 = File.read('app/assets/javascripts/article-3.json')
    @article3 = JSON.parse(file2)
  end

  def article4
    file3 = File.read('app/assets/javascripts/article-4.json')
    @article4 = JSON.parse(file3)
  end

  def ariticle5
    file4 = File.read('app/assets/javascripts/article-5.json')
    @article5 = JSON.parse(file4)
  end
end
