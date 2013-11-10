require 'test_helper'

class TreeViewsControllerTest < ActionController::TestCase
  setup do
    @tree_view = tree_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tree_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tree_view" do
    assert_difference('TreeView.count') do
      post :create, tree_view: { name: @tree_view.name }
    end

    assert_redirected_to tree_view_path(assigns(:tree_view))
  end

  test "should show tree_view" do
    get :show, id: @tree_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tree_view
    assert_response :success
  end

  test "should update tree_view" do
    put :update, id: @tree_view, tree_view: { name: @tree_view.name }
    assert_redirected_to tree_view_path(assigns(:tree_view))
  end

  test "should destroy tree_view" do
    assert_difference('TreeView.count', -1) do
      delete :destroy, id: @tree_view
    end

    assert_redirected_to tree_views_path
  end
end
