class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @test
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to @contact, notice: 'Your message was successfully send.'
    else
      redirect_to @contact, alert: 'Cannot send message.'
    end
  end
end