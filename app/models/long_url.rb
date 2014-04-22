class LongUrl < ActiveRecord::Base
  before_save :set_long_url

  def generate_long_url
    Faker::Lorem.characters(2000)
  end
  
  private
  
  def set_long_url
    self.long_url = generate_long_url
  end
end