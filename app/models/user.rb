class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def full_name
  	first_name + " " + last_name
  end

 # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:user_id, :profile_name, :email, :first_name, :last_name)
    end

	def status_params
      params.permit(:user_id, :content)
    end



end
