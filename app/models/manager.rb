class Manager < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :company

  before_create :set_company

  private

    def set_company
      self.company = Company.last
    end

end
