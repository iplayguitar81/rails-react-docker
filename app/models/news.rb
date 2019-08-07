class News < ApplicationRecord
	#validate presence of title, subtitle, and body to prevent article creation if not entered into form...
	validates :title, :subtitle, :body, presence: true

has_one_attached :image

end
