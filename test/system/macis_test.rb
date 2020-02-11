require "application_system_test_case"

class MacisTest < ApplicationSystemTestCase
  setup do
    @maci = macis(:one)
  end

  test "visiting the index" do
    visit macis_url
    assert_selector "h1", text: "Macis"
  end

  test "creating a Maci" do
    visit macis_url
    click_on "New Maci"

    fill_in "Maci name", with: @maci.maci_name
    fill_in "Maci training", with: @maci.maci_training
    fill_in "Off freq", with: @maci.off_freq
    fill_in "On freq", with: @maci.on_freq
    check "Out of order" if @maci.out_of_order
    fill_in "Plug number", with: @maci.plug_number
    fill_in "Remote number", with: @maci.remote_number
    click_on "Create Maci"

    assert_text "Maci was successfully created"
    click_on "Back"
  end

  test "updating a Maci" do
    visit macis_url
    click_on "Edit", match: :first

    fill_in "Maci name", with: @maci.maci_name
    fill_in "Maci training", with: @maci.maci_training
    fill_in "Off freq", with: @maci.off_freq
    fill_in "On freq", with: @maci.on_freq
    check "Out of order" if @maci.out_of_order
    fill_in "Plug number", with: @maci.plug_number
    fill_in "Remote number", with: @maci.remote_number
    click_on "Update Maci"

    assert_text "Maci was successfully updated"
    click_on "Back"
  end

  test "destroying a Maci" do
    visit macis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maci was successfully destroyed"
  end
end
