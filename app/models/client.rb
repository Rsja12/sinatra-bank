class Client < Sinatra::Base 
    has_many :accounts
    has_secure_password
end