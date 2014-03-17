class Store < ActiveRecord::Base
  has_many :relationships, foreign_key: "store_id", dependent: :destroy
  has_many :preparations, through: :relationships
end
