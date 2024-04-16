class Post < ApplicationRecord
	validates :caption, presence: true

	after_create do
		Faraday.post do |req|
          req.headers[:Content_Type] = 'application/json'
          req.headers[:token] = JsonWebToken.encode({ data: 'secret' })
          req.params = { message: caption }
          req.url  "http://localhost:3000/notify_user"
        end
	end
end
