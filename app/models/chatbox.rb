class Chatbox < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :body, :conversation_id, :user_id

  def friendly_time
    created_at.strftime("%e %b %Y %H:%M:%S%p")
  end
end
