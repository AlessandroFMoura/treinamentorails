class Profile < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  before_create :generate_matricula
   
  private
  def generate_matricula
      self.matricula = (SecureRandom.random_number * (10**10)).round
  end
         
end
