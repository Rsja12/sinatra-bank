class Helpers 
    def self.logged_in?
        session[:user_id] 
      end
      
      
      def self.current_user      
        @client ||= Client.find_by(id: session[:user_id])
      end
  
end