class Request < ActiveRecord::Base
  validates :clid, length: {maximum: 7, minimum: 7}, presence: true, uniqueness: true
  validates :room, length: {maximum: 4, minimum: 3}, presence: true
  validates :building, presence: true
end
