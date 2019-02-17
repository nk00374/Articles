require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get article1" do
    get articles_article1_url
    assert_response :success
  end

  test "should get article2" do
    get articles_article2_url
    assert_response :success
  end

  test "should get article3" do
    get articles_article3_url
    assert_response :success
  end

  test "should get article4" do
    get articles_article4_url
    assert_response :success
  end

  test "should get ariticle5" do
    get articles_ariticle5_url
    assert_response :success
  end

end
