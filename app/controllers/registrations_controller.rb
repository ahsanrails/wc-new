class RegistrationsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_registration, only: [:show, :edit, :update, :destroy]

  def index
    @registrations = Registration.all
  end

  def show
  end

  def new
    @registration = Registration.new
    @plan = Plan.find_by id: params["plan_id"]
  end


  def create
      @registration = Registration.new registration_params.merge(email: stripe_params["stripeEmail"],
                                                                 card_token: stripe_params["stripeToken"])
      @registration.user = current_user
      raise "Please, check registration errors" unless @registration.valid?
      @registration.process_payment
      @registration.save
      PaymentMailer.payment_email(current_user, @registration.plan, @registration).deliver
      redirect_to @registration, notice: 'Registration was successfully created.'
    rescue
      flash[:error] = e.message
      render :new
  end

  private
    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:plan_id, :full_name, :company, :contact)
    end

end