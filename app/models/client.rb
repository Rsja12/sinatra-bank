class Client < ActiveRecord::Base
    has_many :accounts
    has_secure_password
    validates :email, uniqueness: true
    validates :email, presence: true
    validates :name, presence: true
end