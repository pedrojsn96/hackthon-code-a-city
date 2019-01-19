class CoursesController < InheritedResources::Base

  private

    def course_params
      params.require(:course).permit(:title, :description, :score_min, :start_date, :end_date)
    end
end

