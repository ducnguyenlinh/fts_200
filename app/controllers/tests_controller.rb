class TestsController < ApplicationController
  before_action :find_subject
  before_action :check_score, only: :create
  before_action :find_result, only: :show


  def new
    @course = @subject.course
    @test = @subject.tests.order("RANDOM()").first
    @questions = @test.questions
  end

  def create
    test =  Test.find_by id: params[:test][:test_id]
    if @score >= test.minimum_score
      @result = Result.create test_id: params[:test][:test_id], is_pass: true,
        score: @score
    else
      @result = Result.create test_id: params[:test][:test_id], is_pass: false,
        score: @score
    end
    redirect_to course_subject_test_path(@subject.course, @subject , @result.id)
  end

  def show; end

  private

  def find_subject
    @subject = Subject.find_by id: params[:subject_id]
  end

  def check_score
    @score = 0
    params[:questions].each do |key, value|
      answer = Answer.find_by id: value.to_i
      @score += 1 if answer.is_correct? == true
    end
    @score
  end

  def find_result
    @result = Result.find_by id: params[:id]
  end
end
