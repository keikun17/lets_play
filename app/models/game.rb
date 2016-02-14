# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  name       :string
#  icon_big   :string
#  icon_small :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  has_and_belongs_to_many :users, -> { uniq }
end
