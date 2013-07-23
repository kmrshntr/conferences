require 'spec_helper'

describe "sessions/show" do
  before(:each) do
    @session = assign(:session, stub_model(Session,
      :title => "Title",
      :time_in_minutes => 1,
      :abstract => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
