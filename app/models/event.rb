class Event < ApplicationRecord
  belongs_to :hangout
  belongs_to :user
  belongs_to :activity
end
