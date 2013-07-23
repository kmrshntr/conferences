require 'spec_helper'

describe "sessions/edit" do
  before(:each) do
    @session = assign(:session, stub_model(Session,
      :title => "MyString",
      :time_in_minutes => 1,
      :abstract => "MyText"
    ))
  end

  it "renders the edit session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", session_path(@session), "post" do
      assert_select "input#session_title[name=?]", "session[title]"
      assert_select "input#session_time_in_minutes[name=?]", "session[time_in_minutes]"
      assert_select "textarea#session_abstract[name=?]", "session[abstract]"
    end
  end
end
