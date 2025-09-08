class User < ApplicationRecord
    self.inheritance_column = :role
end
