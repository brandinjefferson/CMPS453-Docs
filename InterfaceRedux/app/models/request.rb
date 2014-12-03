class Request < ActiveRecord::Base
  before_save {self.clid = clid.downcase}
  #before_create {:create_activation_digest}
  VALID_CLID_REGEX = /\A[a-z]{3}+\d{4}/
  validates :clid, length: {maximum: 7, minimum: 7}, presence: true, uniqueness: {case_sensitive: false}, 
  format: {with: VALID_CLID_REGEX}
  validates :gender, presence: true
  #, format: {with: /\A[mfMF]\z/}
  validates :room, length: {maximum: 4}
  validates :building, presence: true
end
