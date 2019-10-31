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

end