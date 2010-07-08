class Sponsor < ActiveRecord::Base
  named_scope :visible, :conditions => ['visible = ?', true]
end
