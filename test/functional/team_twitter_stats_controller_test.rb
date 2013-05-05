require 'test_helper'

class TeamTwitterStatsControllerTest < ActionController::TestCase
  setup do
    @team_twitter_stat = team_twitter_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_twitter_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_twitter_stat" do
    assert_difference('TeamTwitterStat.count') do
      post :create, team_twitter_stat: { followers: @team_twitter_stat.followers, following: @team_twitter_stat.following }
    end

    assert_redirected_to team_twitter_stat_path(assigns(:team_twitter_stat))
  end

  test "should show team_twitter_stat" do
    get :show, id: @team_twitter_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_twitter_stat
    assert_response :success
  end

  test "should update team_twitter_stat" do
    put :update, id: @team_twitter_stat, team_twitter_stat: { followers: @team_twitter_stat.followers, following: @team_twitter_stat.following }
    assert_redirected_to team_twitter_stat_path(assigns(:team_twitter_stat))
  end

  test "should destroy team_twitter_stat" do
    assert_difference('TeamTwitterStat.count', -1) do
      delete :destroy, id: @team_twitter_stat
    end

    assert_redirected_to team_twitter_stats_path
  end
end
