# -*- coding: utf-8 -*-
class TrainCoursesController < ApplicationController
  before_action :set_train_course, only: [:show, :edit, :update, :destroy]
  add_breadcrumb('培训课程管理', 'train_courses_path')

  # GET /train_courses
  # GET /train_courses.json
  def index
    @train_courses = TrainCourse.all
  end

  # GET /train_courses/1
  # GET /train_courses/1.json
  def show
    add_breadcrumb(@train_course.name)
  end

  # GET /train_courses/new
  def new
    add_breadcrumb('新增培训课程')
    @train_course = TrainCourse.new
  end

  # GET /train_courses/1/edit
  def edit
    add_breadcrumb(@train_course.name)
  end

  # POST /train_courses
  # POST /train_courses.json
  def create
    @train_course = TrainCourse.new(train_course_params)
    @train_course.register = current_user

    respond_to do |format|
      if @train_course.save
        format.html { redirect_to @train_course, notice: '培训课程创建成功' }
        format.json { render action: 'show', status: :created, location: @train_course }
      else
        format.html { render action: 'new' }
        format.json { render json: @train_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_courses/1
  # PATCH/PUT /train_courses/1.json
  def update
    respond_to do |format|
      if @train_course.update(train_course_params)
        format.html { redirect_to @train_course, notice: 'Train course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @train_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_courses/1
  # DELETE /train_courses/1.json
  def destroy
    @train_course.destroy
    respond_to do |format|
      format.html { redirect_to train_courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_course
      @train_course = TrainCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_course_params
      params.require(:train_course).permit(:name, :start_date, :hours, :points, :description, :organizer, :status, :register_id)
    end
end
