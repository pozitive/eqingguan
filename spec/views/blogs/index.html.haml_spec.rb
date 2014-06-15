require 'spec_helper'

describe "blogs/index" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :name => "Name",
        :summary => "Summary",
        :keyword => "Keyword",
        :content => "MyText"
      ),
      stub_model(Blog,
        :name => "Name",
        :summary => "Summary",
        :keyword => "Keyword",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "Keyword".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
