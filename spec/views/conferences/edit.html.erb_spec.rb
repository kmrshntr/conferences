require 'spec_helper'

describe "conferences/edit" do
  before(:each) do
    @conference = assign(:conference, stub_model(Conference,
      :title => "MyString",
      :place => "MyString"
    ))
  end

  it "renders the edit conference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conference_path(@conference), "post" do
      assert_select "input#conference_title[name=?]", "conference[title]"
      assert_select "input#conference_place[name=?]", "conference[place]"
    end
  end
end
