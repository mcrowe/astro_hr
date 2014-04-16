class Department < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :categories
  belongs_to :courses
  has_many :employees

  validates_presence_of :name

  validates :budget,
            presence: true,
            numericality: { only_integer: true }

end
