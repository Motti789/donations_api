class Donor < ApplicationRecord
    has_many :donations

    validates :first_name, :last_name, :email, :phone_number, presence: true
end
