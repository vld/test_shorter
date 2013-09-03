require 'test_helper'

class TsurlsControllerTest < ActionController::TestCase
  setup do
    @tsurl = tsurls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tsurls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tsurl" do
    assert_difference('Tsurl.count') do
      post :create, tsurl: { full: @tsurl.full, log: @tsurl.log, short: @tsurl.short }
    end

    assert_redirected_to tsurl_path(assigns(:tsurl))
  end

  test "should show tsurl" do
    get :show, id: @tsurl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tsurl
    assert_response :success
  end

  test "should update tsurl" do
    put :update, id: @tsurl, tsurl: { full: @tsurl.full, log: @tsurl.log, short: @tsurl.short }
    assert_redirected_to tsurl_path(assigns(:tsurl))
  end

  test "should destroy tsurl" do
    assert_difference('Tsurl.count', -1) do
      delete :destroy, id: @tsurl
    end

    assert_redirected_to tsurls_path
  end
end
