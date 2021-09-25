Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

# //Here you are specifying from what url's you are accepting fetch calls from. in our case you will want to switch example.com to * to allow all websites.
# example: origins "*"
# //Here you can also limit the methods that you will be accepting.
