class User < ApplicationRecord

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, presence: true

  validates :first_name, presence: true, length: { maximum: 25 }, if: :can_validate?
  validates :last_name, presence: true, length: { maximum: 50 }, if: :can_validate?
  validates :phone, presence: true,  format: { with: /\d{3}-\d{3}-\d{4}/, length: { maximum: 10 } }, if: :can_validate?


  def can_validate?
    true
  end
end







# validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i



# validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
