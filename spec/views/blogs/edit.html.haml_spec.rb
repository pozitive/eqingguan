require 'spec_helper'

describe "blogs/edit" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :name => "MyString",
      :summary => "MyString",
      :keyword => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do
      assert_select "input#blog_name[name=?]", "blog[name]"
      assert_select "input#blog_summary[name=?]", "blog[summary]"
      assert_select "input#blog_keyword[name=?]", "blog[keyword]"
      assert_select "textarea#blog_content[name=?]", "blog[content]"
    end
  end
end
