require 'test_helper'

class TrainCoursesControllerTest < ActionController::TestCase
  setup do
    @train_course = train_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_course" do
    assert_difference('TrainCourse.count') do
      post :create, train_course: { description: @train_course.description, hours: @train_course.hours, name: @train_course.name, organizer: @train_course.organizer, register_id: @train_course.register_id, start_date: @train_course.start_date, status: @train_course.status }
    end

    assert_redirected_to train_course_path(assigns(:train_course))
  end

  test "should show train_course" do
    get :show, id: @train_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_course
    assert_response :success
  end

  test "should update train_course" do
    patch :update, id: @train_course, train_course: { description: @train_course.description, hours: @train_course.hours, name: @train_course.name, organizer: @train_course.organizer, register_id: @train_course.register_id, start_date: @train_course.start_date, status: @train_course.status }
    assert_redirected_to train_course_path(assigns(:train_course))
  end

  test "should destroy train_course" do
    assert_difference('TrainCourse.count', -1) do
      delete :destroy, id: @train_course
    end

    assert_redirected_to train_courses_path
  end
end
