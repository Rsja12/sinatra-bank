class AccountsController < ApplicationController
    
    # Read
    get '/accounts' do 
        @accounts = Account.all 
        erb :"/accounts/index"
    end

    # Create
   get '/accounts/new' do 
        erb :"/accounts/new"
   end

    #Edit
   get '/accounts/:id' do 
    @accounts = Account.all
    @account = Account.find_by_id(params[:id])
    erb :"/accounts/edit"
   end

#    Read
    get '/accounts/:id' do 
        @account = Account.find_by_id(params[:id])
        erb :"/accounts/show"
    end

    # Create
    post '/accounts' do
        account = Account.create(params)
        if account
            redirect to "/accounts/#{account.id}"
        else
            redirect to "/accounts/new"
        end
    end



end