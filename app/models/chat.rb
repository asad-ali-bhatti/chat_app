class Chat < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: :sender_id
  belongs_to :receiver, class_name: 'User', foreign_key: :receiver_id

  validate :sender_receiver_uniqueness
  validates :message, presence: true

  private

  def sender_receiver_uniqueness
    if sender == receiver
      errors.add(:sender, 'Sender can not be receiver.')
      errors.add(:receiver, 'Receiver can not be sender.')
    end
  end
end
