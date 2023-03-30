class Cargo < ApplicationRecord
  has_many :users

  validates :funcao, :sigla, presence: true
  before_save { self.funcao = funcao.titleize }
  before_save { self.sigla = sigla.titleize }
  
end
