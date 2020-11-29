class Spider < ApplicationRecord
  #validates :spiderman, year:, maryjane:, villian:, director:, description:,  presence: true

  def all_spidermen_list
    #p "i am spiderman"
    description.split(", ")
  end
end
