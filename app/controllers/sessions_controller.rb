class SessionsController < ApplicationController
    
    get '/login' do 
        erb :"sessions/login" 
    end

    post '/login' do 
        client = Client.find_by(email: params[:email])
        if client.authenticate(params[:password])
            session[:user_id] = client.id 
            redirect to "/accounts"
        else
            redirect to "/login"
        end
    end

end