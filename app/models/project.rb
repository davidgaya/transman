class Project < ActiveRecord::Base
	validates :title, :presence => true
	validates :description, :presence => true

	has_many :tasks, :dependent => :destroy
end
