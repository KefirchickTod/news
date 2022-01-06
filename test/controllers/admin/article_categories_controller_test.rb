require "test_helper"

class Admin::ArticleCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_article_category = admin_article_categories(:one)
  end

  test "should get index" do
    get admin_article_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_article_category_url
    assert_response :success
  end

  test "should create admin_article_category" do
    assert_difference("Admin::ArticleCategory.count") do
      post admin_article_categories_url, params: { admin_article_category: {  } }
    end

    assert_redirected_to admin_article_category_url(Admin::ArticleCategory.last)
  end

  test "should show admin_article_category" do
    get admin_article_category_url(@admin_article_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_article_category_url(@admin_article_category)
    assert_response :success
  end

  test "should update admin_article_category" do
    patch admin_article_category_url(@admin_article_category), params: { admin_article_category: {  } }
    assert_redirected_to admin_article_category_url(@admin_article_category)
  end

  test "should destroy admin_article_category" do
    assert_difference("Admin::ArticleCategory.count", -1) do
      delete admin_article_category_url(@admin_article_category)
    end

    assert_redirected_to admin_article_categories_url
  end
end
