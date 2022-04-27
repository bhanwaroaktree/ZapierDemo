class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages

  after_create :generate_api_key

  private

  def generate_api_key
    self.update(api_key: SecureRandom.hex)
  end
end
