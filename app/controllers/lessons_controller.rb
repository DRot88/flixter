class LessonsController < ApplicationController
   before_action :authenticate_user!
   before_action :require_enrollment_for_current_lessons, :only => [:show]

def show
end

private

def require_enrollment_for_current_lessons
  this_course = current_lesson.section.course

  if current_user.enrolled_in?(this_course) != true
    redirect_to course_path(this_course), alert: 'Please enroll to access lessons'
  end
end

helper_method :current_lesson
def current_lesson
  @current_lesson ||= Lesson.find(params[:id])
end 

end
