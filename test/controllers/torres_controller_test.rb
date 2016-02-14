require 'test_helper'

class TorresControllerTest < ActionController::TestCase
  setup do
    @torre = torres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:torres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create torre" do
    assert_difference('Torre.count') do
      post :create, torre: { descricao: @torre.descricao, sigla: @torre.sigla }
    end

    assert_redirected_to torre_path(assigns(:torre))
  end

  test "should show torre" do
    get :show, id: @torre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @torre
    assert_response :success
  end

  test "should update torre" do
    patch :update, id: @torre, torre: { descricao: @torre.descricao, sigla: @torre.sigla }
    assert_redirected_to torre_path(assigns(:torre))
  end

  test "should destroy torre" do
    assert_difference('Torre.count', -1) do
      delete :destroy, id: @torre
    end

    assert_redirected_to torres_path
  end
end
