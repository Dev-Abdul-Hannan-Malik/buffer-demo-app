# frozen_string_literal:false

# email:string
# password:string
#
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Must be a valid email address' }
end