require 'json'
class ArticlesController < ApplicationController
  

  def article1
    @ranking = Ranking.find(1)
    if (@ranking.read) 
      @button = I18n.t 'articles.read'
    else
      @button = I18n.t 'articles.not_read'
    end

    file = File.read('app/assets/javascripts/article-1.json')
    #@test = Ranking.where(id:1).first
    @article = JSON.parse(file)
    @url = @article["body"][2]["model"]["url"]
    @altText = @article["body"][2]["model"]["altText"]
    if @url.to_s.empty?
      @url = "/assets/EarthLogo.png"
    end

    if @altText.to_s.empty?
      @altText = "Image Not Found"
    end


  end

  def article2
     @ranking = Ranking.find(2)
    if (@ranking.read) 
      @button = I18n.t 'articles.read'
    else
      @button = I18n.t 'articles.not_read'
    end

    file = File.read('app/assets/javascripts/article-2.json')
    @article = JSON.parse(file)
    
    @url1 = @article["body"][1]["model"]["url"]
    @altText1 = @article["body"][1]["model"]["altText"]
    
    @url2 = @article["body"][4]["model"]["url"]
    @altText2 = @article["body"][4]["model"]["altText"]

    @url3 = @article["body"][6]["model"]["url"]
    @altText3 = @article["body"][6]["model"]["altText"]

    if @url.to_s.empty?
      @url = "/assets/EarthLogo.png"
    end

    if @altText.to_s.empty?
      @altText = "Image Not Found"
    end
  end

  def article3
     @ranking = Ranking.find(3)
    if (@ranking.read) 
      @button = I18n.t 'articles.read'
    else
      @button = I18n.t 'articles.not_read'
    end
    file = File.read('app/assets/javascripts/article-3.json')
    @article = JSON.parse(file)
  end

  def article4
    @ranking = Ranking.find(4)
    if (@ranking.read) 
      @button = I18n.t 'articles.read'
    else
      @button = I18n.t 'articles.not_read'
    end
    file = File.read('app/assets/javascripts/article-4.json')
    @article = JSON.parse(file)
  end

  def article5
    @ranking = Ranking.find(5)
    if (@ranking.read) 
      @button = I18n.t 'articles.read'
    else
      @button = I18n.t 'articles.not_read'
    end
    file = File.read('app/assets/javascripts/article-5.json')
    @article = JSON.parse(file)

     @url1 = @article["body"][1]["model"]["url"]
    @altText1 = @article["body"][1]["model"]["altText"]
    
    @url2 = @article["body"][2]["model"]["url"]
    @altText2 = @article["body"][2]["model"]["altText"]


    if @url.to_s.empty?
      @url = "/assets/EarthLogo.png"
    end

    if @altText.to_s.empty?
      @altText = "Image Not Found"
    end

  end
  



end
