require 'test_helper'

class DraftEventsControllerTest < ActionController::TestCase
  setup do
    @draft_event = draft_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:draft_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create draft_event" do
    assert_difference('DraftEvent.count') do
      post :create, draft_event: { destination_id: @draft_event.destination_id, due_date: @draft_event.due_date, event_id: @draft_event.event_id }
    end

    assert_redirected_to draft_event_path(assigns(:draft_event))
  end

  test "should show draft_event" do
    get :show, id: @draft_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @draft_event
    assert_response :success
  end

  test "should update draft_event" do
    patch :update, id: @draft_event, draft_event: { destination_id: @draft_event.destination_id, due_date: @draft_event.due_date, event_id: @draft_event.event_id }
    assert_redirected_to draft_event_path(assigns(:draft_event))
  end

  test "should destroy draft_event" do
    assert_difference('DraftEvent.count', -1) do
      delete :destroy, id: @draft_event
    end

    assert_redirected_to draft_events_path
  end
end
