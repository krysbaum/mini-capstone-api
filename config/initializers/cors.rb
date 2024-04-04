Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "mini-capstone.peterxjang.com", "localhost:5173", "mini-capstone-api-lvcl.onrender.com"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
