require 'spec_helper'

describe "conferences/new" do
  before(:each) do
    assign(:conference, stub_model(Conference,
      :title => "MyString",
      :place => "MyString"
    ).as_new_record)
  end

  it "renders new conference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conferences_path, "post" do
      assert_select "input#conference_title[name=?]", "conference[title]"
      assert_select "input#conference_place[name=?]", "conference[place]"
    end
  end
end
