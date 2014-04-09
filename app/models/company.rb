class Company < ActiveRecord::Base

  has_many :managers
  has_many :departments, dependent: :destroy

  validates_presence_of :name

end
