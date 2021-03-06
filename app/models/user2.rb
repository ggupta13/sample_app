class User2 < ActiveRecord::Base
	has_many :microposts, dependent: :destroy
	has_and_belongs_to_many :teams
	before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  

  def User2.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User2.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User2.encrypt(User.new_remember_token)
    end
end