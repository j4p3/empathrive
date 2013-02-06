module ApplicationHelper
	#returns full title on a per-page basis
	def full_title(page_title)
		base_title = "Empathrive"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def community_column(columns)
		columns.times { "layouts/community_column"}
	end
end