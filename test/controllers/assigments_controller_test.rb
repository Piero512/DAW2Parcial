require 'test_helper'

class AssigmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment = assigments(:one)
  end

  test "should get index" do
    get assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_assignment_url
    assert_response :success
  end

  test "should create assigment" do
    assert_difference('Assigment.count') do
      post assignments_url, params: {assignment: {member_id: @assignment.member_id, task_id: @assignment.task_id } }
    end

    assert_redirected_to assignment_url(Assignment.last)
  end

  test "should show assigment" do
    get assignment_url(@assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignment_url(@assignment)
    assert_response :success
  end

  test "should update assigment" do
    patch assignment_url(@assignment), params: {assignment: {member_id: @assignment.member_id, task_id: @assignment.task_id } }
    assert_redirected_to assignment_url(@assignment)
  end

  test "should destroy assigment" do
    assert_difference('Assigment.count', -1) do
      delete assignment_url(@assignment)
    end

    assert_redirected_to assignments_url
  end
end
