class ContactsController < ApplicationController
  
  before_action :tracker, only: :create

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to @contact, notice: 'Your message was successfully send.'
      @tracker.track(@contact.email, 'Contacto por mensagem')
    else
      redirect_to @contact, alert: 'Cannot send message.'
    end
  end

  def tracker 
    @tracker ||= Mixpanel::Tracker.new(ENV['PROJECT_TOKEN'])
  end 
end