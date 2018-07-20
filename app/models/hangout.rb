class Hangout < ApplicationRecord
  belongs_to :hangoutable, polymorphic: true
end
