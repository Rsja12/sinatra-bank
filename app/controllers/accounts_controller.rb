class AccountsController < ApplicationController
    
    get '/accounts' do 
        @accounts = Account.all 
        erb :"/accounts/index"
    end

end