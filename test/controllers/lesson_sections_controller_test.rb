require 'test_helper'

class LessonSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_section = lesson_sections(:one)
  end

  test "should get index" do
    get lesson_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_section_url
    assert_response :success
  end

  test "should create lesson_section" do
    assert_difference('LessonSection.count') do
      post lesson_sections_url, params: { lesson_section: { content: @lesson_section.content, course_id: @lesson_section.course_id, name: @lesson_section.name } }
    end

    assert_redirected_to lesson_section_url(LessonSection.last)
  end

  test "should show lesson_section" do
    get lesson_section_url(@lesson_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_section_url(@lesson_section)
    assert_response :success
  end

  test "should update lesson_section" do
    patch lesson_section_url(@lesson_section), params: { lesson_section: { content: @lesson_section.content, course_id: @lesson_section.course_id, name: @lesson_section.name } }
    assert_redirected_to lesson_section_url(@lesson_section)
  end

  test "should destroy lesson_section" do
    assert_difference('LessonSection.count', -1) do
      delete lesson_section_url(@lesson_section)
    end

    assert_redirected_to lesson_sections_url
  end
end
