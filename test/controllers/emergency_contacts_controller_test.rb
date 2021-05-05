require "test_helper"

class EmergencyContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "should get index" do
    get emergency_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_emergency_contact_url
    assert_response :success
  end

  test "should create emergency_contact" do
    assert_difference('EmergencyContact.count') do
      post emergency_contacts_url, params: { emergency_contact: { email: @emergency_contact.email, name: @emergency_contact.name, phone1: @emergency_contact.phone1, phone2: @emergency_contact.phone2, profile_id: @emergency_contact.profile_id } }
    end

    assert_redirected_to emergency_contact_url(EmergencyContact.last)
  end

  test "should show emergency_contact" do
    get emergency_contact_url(@emergency_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_emergency_contact_url(@emergency_contact)
    assert_response :success
  end

  test "should update emergency_contact" do
    patch emergency_contact_url(@emergency_contact), params: { emergency_contact: { email: @emergency_contact.email, name: @emergency_contact.name, phone1: @emergency_contact.phone1, phone2: @emergency_contact.phone2, profile_id: @emergency_contact.profile_id } }
    assert_redirected_to emergency_contact_url(@emergency_contact)
  end

  test "should destroy emergency_contact" do
    assert_difference('EmergencyContact.count', -1) do
      delete emergency_contact_url(@emergency_contact)
    end

    assert_redirected_to emergency_contacts_url
  end
end
