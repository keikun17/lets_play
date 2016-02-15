class InvitationsController < ApplicationController

  def create
    contact = User.find_by(username: params[:contact_name])

    respond_to do |format|
      binding.pry
      if contact
        current_user.invitations.create(receiver_id: contact)
        format.json { render json: {contact_name: contact.username, message: "Contact request sent"} }
      else
        format.json { render json: {message: "#{params[:contact_name]} Not found"}, status: "404" }
      end
    end

  end

end
