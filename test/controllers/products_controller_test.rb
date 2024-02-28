require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200
  end

  test "create" do
    post "/products.json"
    assert_response 200
  end
end
