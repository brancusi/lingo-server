class OpenTalkSession < ActiveRecord::Base
  validates :name, :session_id, :presence => true
end
