class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to @contact, notice: 'Your message was successfully send.'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end