class Home < ApplicationRecord
  has_one :hangout, as: :hangoutable
end
