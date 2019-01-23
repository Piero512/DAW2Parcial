require "application_system_test_case"

class AssigmentsTest < ApplicationSystemTestCase
  setup do
    @assignment = assigments(:one)
  end

  test "visiting the index" do
    visit assignments_url
    assert_selector "h1", text: "Assigments"
  end

  test "creating a Assigment" do
    visit assignments_url
    click_on "New Assigment"

    fill_in "Member", with: @assignment.member_id
    fill_in "Task", with: @assignment.task_id
    click_on "Create Assigment"

    assert_text "Assigment was successfully created"
    click_on "Back"
  end

  test "updating a Assigment" do
    visit assignments_url
    click_on "Edit", match: :first

    fill_in "Member", with: @assignment.member_id
    fill_in "Task", with: @assignment.task_id
    click_on "Update Assigment"

    assert_text "Assigment was successfully updated"
    click_on "Back"
  end

  test "destroying a Assigment" do
    visit assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assigment was successfully destroyed"
  end
end
