class Request < ActiveRecord::Base
  validates :clid, length: {maximum: 7}, presence: true
  validates :room, length: {maximum: 4, minimum: 3}, presence: true
  validates :building, presence: true
end
