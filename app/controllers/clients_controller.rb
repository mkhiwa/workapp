class ClientsController < ApplicationController
  before_action :set_consultant
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET consultants/1/clients
  def index
    @clients = @consultant.clients
  end

  # GET consultants/1/clients/1
  def show
  end

  # GET consultants/1/clients/new
  def new
    @client = @consultant.clients.build
    respond_to do |format|
     format.html
     format.js
  end

  # GET consultants/1/clients/1/edit
  def edit
  end

  # POST consultants/1/clients
  def create
    @client = @consultant.clients.build(client_params)

    if @client.save
      redirect_to([@client.consultant, @client], notice: 'Client was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT consultants/1/clients/1
  def update
    if @client.update_attributes(client_params)
      redirect_to([@client.consultant, @client], notice: 'Client was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE consultants/1/clients/1
  def destroy
    @client.destroy

    redirect_to consultant_clients_url(@consultant)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultant
      @consultant = Consultant.find(params[:consultant_id])
    end

    def set_client
      @client = @consultant.clients.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      params.require(:client).permit(:name, :location, :request_by, :notes)
    end
end
