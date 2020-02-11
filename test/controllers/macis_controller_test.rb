require 'test_helper'

class MacisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maci = macis(:one)
  end

  test "should get index" do
    get macis_url
    assert_response :success
  end

  test "should get new" do
    get new_maci_url
    assert_response :success
  end

  test "should create maci" do
    assert_difference('Maci.count') do
      post macis_url, params: { maci: { maci_name: @maci.maci_name, maci_training: @maci.maci_training, off_freq: @maci.off_freq, on_freq: @maci.on_freq, out_of_order: @maci.out_of_order, plug_number: @maci.plug_number, remote_number: @maci.remote_number } }
    end

    assert_redirected_to maci_url(Maci.last)
  end

  test "should show maci" do
    get maci_url(@maci)
    assert_response :success
  end

  test "should get edit" do
    get edit_maci_url(@maci)
    assert_response :success
  end

  test "should update maci" do
    patch maci_url(@maci), params: { maci: { maci_name: @maci.maci_name, maci_training: @maci.maci_training, off_freq: @maci.off_freq, on_freq: @maci.on_freq, out_of_order: @maci.out_of_order, plug_number: @maci.plug_number, remote_number: @maci.remote_number } }
    assert_redirected_to maci_url(@maci)
  end

  test "should destroy maci" do
    assert_difference('Maci.count', -1) do
      delete maci_url(@maci)
    end

    assert_redirected_to macis_url
  end
end
