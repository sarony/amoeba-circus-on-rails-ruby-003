class Act < ActiveRecord::Base
  has_many :act_performers
  has_many :performers, :through => :act_performers
end
