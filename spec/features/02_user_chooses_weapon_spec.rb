require "spec_helper"
# As a gamer
# I want to pick my weapon
#
# Acceptance Criteria:
# [] I can pick my weapon of choice: rock, paper, scissors


feature "pick choice of weapons" do
  scenario "player picks rock" do
    visit '/'
    choose "rock"
    click_button "Submit"
    expect(page).to have_content("Rock, Paper, Scissors")
    expect(page).to have_content("Player")
    expect(page).to have_content("Score")
    expect(page).to have_content("Choose Your Weapon:")
    expect(page).to have_content("Player chose rock")

    expect(page).to have_no_content("You win!!!!!!")
    expect(page).to have_no_content("You lose!!!!!")
    expect(page).to have_no_content("Reset User Info")
  end

  scenario "player picks rock" do
    visit '/'
    choose "scissor"
    click_button "Submit"
    expect(page).to have_content("Rock, Paper, Scissors")
    expect(page).to have_content("Player")
    expect(page).to have_content("Score")
    expect(page).to have_content("Choose Your Weapon:")
    expect(page).to have_content("Player chose scissor")

    expect(page).to have_no_content("You win!!!!!!")
    expect(page).to have_no_content("You lose!!!!!")
    expect(page).to have_no_content("Reset User Info")
  end
end
