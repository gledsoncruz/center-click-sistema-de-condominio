class Unidade < ActiveRecord::Base

  belongs_to :torre
  has_many :unidade_pessoas, :dependent => :destroy

end
