class ChatUser < ActiveRecord::Base
  belongs_to :chat
  belongs_to :user
  belongs_to :last_read_message, class_name: 'Message'

  validates :unread_messages_count, numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0
  }
end
