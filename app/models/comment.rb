class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  def formatted_created_at
    created_at.strftime("%A, %B %e, %Y, %l:%M %p") if created_at != nil
  end

  def formatted_updated_at
    updated_at.strftime("%A, %B %e, %Y, %l:%M %p") if updated_at != nil
  end
end
