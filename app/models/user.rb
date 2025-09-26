class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    before_validation :set_default_role, on: :create
    validates :role, presence: true
    
    self.inheritance_column = :role

    private

    def set_default_role
        self.role ||= "Client"
    end
end
