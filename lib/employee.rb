class Employee < ActiveRecord::Base

    belongs_to :store
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200}
    # validates :store_id, presence: true
    validates_presence_of :store_id

end
