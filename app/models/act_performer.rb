class ActPerformer < ActiveRecord::Base
  belongs_to :performer
  belongs_to :act
end
