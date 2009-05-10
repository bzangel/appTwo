class Classified < ActiveRecord::Base
  
  validates_presence_of :title 
  validates_presence_of :price 
  validates_presence_of :location 
  validates_presence_of :description 
  validates_presence_of :email
  
  validates_presence_of :title, :message => "cannot be blank. Make your name descriptive"
  validates_numericality_of :price , :message => "must be a numeric value without the dollar sign"
  
  protected 
    def validate 
      errors.add(:price, "should be a positive value larger than 100") if price.nil?|| price < 100 
    end
    
    validates_format_of :email,  :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  
end
