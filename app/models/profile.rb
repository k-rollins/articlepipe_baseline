class Profile < ActiveRecord::Base
  validates :display_name, length: { minimum: 4, maximum: 30 }
  validates :tagline, length: {maximum: 140 }
  validates :bio, length: {maximum: 1200 }

  before_save :remove_twitter_atmark
  
  private
    
  def remove_twitter_atmark
    matchy = /(^@)(.*)/.match(self.twitter)
    self.twitter = matchy[2] if matchy && matchy[1] && matchy[2] 
  end
  

end
