class Role < ApplicationRecord
  has_many :users

  def self.admin
    where(name: 'admin').first_or_create
  end
end
