class Page < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :body
	validates_presence_of :author
	validates_presence_of :email

	validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

	belongs_to :reference
end