class Emp < ApplicationRecord

  validates :employer,  presence: true
  validates :date_start, presence: true, if: :can_validate?
  validates :date_end, presence: true, if: :can_validate?

  def can_validate?
    true
  end

end
