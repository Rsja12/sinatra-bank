class Account < ActiveRecord::Base
    belongs_to :client
    validates :name, presence: true
    validates :balance, presence: true
end