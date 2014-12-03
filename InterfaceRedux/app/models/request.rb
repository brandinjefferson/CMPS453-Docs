class Request < ActiveRecord::Base
  attr_accessor :activation_token
  before_save {self.clid = clid.downcase}
  before_create :create_activation_digest
  VALID_CLID_REGEX = /\A[a-z]{3}+\d{4}/
  validates :clid, length: {maximum: 7, minimum: 7}, presence: true, uniqueness: {case_sensitive: false}, 
  format: {with: VALID_CLID_REGEX}
  validates :gender, presence: true
  #, format: {with: /\A[mfMF]\z/}
  validates :room, length: {maximum: 4}
  validates :building, presence: true
  
  private
    def create_activation_digest
      self.activation_token = Request.new_token
      self.activation_digest = Request.digest(activation_token)
    end
    
    # Returns a random token.
    def Request.new_token
      SecureRandom.urlsafe_base64
    end
    
    def authenticated?
      
    end
end
