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
   get '/accounts/:id/edit' do 
        @accounts = Account.all
        @account = Account.find_by_id(params[:id])
        erb :"/accounts/edit"
   end

#    Edit
   patch '/accounts/:id' do 
    # binding.pry
        @account = Account.find_by_id(params[:id])
        params.delete("_method")
        if @account.update(params)
            redirect to "/accounts/#{@account.id}"
        else
            redirect to "/accounts/#{@account.id}/edit"
        end
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