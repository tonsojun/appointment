class EmergencyContactsController < ApplicationController
  before_action :set_emergency_contact, only: %i[ show edit update destroy ]

  # GET /emergency_contacts or /emergency_contacts.json
  def index
    @emergency_contacts = EmergencyContact.all
  end

  # GET /emergency_contacts/1 or /emergency_contacts/1.json
  def show
  end

  # GET /emergency_contacts/new
  def new
    @emergency_contact = EmergencyContact.new
  end

  # GET /emergency_contacts/1/edit
  def edit
  end

  # POST /emergency_contacts or /emergency_contacts.json
  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    respond_to do |format|
      if @emergency_contact.save
        format.html { redirect_to @emergency_contact, notice: "Emergency contact was successfully created." }
        format.json { render :show, status: :created, location: @emergency_contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emergency_contacts/1 or /emergency_contacts/1.json
  def update
    respond_to do |format|
      if @emergency_contact.update(emergency_contact_params)
        format.html { redirect_to @emergency_contact, notice: "Emergency contact was successfully updated." }
        format.json { render :show, status: :ok, location: @emergency_contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_contacts/1 or /emergency_contacts/1.json
  def destroy
    @emergency_contact.destroy
    respond_to do |format|
      format.html { redirect_to emergency_contacts_url, notice: "Emergency contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_contact
      @emergency_contact = EmergencyContact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emergency_contact_params
      params.require(:emergency_contact).permit(:name, :phone1, :phone2, :email, :profile_id)
    end
end
