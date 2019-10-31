class AccountsController < ApplicationController
    
    get '/accounts' do 
        @accounts = Account.all 
        erb :"/accounts/index"
    end

   get '/accounts/new' do 
        erb :"/accounts/new"
   end

    get '/accounts/:id' do 
        @account = Account.find_by_id(params[:id])
        erb :"/accounts/show"
    end

    post '/accounts' do
        account = Account.create(params)
        if account
            redirect to "/accounts/#{account.id}"
        else
            redirect to "/accounts/new"
        end
    end

end