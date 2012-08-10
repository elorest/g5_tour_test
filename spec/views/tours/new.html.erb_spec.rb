require 'spec_helper'

describe "tours/new" do
  before(:each) do
    assign(:tour, stub_model(Tour,
      :user_id => 1,
      :additional_questions => "MyString",
      :options => "MyText",
      :rating => 1
    ).as_new_record)
  end

  it "renders new tour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tours_path, :method => "post" do
      assert_select "input#tour_user_id", :name => "tour[user_id]"
      assert_select "input#tour_additional_questions", :name => "tour[additional_questions]"
      assert_select "textarea#tour_options", :name => "tour[options]"
      assert_select "input#tour_rating", :name => "tour[rating]"
    end
  end
end
