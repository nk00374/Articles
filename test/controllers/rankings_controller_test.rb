require 'test_helper'

class RankingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranking = rankings(:one)
  end



  test "should update ranking" do
    patch ranking_url(@ranking), params: { 
    ranking: { 
      name: @ranking.name,
      rank: @ranking.rank,
      read: @ranking.read }
    }
    assert_redirected_to stats_path
  end

end
