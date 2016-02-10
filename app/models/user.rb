class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :games, -> { uniq }

  has_many :invitations, foreign_key: :sender_id
  has_many :invites,  class_name: "Invitation", foreign_key: :receiver_id
end
