
class Friend < ActiveRecord::Base
  attr_accessible :AboutME, :DOB, :cell, :email, :name
  validates_presence_of :cell, :message => "cell number is required."
  validates_presence_of :name, :message => "......please let mohan know your name...."
  validates_uniqueness_of :cell, :message => "There is already an account with that email."
  validates :email, :presence => true, :email => true
end
