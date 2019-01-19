class CoursesController < InheritedResources::Base

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  private

    def course_params
      params.require(:course).permit(:title, :description, :score_min, :start_date, :end_date)
    end
end

