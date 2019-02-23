require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get article1" do
    get article1_path
    assert_response :success
  end

  test "should get article2" do
    get article2_path
    assert_response :success
  end

  test "should get article3" do
    get article3_path
    assert_response :success
  end

  test "should get article4" do
    get article4_path
    assert_response :success
  end

  test "should get ariticle5" do
    get article5_path
    assert_response :success
  end

end
