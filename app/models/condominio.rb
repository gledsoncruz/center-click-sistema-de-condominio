class Condominio < ActiveRecord::Base

  has_many :blocos, :dependent => :destroy

  validates :nome, presence: true

end
