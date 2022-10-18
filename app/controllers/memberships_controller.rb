class MembershipsController < ApplicationController

   def create
      membership = Membership.create!(mem_params)
      render json: membership, status: :created
   end

   private

   def mem_params
      params.permit(:gym_id, :client_id, :charge)
   end

end
