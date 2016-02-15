class Torre < ActiveRecord::Base

  belongs_to :bloco
  has_many :unidades, :dependent => :destroy

end
