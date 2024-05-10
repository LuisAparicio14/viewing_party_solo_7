require 'rails_helper'

RSpec.describe 'movies discover', type: :feature do
  before(:each) do
    @user_1 = User.create!(name: 'Tommy', email: 'tommy@email.com')
    @user_2 = User.create!(name: 'Sam', email: 'sam@email.com')

    visit register_user_path
  end

  #user story #1
  it "button to top rated movies, and field to search by movie tittle and search button" do
    #     As a user,
    # When I visit the '/users/:id/discover' path (where :id is the id of a valid user),
    visit user_discover_index_path(@user_1)
    # I should see
    expect(page).to have_button("Search for Top Rated Movies")
    # - a text field to enter keyword(s) to search by movie title
    expect(page).to have_field(:movie_field)
    # - a Button to Search by Movie Title
    expect(page).to have_button("Search Movies")
  end
end