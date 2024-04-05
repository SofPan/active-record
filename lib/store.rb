class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: , length: {minimum: 3}
  validates :annual_revenue, presence: , numericality: {only_integer: true}
  validate :must_carry_apparel

  def must_carry_apparel
    unless mens_apparel == true || womens_apparel == true
      errors.add(:id, "Store must carry men's or women's apparel")
    end
  end
end
