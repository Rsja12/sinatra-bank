class ClientsController < ApplicationController
    
    get '/clients/signup' do
        erb :"/clients/signup"
    end

    post '/clients' do 
        @client = Client.new(params) #Why does this not work with .create method?
        if @client.save
            session[:user_id] = @client.id
            redirect to "/accounts"
        else
            redirect to "/clients/signup"
        end
    end

end