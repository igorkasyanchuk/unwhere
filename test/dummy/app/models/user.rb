class User < ApplicationRecord

  scope :admins, -> { where(first_name: 'Admin') }

end
