class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
	  if cookies[:ngs_locale] && I18n.available_locales.include?(cookies[:ngs_locale].to_sym)
	    l = cookies[:ngs_locale].to_sym
	  else
	    begin
	      country_code = request.location.country_code
	      if country_code
	        country_code = country_code.downcase.to_sym
	        [:rd, :pt, :br].include?(country_code) ? l = :pt : l = :en
	      else
	        l = I18n.default_locale # use default locale if cannot retrieve this info
	      end
	    rescue
	      l = I18n.default_locale
	    ensure
	      cookies.permanent[:ngs_locale] = l
	    end
	  end
	  I18n.locale = l
	end
	
end
