require "test_helper"

class BalanceItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance_item = balance_items(:one)
  end

  test "should get index" do
    get balance_items_url
    assert_response :success
  end

  test "should get new" do
    get new_balance_item_url
    assert_response :success
  end

  test "should create balance_item" do
    assert_difference("BalanceItem.count") do
      post balance_items_url, params: { balance_item: { amount: @balance_item.amount, balance_id: @balance_item.balance_id, category_id: @balance_item.category_id, creator_id: @balance_item.creator_id, currency_id: @balance_item.currency_id, participant_id: @balance_item.participant_id, payer_id: @balance_item.payer_id } }
    end

    assert_redirected_to balance_item_url(BalanceItem.last)
  end

  test "should show balance_item" do
    get balance_item_url(@balance_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_balance_item_url(@balance_item)
    assert_response :success
  end

  test "should update balance_item" do
    patch balance_item_url(@balance_item), params: { balance_item: { amount: @balance_item.amount, balance_id: @balance_item.balance_id, category_id: @balance_item.category_id, creator_id: @balance_item.creator_id, currency_id: @balance_item.currency_id, participant_id: @balance_item.participant_id, payer_id: @balance_item.payer_id } }
    assert_redirected_to balance_item_url(@balance_item)
  end

  test "should destroy balance_item" do
    assert_difference("BalanceItem.count", -1) do
      delete balance_item_url(@balance_item)
    end

    assert_redirected_to balance_items_url
  end
end
