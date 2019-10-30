class Client < Sinatra::Base 
    has_secure_password
    has_many :accounts
end