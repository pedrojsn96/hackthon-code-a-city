require "application_system_test_case"

class LessonSectionsTest < ApplicationSystemTestCase
  setup do
    @lesson_section = lesson_sections(:one)
  end

  test "visiting the index" do
    visit lesson_sections_url
    assert_selector "h1", text: "Lesson Sections"
  end

  test "creating a Lesson section" do
    visit lesson_sections_url
    click_on "New Lesson Section"

    fill_in "Content", with: @lesson_section.content
    fill_in "Course", with: @lesson_section.course_id
    fill_in "Name", with: @lesson_section.name
    click_on "Create Lesson section"

    assert_text "Lesson section was successfully created"
    click_on "Back"
  end

  test "updating a Lesson section" do
    visit lesson_sections_url
    click_on "Edit", match: :first

    fill_in "Content", with: @lesson_section.content
    fill_in "Course", with: @lesson_section.course_id
    fill_in "Name", with: @lesson_section.name
    click_on "Update Lesson section"

    assert_text "Lesson section was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson section" do
    visit lesson_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson section was successfully destroyed"
  end
end
