class Store < ActiveRecord::Base

    has_many :employees
    validates :name, presence: true, length: {minimum: 3}
    validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    validate :carry_men_or_womens

    def carry_men_or_womens
        if !mens_apparel.present? && !womens_apparel.present? 
          errors.add(:store, "Must carry at least men or womens")
        end
    end

end


