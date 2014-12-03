class Administrator < ActiveRecord::Base
  before_save {self.username = username.downcase}
  validates :username, presence: true, uniqueness: {case_sensitive:false}
  validates :password, presence: true, length: {minimum: 8}
  
  has_secure_password
end
