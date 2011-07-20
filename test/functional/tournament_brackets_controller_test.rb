require 'test_helper'

class TournamentBracketsControllerTest < ActionController::TestCase
  setup do
    @tournament_bracket = tournament_brackets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tournament_brackets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tournament_bracket" do
    assert_difference('TournamentBracket.count') do
      post :create, :tournament_bracket => @tournament_bracket.attributes
    end

    assert_redirected_to tournament_bracket_path(assigns(:tournament_bracket))
  end

  test "should show tournament_bracket" do
    get :show, :id => @tournament_bracket.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tournament_bracket.to_param
    assert_response :success
  end

  test "should update tournament_bracket" do
    put :update, :id => @tournament_bracket.to_param, :tournament_bracket => @tournament_bracket.attributes
    assert_redirected_to tournament_bracket_path(assigns(:tournament_bracket))
  end

  test "should destroy tournament_bracket" do
    assert_difference('TournamentBracket.count', -1) do
      delete :destroy, :id => @tournament_bracket.to_param
    end

    assert_redirected_to tournament_brackets_path
  end
end
