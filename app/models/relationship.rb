class Relationship < ActiveRecord::Base
  belongs_to :store
  belongs_to :preparation
end
