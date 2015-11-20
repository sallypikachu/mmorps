require "spec_helper"
# As a gamer
# I want to view my score for rock, paper, scissors
#
# Acceptance Criteria:
# [] I can see the players and wins of rock, paper, scissors


feature "user views players and choice of weapons" do
  scenario "view list of scores" do
    visit '/'
    expect(page).to have_content("Rock, Paper, Scissors")
    expect(page).to have_content("Player")
    expect(page).to have_content("Score")
    expect(page).to have_content("Choose Your Weapon:")

    expect(page).to have_no_content("You win!!!!!!")
    expect(page).to have_no_content("You lose!!!!!")
    expect(page).to have_no_content("Reset User Info")
  end
end
