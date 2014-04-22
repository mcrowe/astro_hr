class Course < ActiveRecord::Base
  has_many :categories
  belongs_to :vendor

  serialize :category_id

end


