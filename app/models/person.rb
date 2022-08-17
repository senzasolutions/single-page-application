  class Person < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 10 }, if: :can_validate?
    validates :name, presence: true, if: :name_changed?

    def can_validate?
      true
    end
  validates_email :email
end
