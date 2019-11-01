class ClientsController < ApplicationController
    
    get '/clients/signup' do
        erb :"/clients/signup"
    end

    post '/clients' do 
        @client = Client.create(params)
        if @client 
            session[:user_id] = @client.id
            redirect to "/accounts"
        else
            redirect to "/clients/signup"
        end
    end

end