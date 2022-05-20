class User < ApplicationRecord
  rolify
  has_secure_password

  belongs_to :course, optional: true
  has_many :reading_times

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z]+[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password,  presence: true, length: { minimum: 6, maximum: 50 }, allow_nil: true

  private

    def downcase_email
      self.email.downcase!
    end

end
