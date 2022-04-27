class Message < ApplicationRecord
  belongs_to :user

  after_create :place_to_zapier
  
  def place_to_zapier
    Zapier::Message.new(self).post_to_zapier
  end
end
