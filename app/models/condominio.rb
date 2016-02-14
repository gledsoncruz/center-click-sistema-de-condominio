class Condominio < ActiveRecord::Base

  has_many :blocos, :dependent => :destroy

end
