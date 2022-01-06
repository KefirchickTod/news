require "application_system_test_case"

class Admin::ArticleCategoriesTest < ApplicationSystemTestCase
  setup do
    @admin_article_category = admin_article_categories(:one)
  end

  test "visiting the index" do
    visit admin_article_categories_url
    assert_selector "h1", text: "Article categories"
  end

  test "should create article category" do
    visit admin_article_categories_url
    click_on "New article category"

    click_on "Create Article category"

    assert_text "Article category was successfully created"
    click_on "Back"
  end

  test "should update Article category" do
    visit admin_article_category_url(@admin_article_category)
    click_on "Edit this article category", match: :first

    click_on "Update Article category"

    assert_text "Article category was successfully updated"
    click_on "Back"
  end

  test "should destroy Article category" do
    visit admin_article_category_url(@admin_article_category)
    click_on "Destroy this article category", match: :first

    assert_text "Article category was successfully destroyed"
  end
end
