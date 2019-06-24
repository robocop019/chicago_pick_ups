class Game < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :interests
  has_many :users, through: :interests

  belongs_to :park
  belongs_to :organizer, class_name: "User"


  # enum :sport, ['baseball', 'basketball', ''] below associations and validations
  # filter in console with Game.all.enum

  enum sport: { baseball: 0, basketball: 1, football: 2, hockey: 3, soccer: 4, softball: 5, tennis: 6, volleyball: 7 }

  enum category: { casual: 0, competitive: 1, practice: 2 }
end
