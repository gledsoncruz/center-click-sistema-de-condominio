class Condominio < ActiveRecord::Base

  has_many :blocos, :dependent => :destroy

  validates :nome, :cnpj,  presence: true
  #validates_cnpj :cnpj

end
