class Author < ApplicationRecord
  def coordinates
    [rand(max= 90), rand(max=90)]
  end
end
