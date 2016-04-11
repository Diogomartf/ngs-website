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
      redirect_to @contact, notice: 'Cannot send message.'
    end
  end
end