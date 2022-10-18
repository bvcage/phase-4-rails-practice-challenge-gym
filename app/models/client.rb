class Client < ApplicationRecord
   has_many :memberships
   has_many :gyms, through: :memberships

   def charge_total
      self.memberships.sum(:charge)
   end

end
