class Bloco < ActiveRecord::Base

  belongs_to :condominio
  has_many :torres, :dependent => :destroy

end