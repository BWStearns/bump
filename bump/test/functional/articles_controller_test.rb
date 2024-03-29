require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { article_body: @article.article_body, author: @article.author, distribution: @article.distribution, loe: @article.loe, most_important: @article.most_important, pubdate: @article.pubdate, publication: @article.publication, state: @article.state, submitted: @article.submitted, summary: @article.summary, title: @article.title, url: @article.url }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    put :update, id: @article, article: { article_body: @article.article_body, author: @article.author, distribution: @article.distribution, loe: @article.loe, most_important: @article.most_important, pubdate: @article.pubdate, publication: @article.publication, state: @article.state, submitted: @article.submitted, summary: @article.summary, title: @article.title, url: @article.url }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end
