require 'test_helper'

class SourcePublicationsControllerTest < ActionController::TestCase
  setup do
    @source_publication = source_publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:source_publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create source_publication" do
    assert_difference('SourcePublication.count') do
      post :create, source_publication: { distribution: @source_publication.distribution, name: @source_publication.name, state: @source_publication.state }
    end

    assert_redirected_to source_publication_path(assigns(:source_publication))
  end

  test "should show source_publication" do
    get :show, id: @source_publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @source_publication
    assert_response :success
  end

  test "should update source_publication" do
    put :update, id: @source_publication, source_publication: { distribution: @source_publication.distribution, name: @source_publication.name, state: @source_publication.state }
    assert_redirected_to source_publication_path(assigns(:source_publication))
  end

  test "should destroy source_publication" do
    assert_difference('SourcePublication.count', -1) do
      delete :destroy, id: @source_publication
    end

    assert_redirected_to source_publications_path
  end
end
