class Attendee < ApplicationRecord
    belongs_to :user
    belongs_to :event
  
    validates :user_id, presence: true
    validates :event_id, presence: true
    validates :user_id, uniqueness: { scope: :event_id, message: "has already registered for this event" }
  end
  