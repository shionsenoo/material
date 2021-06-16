class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
   with_options presence: true do
    with_options length:{minimum:6}, format: {with:  /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/} do
      validates :password, :password_confirmation
    end
    validates :nickname
    validates :name, format: {with: /\A[ぁ-んァ-ン一-龠々]+\z/ } 
   end
end
