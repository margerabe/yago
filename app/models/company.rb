class Company < ApplicationRecord
  validates :enterprise_number, length: { is: 10 }
  

end
