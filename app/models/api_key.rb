class ApiKey < ActiveRecord::Base
  before_validation :generate_access_token, if: :new_record?

  validates :access_token, presence: true, uniqueness: true

  private

  def generate_access_token
    begin
      self.access_token = SecureRandom.urlsafe_base64(32)
    end while self.class.exists?(access_token: access_token)
  end
end