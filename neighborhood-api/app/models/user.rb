class User < ApplicationRecord
  has_secure_password
  validates :email, :first_name, :username, :password_digest, :session_token, presence: true
  validates :email, :session_token, uniqueness: true
  after_initialize :ensure_session_token


  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    # find the user by email, if user is found AND password authenticates return user, otherwise return nil
    user && user.authenticate(password) ? user : nil
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64(16)
    self.save!
    # save! will raise an error if it is not successful
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
