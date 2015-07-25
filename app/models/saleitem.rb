class Saleitem < ActiveRecord::Base
  belongs_to :sale
  belongs_to :pizza
end
