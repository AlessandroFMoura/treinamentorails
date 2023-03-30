class User < ApplicationRecord
    belongs_to :cargo, optional: true

    before_create :generate_matricula
    validates :user_name, :email, presence: true
    validates :email, uniqueness: true, on: :create    
    before_save {self.email = email.downcase}
    before_save {self.user_name = user_name.titleize}
    

    private
    def generate_matricula
        self.matricula = (SecureRandom.random_number * (10**10)).round
    end
    
end
