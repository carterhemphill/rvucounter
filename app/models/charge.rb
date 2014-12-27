class Charge < ActiveRecord::Base

  validates :pan,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: false }

  validates :code,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: false }

end