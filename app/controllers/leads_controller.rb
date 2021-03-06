class LeadsController < ApplicationController
  before_action :set_lead, only: [:destroy]

  # GET /leads
  # GET /leads.json
  def index
    @leads = Lead.all.order(created_at: :desc)
  end

  # GET /leads/new
  def new
    @lead = Lead.new
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(lead_params)

    respond_to do |format|
      if @lead.save
        format.html { redirect_to welcome_path, notice: "You've subscribed! We'll come back to you shortly!" }
        format.json { render :show, status: :created, location: @lead }
      else
        format.html { render :new }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: 'Lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  before_action :authenticate, only: :index

  protected
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.dig(:leads, :login) && password == Rails.application.credentials.dig(:leads, :pass)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lead_params
      params.require(:lead).permit(:email, :comment, :last_name, :first_name, :phone_number, :company)
    end
end
