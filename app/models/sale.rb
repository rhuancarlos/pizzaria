class Sale < ActiveRecord::Base
  belongs_to :cliente
  has_many :saleitems
end
