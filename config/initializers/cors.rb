Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'
    resource '*',
      headers: :any,
      methods: [:get]
  end
end

Rails.application.config.hosts << "http://localhost:3000/create"
