require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase


  setup do
    login_admin
    @category = create(:category, catName: 'UI')
    @request.session[:last_seen] = Time.now
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
 #TODO Resolve the create error for the categories controller test
  #test "should create category" do
    #login_admin
    #assert_difference('Category.count') do
      #post :create, category: { catName: @category.catName }
    #end

    #assert_redirected_to category_path(assigns(:category))
 # end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    put :update, id: @category, category: { catName: @category.catName }
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to categories_path
  end
end
