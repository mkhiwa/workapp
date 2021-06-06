require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @consultant = consultants(:one)
    @client = clients(:one)
  end

  test "should get index" do
    get :index, params: { consultant_id: @consultant }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { consultant_id: @consultant }
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, params: { consultant_id: @consultant, client: @client.attributes }
    end

    assert_redirected_to consultant_client_path(@consultant, Client.last)
  end

  test "should show client" do
    get :show, params: { consultant_id: @consultant, id: @client }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { consultant_id: @consultant, id: @client }
    assert_response :success
  end

  test "should update client" do
    put :update, params: { consultant_id: @consultant, id: @client, client: @client.attributes }
    assert_redirected_to consultant_client_path(@consultant, Client.last)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, params: { consultant_id: @consultant, id: @client }
    end

    assert_redirected_to consultant_clients_path(@consultant)
  end
end
