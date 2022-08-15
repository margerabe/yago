# frozen_string_literal: true

class Lead < ApplicationRecord
  has_one :company

  validates :email, format: { with: /\A^[A-Za-z0-9+_.-]+@(.+)$\z/ }, presence: true
end
