class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :chats

  validates :username, uniqueness: true

  def self.define_role_helpers
    Role.all.each do |role|
      define_method(role.name+'?') { role.id == self.role_id }
    end
  end

  def method_missing(method_name, *arguments, &block)
    if method_name.to_s[-1] == '?'
      self.class.define_role_helpers
      self.send(method_name)
    else
      super
    end
  end
end
