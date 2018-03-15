class ContactMessagesController < ApplicationController
  before_action :set_contact_message, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, :except => [:create, :new]


  # GET /contact_messages
  def index
    @contact_messages = ContactMessage.all
  end

  # GET /contact_messages/1
  def show
  end

  # GET /contact_messages/new
  def new
    @contact_message = ContactMessage.new
  end

  # GET /contact_messages/1/edit
  def edit
  end

  # POST /contact_messages
  def create
    @contact_message = ContactMessage.new(contact_message_params)

    ContactMailer.contact_message(@contact_message.name, @contact_message.subject, @contact_message.phone, @contact_message.email, @contact_message.content).deliver_now

    if @contact_message.save
      redirect_to root_url, notice: 'Thanks for the message! For immediate service contact (209) 643-5638.'
    else
      render :new
    end
  end

  # PATCH/PUT /contact_messages/1
  def update
    if @contact_message.update(contact_message_params)
      redirect_to @contact_message, notice: 'Contact message was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contact_messages/1
  def destroy
    @contact_message.destroy
    redirect_to contact_messages_url, notice: 'Contact message was successfully destroyed.'
  end

  private
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      session[:admin] = (user_name == 'vas' && password == 'Maxima2017!')
    end
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_message
      @contact_message = ContactMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_message_params
      params.require(:contact_message).permit(:name, :subject, :phone, :email, :content)
    end
end
