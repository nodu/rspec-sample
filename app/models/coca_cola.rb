class CocaCola < ActiveRecord::Base
  include ActionView::Helpers::NumberHelper

  validates :name, presence: true

  def description 
    # return "#{name} at $#{price}"
    return "#{self.name} at $#{self.price}"
    # return "#{self.name} at $#{number_with_precision(self.price)}"

  end

end
