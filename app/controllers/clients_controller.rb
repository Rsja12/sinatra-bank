class ClientsController < ApplicationController
    
    get '/clients/signup' do
        erb :"/clients/signup"
    end

    post '/clients' do 
        @client = Client.new(params) 
        if @client.save
            session[:user_id] = @client.id
            redirect to "/accounts/new"
        else
            redirect to "/"
        end
    end

end