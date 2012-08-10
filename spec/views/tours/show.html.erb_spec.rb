require 'spec_helper'

describe "tours/show" do
  before(:each) do
    @tour = assign(:tour, stub_model(Tour,
      :user_id => 1,
      :additional_questions => "Additional Questions",
      :options => "MyText",
      :rating => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Additional Questions/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
