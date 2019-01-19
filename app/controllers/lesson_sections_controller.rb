class LessonSectionsController < ApplicationController
  before_action :set_lesson_section, only: [:show, :edit, :update, :destroy]

  # GET /lesson_sections
  # GET /lesson_sections.json
  def index
    @lesson_sections = LessonSection.all
  end

  # GET /lesson_sections/1
  # GET /lesson_sections/1.json
  def show
  end

  # GET /lesson_sections/new
  def new
    @lesson_section = LessonSection.new
  end

  # GET /lesson_sections/1/edit
  def edit
  end

  # POST /lesson_sections
  # POST /lesson_sections.json
  def create
    @lesson_section = LessonSection.new(lesson_section_params)

    respond_to do |format|
      if @lesson_section.save
        format.html { redirect_to @lesson_section, notice: 'Lesson section was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_section }
      else
        format.html { render :new }
        format.json { render json: @lesson_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_sections/1
  # PATCH/PUT /lesson_sections/1.json
  def update
    respond_to do |format|
      if @lesson_section.update(lesson_section_params)
        format.html { redirect_to @lesson_section, notice: 'Lesson section was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_section }
      else
        format.html { render :edit }
        format.json { render json: @lesson_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_sections/1
  # DELETE /lesson_sections/1.json
  def destroy
    @lesson_section.destroy
    respond_to do |format|
      format.html { redirect_to lesson_sections_url, notice: 'Lesson section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_section
      @lesson_section = LessonSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_section_params
      params.require(:lesson_section).permit(:name, :content, :course_id)
    end
end
