class TeacherController < ApplicationController
  def new
    @teacher = TeacherSection.new
  end

  def create
    @teacher = TeacherSection.new(teacher_params)

    if @teacher.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
    def teacher_params
    params.require(:teacher_section).permit(:name,:school_id)
  end


end
