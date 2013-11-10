class Performer < ActiveRecord::Base
  has_many :act_performers
  has_many :acts, :through => :act_performers
  belongs_to :talent
end
