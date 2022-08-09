class Lead < ApplicationRecord
  has_one :companies

  validates :email, format: { with: /\A^[A-Za-z0-9+_.-]+@(.+)$\z/ }, presence: true
end
