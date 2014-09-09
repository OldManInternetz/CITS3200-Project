module NotificationsHelper





	def formatted_action(text)

		if text == "created"
			'<span style="color: #26FF38">'.html_safe + text + '</span>'.html_safe
		elsif text == "edited"
			'<span style="color: #B638FF">'.html_safe + text + '</span>'.html_safe
		end

	end



end
