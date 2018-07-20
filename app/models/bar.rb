class Bar < ApplicationRecord
  has_one :hangout, as: :hangoutable
end
