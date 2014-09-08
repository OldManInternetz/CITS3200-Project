module UsersHelper

	""" Displays a formatted version of the user's username, which changes depending on their user level. """
	def formatted_username(user)
		if user.admin?
			'<span style="color: #268BFF"><i class="fa fa-star"></i>&nbsp;'.html_safe + user.username.titleize + '</span>'.html_safe
		elsif user.trusted?
			'<span style="color: #268BFF"><i class="fa fa-star-half-o"></i></span>&nbsp;'.html_safe + user.username.titleize
		else
			user.username.titleize
		end
	end

end

