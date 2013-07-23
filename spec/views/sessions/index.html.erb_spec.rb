require 'spec_helper'

describe "sessions/index" do
  before(:each) do
    assign(:sessions, [
      stub_model(Session,
        :title => "Title",
        :time_in_minutes => 1,
        :abstract => "MyText"
      ),
      stub_model(Session,
        :title => "Title",
        :time_in_minutes => 1,
        :abstract => "MyText"
      )
    ])
  end

  it "renders a list of sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
