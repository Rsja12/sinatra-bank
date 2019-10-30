class Account < Sinatra::Base
    belongs_to :clients
end