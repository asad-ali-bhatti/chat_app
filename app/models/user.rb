class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :chats

  validates :username, uniqueness: true

  Role.all.each do |role|
    define_method(role.name+'?') { self.role_id == role.id }
  end
end
