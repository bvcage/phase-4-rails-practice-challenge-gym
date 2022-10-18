class Membership < ApplicationRecord
   validates :gym_id, presence: true
   validates :client_id, {
      presence: true,
      uniqueness: {
         scope: :gym_id,
         message: "can only have 1 membership per gym"
      }
   }
   validates :charge, {
      presence: true,
      numericality: {
         only_integer: true
      }
   }

   belongs_to :client
   belongs_to :gym
end
