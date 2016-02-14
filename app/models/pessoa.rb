class Pessoa < ActiveRecord::Base

  has_many :unidade_pessoas, :dependent => :destroy
  has_one :endereco

end
