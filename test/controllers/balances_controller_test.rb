require "test_helper"

class BalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance = balances(:one)
  end

  test "should get index" do
    get balances_url
    assert_response :success
  end

  test "should get new" do
    get new_balance_url
    assert_response :success
  end

  test "should create balance" do
    assert_difference("Balance.count") do
      post balances_url, params: { balance: { creation_date: @balance.creation_date, creator_id: @balance.creator_id, description: @balance.description, name: @balance.name } }
    end

    assert_redirected_to balance_url(Balance.last)
  end

  test "should show balance" do
    get balance_url(@balance)
    assert_response :success
  end

  test "should get edit" do
    get edit_balance_url(@balance)
    assert_response :success
  end

  test "should update balance" do
    patch balance_url(@balance), params: { balance: { creation_date: @balance.creation_date, creator_id: @balance.creator_id, description: @balance.description, name: @balance.name } }
    assert_redirected_to balance_url(@balance)
  end

  test "should destroy balance" do
    assert_difference("Balance.count", -1) do
      delete balance_url(@balance)
    end

    assert_redirected_to balances_url
  end
end
