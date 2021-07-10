require "test_helper"

class NodeRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @node_relationship = node_relationships(:one)
  end

  test "should get index" do
    get node_relationships_url, as: :json
    assert_response :success
  end

  test "should create node_relationship" do
    assert_difference('NodeRelationship.count') do
      post node_relationships_url, params: { node_relationship: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show node_relationship" do
    get node_relationship_url(@node_relationship), as: :json
    assert_response :success
  end

  test "should update node_relationship" do
    patch node_relationship_url(@node_relationship), params: { node_relationship: {  } }, as: :json
    assert_response 200
  end

  test "should destroy node_relationship" do
    assert_difference('NodeRelationship.count', -1) do
      delete node_relationship_url(@node_relationship), as: :json
    end

    assert_response 204
  end
end
