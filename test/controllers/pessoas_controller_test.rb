require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post :create, pessoa: { cel: @pessoa.cel, cnpj: @pessoa.cnpj, cpf: @pessoa.cpf, email: @pessoa.email, nome: @pessoa.nome, proprietario: @pessoa.proprietario, tipo: @pessoa.tipo }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should show pessoa" do
    get :show, id: @pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa
    assert_response :success
  end

  test "should update pessoa" do
    patch :update, id: @pessoa, pessoa: { cel: @pessoa.cel, cnpj: @pessoa.cnpj, cpf: @pessoa.cpf, email: @pessoa.email, nome: @pessoa.nome, proprietario: @pessoa.proprietario, tipo: @pessoa.tipo }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
