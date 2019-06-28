class Message < ApplicationRecord
  has_and_belongs_to_many :user

  # time_zone = 'Central Time (US & Canada)'

  def formatted_created_at
    created_at.strftime("%A, %B %e, %Y, %l:%M %p") if created_at != nil
  end
end
