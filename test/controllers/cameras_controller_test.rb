require 'test_helper'

class CamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camera = cameras(:one)
  end

  test "should get index" do
    get cameras_url
    assert_response :success
  end

  test "should get new" do
    get new_camera_url
    assert_response :success
  end

  test "should create camera" do
    assert_difference('Camera.count') do
      post cameras_url, params: { camera: { address: @camera.address, cameraman: @camera.cameraman, category: @camera.category, emil: @camera.emil, enddate: @camera.enddate, first_name: @camera.first_name, landmark: @camera.landmark, last_name: @camera.last_name, morf: @camera.morf, owner: @camera.owner, phone: @camera.phone, startdate: @camera.startdate } }
    end

    assert_redirected_to camera_url(Camera.last)
  end

  test "should show camera" do
    get camera_url(@camera)
    assert_response :success
  end

  test "should get edit" do
    get edit_camera_url(@camera)
    assert_response :success
  end

  test "should update camera" do
    patch camera_url(@camera), params: { camera: { address: @camera.address, cameraman: @camera.cameraman, category: @camera.category, emil: @camera.emil, enddate: @camera.enddate, first_name: @camera.first_name, landmark: @camera.landmark, last_name: @camera.last_name, morf: @camera.morf, owner: @camera.owner, phone: @camera.phone, startdate: @camera.startdate } }
    assert_redirected_to camera_url(@camera)
  end

  test "should destroy camera" do
    assert_difference('Camera.count', -1) do
      delete camera_url(@camera)
    end

    assert_redirected_to cameras_url
  end
end
