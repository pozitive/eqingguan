require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "input#message_name[name=?]", "message[name]"
      assert_select "input#message_email[name=?]", "message[email]"
      assert_select "input#message_phone[name=?]", "message[phone]"
      assert_select "textarea#message_note[name=?]", "message[note]"
    end
  end
end
