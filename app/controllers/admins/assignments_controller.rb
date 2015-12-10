class Admins::AssignmentsController < ApplicationController
  before_action :fetch_assignment, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.collection_id = params[:collection_id]

    if @assignment.save
      redirect_to admins_collection_path(params[:collection_id])
      flash[:notice] = 'Vraag & Antwoord succesvol aangemaakt'
    else
      render 'new'
      @assignment.errors.messages.each do |c|
        flash[:alert] = c[1].first
      end
    end
  end

  def edit

  end

  private

  def assignment_params
    params.require(:assignment).permit(:question, :answer)
  end

  def fetch_assignment
    @assignment = Assignment.find(params[:id])
  end
end
