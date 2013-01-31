require 'spec_helper'

describe 'User pages' do
	# before { CREATE TEST USER HERE }
	subject { page }

	describe 'index page' do
		before { visit users_path }
		it { should have_content('Index') }
	end

	describe 'signup page' do
		before { visit new_user_path }
		it { should have_content('Sign Up')}
	end

	describe 'user profile' do
		before { visit user_path(1)}
		it { should have_content('Profile') }
	end

	describe 'edit user' do
		before { visit edit_user_path(1)}
		it { should have_content('Edit') }
	end
end