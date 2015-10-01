class VotersController < ApplicationController

  def index
    @voters = Voter.all
  end

  def show
    @voter = Voter.find(params[:id])
  end

  def new
    @voter = Voter.new
  end

  def edit
    @voter = Voter.find(params[:id])
  end

  def create
    @voters = Voter.all
    @voter = Voter.create(voter_params)
  end

  def update
    @voters = Voter.all
    @voter = Voter.find(params[:id])
    @voter.update_attributes(voter_params)
  end

  def delete
    @voter = Voter.find(params[:voter_id])
  end

  def destroy
    @voters = Voter.all
    @voter = Voter.find(params[:id])
    @voter.destroy
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def voter_params
      params.require(:voter).permit(:first_name, :last_name, :address, :city, :state, :zip)
    end
end
