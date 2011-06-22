class SalesInfo7 < ActiveRecord::Base
cattr_reader :per_page
@@per_page = 10 
# validates :sales_ofdate, :presence => true,
# :date => {:after => Proc.new { Time.now }, :before => Proc.new # { Time.now + 1.day } } 

# validates :email, :presence => true, :length => {:minimum => 7, :maximum => 254}, :uniqueness => true, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[
validates :sales_title, :presence => true, :length => {:minimum => 7, :maximum => 100}
validates :sales_addr, :presence => true, :length => {:minimum => 7, :maximum => 100}
validates :sales_location, :presence => true, :length => {:minimum =>6, :maximum => 10}
validates :sales_desc, :presence => true, :length => {:minimum => 10, :maximum => 1000}
validates :sales_bold, :presence => true, :length => {:minimum => 2, :maximum => 3}
validates :sales_star, :presence => true, :length => {:minimum => 2, :maximum => 3}



end
