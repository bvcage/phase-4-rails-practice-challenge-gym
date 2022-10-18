class ClientsController < ApplicationController

   def index
      clients = Client.all
      render json: clients, status: :ok
   end

   def show
      client = find_client
      render json: client, status: :ok
   end

   def update
      client = find_client
      client.update!(cli_params)
      render json: client, status: :accepted
   end

   private

   def cli_params
      params.permit(:name)
   end

   def find_client
      Client.find(params[:id])
   end

end
