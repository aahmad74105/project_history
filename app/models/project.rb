class Project < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :name, presence: true
	validates :description, presence: true
	VALID_STATUS = [ 'Completed', 'In_Progres', 'Hold']

	validates :status, inclusion: {in: VALID_STATUS}

end
