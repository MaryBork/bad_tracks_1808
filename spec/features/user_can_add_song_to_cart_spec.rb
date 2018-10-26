require 'rails_helper'

RSpec.describe "When a user adds a song" do
  it "they are redirected to a page with a confirmation message" do
    artist = Artist.create(name: 'Sia')
    song = artist.songs.create(title: 'Chandelier', length: 55, play_count: 30)

    visit songs_path

    click_link "Add to Cart"


    expect(page).to have_content("#{@song.title} has been added to your cart.")
  end

end
