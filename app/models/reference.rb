class Reference < ActiveRecord::Base
	validates_presence_of :name

	has_many :pages, :dependent => :restrict
end
