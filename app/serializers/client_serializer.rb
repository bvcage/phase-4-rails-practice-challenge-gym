class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :charge_total

  def charge_total
    self.object.memberships.sum(:charge)
  end
  
end
