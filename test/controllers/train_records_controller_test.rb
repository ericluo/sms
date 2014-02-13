require 'test_helper'

class TrainRecordsControllerTest < ActionController::TestCase
  setup do
    @train_record = train_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_record" do
    assert_difference('TrainRecord.count') do
      post :create, train_record: { train_course_id: @train_record.train_course_id, user_id: @train_record.user_id }
    end

    assert_redirected_to train_record_path(assigns(:train_record))
  end

  test "should show train_record" do
    get :show, id: @train_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_record
    assert_response :success
  end

  test "should update train_record" do
    patch :update, id: @train_record, train_record: { train_course_id: @train_record.train_course_id, user_id: @train_record.user_id }
    assert_redirected_to train_record_path(assigns(:train_record))
  end

  test "should destroy train_record" do
    assert_difference('TrainRecord.count', -1) do
      delete :destroy, id: @train_record
    end

    assert_redirected_to train_records_path
  end
end
