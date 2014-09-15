class TestController < ApplicationController

  def index
    @schools = SchoolSection.all
  end

  def new
    @school = SchoolSection.new
  end

  def create
    @school = SchoolSection.new(school_params)

    if @school.save
      render 'show'
    else
      redirect_to root_path
    end

  end

  def show
    @school = SchoolSection.find(params[:id])
    redirect_to test_path
  end

private
    def school_params
    params.require(:school_section).permit(:name,:phone,:email,:address,:status )
  end

end
