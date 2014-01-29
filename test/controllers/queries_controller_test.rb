require "test_helper"

class QueriesControllerTest < ActionController::TestCase

  before do
    @query = queries(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:queries)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Query.count') do
      post :create, query: {  }
    end

    assert_redirected_to query_path(assigns(:query))
  end

  def test_show
    get :show, id: @query
    assert_response :success
  end

  def test_edit
    get :edit, id: @query
    assert_response :success
  end

  def test_update
    put :update, id: @query, query: {  }
    assert_redirected_to query_path(assigns(:query))
  end

  def test_destroy
    assert_difference('Query.count', -1) do
      delete :destroy, id: @query
    end

    assert_redirected_to queries_path
  end
end
