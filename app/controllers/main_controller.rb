class MainController < ApplicationController

  def home
    @contact_message = ContactMessage.new

    @login = false
  end
  # Asked for index to be defined so I was going to define it but then altered the routes file for the main controller to look for the home action under the main view subfolder
  # def index
  # end
end
