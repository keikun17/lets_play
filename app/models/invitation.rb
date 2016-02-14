# == Schema Information
#
# Table name: invitations
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_invitations_on_receiver_id  (receiver_id)
#  index_invitations_on_sender_id    (sender_id)
#

class Invitation < ActiveRecord::Base
  belongs_to :sender, class_name: "User", inverse_of: :invitations
  belongs_to :receiver, class_name: "User", inverse_of: :invites
end
