class Game < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :parks
  has_many :interests
  has_many :users, through: :interests

  belongs_to :organizer, class_name: "User"


  # enum :sport, ['baseball', 'basketball', ''] below associations and validations
  # filter in console with Game.all.enum

  enum sport: { baseball: 0, basketball: 1, football: 2, soccer: 3, softball: 4, tennis: 5, volleyball: 6 }

  enum category: { casual: 0, competitive: 1, practice: 2 }
end
