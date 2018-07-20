class Rating < ApplicationRecord
  belongs_to :slot
  belongs_to :event
  belongs_to :user
end
