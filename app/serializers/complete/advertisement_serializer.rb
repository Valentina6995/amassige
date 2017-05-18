class Complete::AdvertisementSerializer < ActiveModel::Serializer
  attributes :id, :description, :status, :created_at, :adv_type, :price
end
