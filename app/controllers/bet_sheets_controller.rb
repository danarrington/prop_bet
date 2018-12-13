class BetSheetsController < ApplicationController

  def new
    @sheet = BetSheet.new
    @questions = Question.all
  end

  def create
    @sheet = BetSheet.new
    @sheet.name = params[:bet_sheet][:name]
    params[:questions].first.values.each do |answer_id|
      @sheet.picks << Pick.new(answer_id: answer_id)
    end
    @sheet.save

  end

  def index
    @sheets = BetSheet.all

  end

  def show
    @sheet = BetSheet.find(params[:id])
  end

  private 
  def sheet_params
    params.requi
  end
end

