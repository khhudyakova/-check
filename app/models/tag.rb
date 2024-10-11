class Tag < ApplicationRecord
  belongs_to :story
  belongs_to :fork
  belongs_to :theme
end
