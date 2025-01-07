require "application_system_test_case"

class BalanceItemsTest < ApplicationSystemTestCase
  setup do
    @balance_item = balance_items(:one)
  end

  test "visiting the index" do
    visit balance_items_url
    assert_selector "h1", text: "Balance items"
  end

  test "should create balance item" do
    visit balance_items_url
    click_on "New balance item"

    fill_in "Amount", with: @balance_item.amount
    fill_in "Balance", with: @balance_item.balance_id
    fill_in "Category", with: @balance_item.category_id
    fill_in "Creator", with: @balance_item.creator_id
    fill_in "Currency", with: @balance_item.currency_id
    fill_in "Participant", with: @balance_item.participant_id
    fill_in "Payer", with: @balance_item.payer_id
    click_on "Create Balance item"

    assert_text "Balance item was successfully created"
    click_on "Back"
  end

  test "should update Balance item" do
    visit balance_item_url(@balance_item)
    click_on "Edit this balance item", match: :first

    fill_in "Amount", with: @balance_item.amount
    fill_in "Balance", with: @balance_item.balance_id
    fill_in "Category", with: @balance_item.category_id
    fill_in "Creator", with: @balance_item.creator_id
    fill_in "Currency", with: @balance_item.currency_id
    fill_in "Participant", with: @balance_item.participant_id
    fill_in "Payer", with: @balance_item.payer_id
    click_on "Update Balance item"

    assert_text "Balance item was successfully updated"
    click_on "Back"
  end

  test "should destroy Balance item" do
    visit balance_item_url(@balance_item)
    click_on "Destroy this balance item", match: :first

    assert_text "Balance item was successfully destroyed"
  end
end
