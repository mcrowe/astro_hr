require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "MyString",
      :vendor_id => 1,
      :description => "MyText",
      :price => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", course_path(@course), "post" do
      assert_select "input#course_name[name=?]", "course[name]"
      assert_select "input#course_vendor_id[name=?]", "course[vendor_id]"
      assert_select "textarea#course_description[name=?]", "course[description]"
      assert_select "input#course_price[name=?]", "course[price]"
      assert_select "input#course_location[name=?]", "course[location]"
    end
  end
end
