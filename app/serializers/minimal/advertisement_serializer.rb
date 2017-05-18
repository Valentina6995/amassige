class Minimal::AdvertisementSerializer < ActiveModel::Serializer
  attributes :id, :description, :status, :created_at, :adv_type, :price #, :foo

  # belongs_to :user

  # def foo
  #   "Hello! You are #{object.user.username}"
  # end
end
