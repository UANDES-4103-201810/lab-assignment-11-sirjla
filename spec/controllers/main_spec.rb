require 'rails_helper'
RSpec.feature 'index' do
	scenario 'loading index page' do
		# 1. go to root
		visit '/'
		# 2. Then we should see HELLO! message page
		expect(page).to have_content('Hello')
	end
end