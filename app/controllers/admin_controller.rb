class AdminController < ApplicationController
  before_action :set_customer, only: [:view_customer]

  def index

    @customers = User.where(role: 'customer')

    @newUser = User.new

    @contact_messages = ContactMessage.all

    @new_demo = Demo.new

    # @projects = Project.all
  end


  def view_customer
    @assign_demo = DemoUsers.new
  end

  private

  def set_customer
    if current_user.role != 'admin'
      @customer = User.find( current_user.id)
    else
      @customer = User.first(0)
    end
  end
end
