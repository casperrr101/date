class ContactsController < ApplicationController
   def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(params[:contact])
      if @contact.valid?
        #ContactMailer.new_contact(@contact).deliver
        flash[:notice] = "Message sent! Thank you for contacting us."
        redirect_to root_url
      else
        render :action => 'new'
      end
    end
  end
