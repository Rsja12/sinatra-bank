class AccountsController < ApplicationController
    
    # Read
    get '/accounts' do
        @client = Client.find_by_id(params[:id])
        if logged_in?
            @accounts = current_user.accounts.all 
            erb :"/accounts/index"
        else
            redirect to "/login"
        end
    end

    # Create
   get '/accounts/new' do 
        erb :"/accounts/new"
   end

    #Edit Name
   get '/accounts/:id/edit' do 
        @account = Account.find_by_id(params[:id])
        if @account.client.id == current_user.id 
            erb :"/accounts/edit"
        else
            redirect to :"/accounts" 
        end
   end

#    Edit Name
   patch '/accounts/:id' do 
        @account = Account.find_by_id(params[:id])
        params.delete("_method")
        if @account.update(params)
            redirect to "/accounts/#{@account.id}"
        else
            redirect to "/accounts/#{@account.id}/edit"
        end
   end


#     #Edit deposit
#    get '/accounts/:id/deposit' do 
#         @account = Account.find_by_id(params[:id])
#         if @account.client.id == current_user.id 
#             erb :"/accounts/deposit"
#         else
#             redirect to :"/accounts" 
#         end
#    end

# #    Edit deposit
#    patch '/accounts/:id' do 
#         @account = Account.find_by_id(params[:id])
#         params.delete("_method")
#         if @account.update(params)
#             redirect to "/accounts/#{@account.id}"
#         else
#             redirect to "/accounts/#{@account.id}/deposit"
#         end
#    end

   
#    #EDIT Withdraw
#    get '/accounts/:id/withdrawal' do 
#         @account = Account.find_by_id(params[:id])
#         if @account.client.id = current_user.id
#             erb :"/accounts/withdrawal"
#         else
#             redirect to :"/accounts"
#         end
#    end

# #   EDIT Withdraw
#    patch '/accounts/:id' do
#         @account = Account.find_by_id(params[:id])
#         params.delete("_method")
#         if @account.update(params)
#             redirect to "/accounts/#{@account.id}"
#         else
#             redirect to "/accounts/#{@account.id}/edit"
#         end
#    end

#    Read
    get '/accounts/:id' do 
        @account = Account.find_by_id(params[:id])
        erb :"/accounts/show"
    end

    # Create
    post '/accounts' do
        account = Account.new(name: params[:name], balance: params[:balance], client_id: current_user.id)
        if account.save
            redirect to "/accounts/#{account.id}"
        else
            redirect to "/accounts"
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