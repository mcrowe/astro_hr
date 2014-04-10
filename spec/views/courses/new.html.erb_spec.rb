require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyString",
      :vendor_id => 1,
      :description => "MyText",
      :price => 1,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", courses_path, "post" do
      assert_select "input#course_name[name=?]", "course[name]"
      assert_select "input#course_vendor_id[name=?]", "course[vendor_id]"
      assert_select "textarea#course_description[name=?]", "course[description]"
      assert_select "input#course_price[name=?]", "course[price]"
      assert_select "input#course_location[name=?]", "course[location]"
    end
  end
end
