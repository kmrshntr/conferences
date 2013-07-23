require 'spec_helper'

describe "conferences/index" do
  before(:each) do
    assign(:conferences, [
      stub_model(Conference,
        :title => "Title",
        :place => "Place"
      ),
      stub_model(Conference,
        :title => "Title",
        :place => "Place"
      )
    ])
  end

  it "renders a list of conferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
