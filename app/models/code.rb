class Code < ActiveRecord::Base


  validates :number,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: false }

  validates :rvu,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: false }

end