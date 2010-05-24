class ActiveSupport::TestCase
  setup :log_test
  private 
  def log_test
    unless @already_logged_this_test  
      puts "\n\nStarting #{@method_name} in class:#{self.class.name}\n#{'-' * (20 + @method_name.length + self.class.name.length)}\n"  
    end  
    @already_logged_this_test = true 
  end

end
