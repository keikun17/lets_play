class CreateInvitesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.belongs_to :sender
      t.belongs_to :receiver
      t.timestamps
    end

    # add_index :invitations, :sender_id
    # add_index :invitations, :receiver_id


  end
end
