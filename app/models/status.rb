class Status < ActiveRecord::Base
 	belongs_to 		:user

 # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      Status.user_params.permit(:user_id, :profile_name, :email, :first_name, :last_name)
     end

	def status_params
      params.permit(:user_id, :content)
    end

end
