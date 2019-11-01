class AccountsController < ApplicationController
    
    # Read
    get '/accounts' do
        if logged_in?
            @accounts = Account.all 
            erb :"/accounts/index"
        else
            redirect to "/login"
        end
    end

    # Create
   get '/accounts/new' do 
        erb :"/accounts/new"
   end

    #Edit
   get '/accounts/:id/edit' do 
        @accounts = Account.all
        @account = Account.find_by_id(params[:id])
        if @account.client.id == current_user.id 
            erb :"/accounts/edit"
        else
            redirect to :"/accounts" 
        end
   end

#    Edit
   patch '/accounts/:id' do 
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
        account = Account.create(name: params[:name], balance: params[:balance], client_id: current_user.id)
        if account
            redirect to "/accounts/#{account.id}"
        else
            redirect to "/accounts/new"
        end
    end

    # Delete
    delete '/accounts/:id' do 
        @account = Account.find_by_id(params[:id])
        if @account.client.id == current_user.id 
            @account.delete
            redirect to "/accounts"
        else
            redirect to "/accounts/#{account.id}"
        end
    end

end