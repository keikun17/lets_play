class Invitation < ActiveRecord::Base
  belongs_to :sender, class_name: "User", inverse_of: :invitations
  belongs_to :receiver, class_name: "User", inverse_of: :invites
end
