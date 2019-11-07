class Forum < ApplicationRecord
has_many :questions, :dependent => :destroy
end
