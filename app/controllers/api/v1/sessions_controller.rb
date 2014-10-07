module Api
  module V1
    class SessionsController < BaseController


      def create
        @proc_code = Proc.new do
          user = Users.check(params[:email], params[:password])
          if user
          @data = Users.where("id = ?",user.id)
          @success = true
           @errors = {}
          else
          @data = "Please enter valid email or password"
          @success = true
          @errors = {}
          end

        end
      end
    end
  end
end