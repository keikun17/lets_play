class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :games, -> { uniq }

  has_many :invitations, foreign_key: :sender_id
  has_many :invites,  class_name: "Invitation", foreign_key: :receiver_id

  #------------------------------------------------------------
  # Allow users to log in with username
  #------------------------------------------------------------
  validates :username,
    uniqueness: { case_sensitive: false },
    format:     { with: /^[a-zA-Z0-9_\.]*$/, :multiline => true }

  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:username].nil?
        where(conditions).first
      else
        where(username: conditions[:username]).first
      end
    end
  end

end
