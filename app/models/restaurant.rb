class Restaurant < ApplicationRecord
  has_one :hangout, as: :hangoutable
end
