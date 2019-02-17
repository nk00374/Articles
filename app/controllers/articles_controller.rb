require 'json'
class ArticlesController < ApplicationController
  
  
  def article1
    file = File.read('app/assets/javascripts/article-1.json')
    @article = JSON.parse(file)
  
    @altText = @article["body"][2]["model"]["altText"]
    if @url.to_s.empty?
      @url = "/assets/EarthLogo.png"
    end

    if @altText.to_s.empty?
      @altText = "Image Not Found"
    end

  end

  def article2
    file1 = File.read('app/assets/javascripts/article-2.json')
    @article = JSON.parse(file1)
  end

  def article3
    file2 = File.read('app/assets/javascripts/article-3.json')
    @article = JSON.parse(file2)
  end

  def article4
    file3 = File.read('app/assets/javascripts/article-4.json')
    @article = JSON.parse(file3)
  end

  def article5
    file4 = File.read('app/assets/javascripts/article-5.json')
    @article = JSON.parse(file4)
  end
end
