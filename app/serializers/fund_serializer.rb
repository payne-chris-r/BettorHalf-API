class FundSerializer < ActiveModel::Serializer
  attributes :id, :name, :sport, :minbet, :description
  # belongs_to :user
end
