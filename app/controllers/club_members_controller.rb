class ClubMembersController < ApplicationController
  before_action :set_club_member, only: [:show, :edit, :update, :destroy]

  # GET /club_members
  # GET /club_members.json
  def index
    @club_members = ClubMember.all
  end

  # GET /club_members/1
  # GET /club_members/1.json
  def show
  end

  # GET /club_members/new
  def new
    @club_member = ClubMember.new
  end

  # GET /club_members/1/edit
  def edit
  end

  # POST /club_members
  # POST /club_members.json
  def create
    @club_member = ClubMember.new(club_member_params)

    respond_to do |format|
      if @club_member.save
        format.html { redirect_to @club_member, notice: 'Club member was successfully created.' }
        format.json { render :show, status: :created, location: @club_member }
      else
        format.html { render :new }
        format.json { render json: @club_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_members/1
  # PATCH/PUT /club_members/1.json
  def update
    respond_to do |format|
      if @club_member.update(club_member_params)
        format.html { redirect_to @club_member, notice: 'Club member was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_member }
      else
        format.html { render :edit }
        format.json { render json: @club_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_members/1
  # DELETE /club_members/1.json
  def destroy
    @club_member.destroy
    respond_to do |format|
      format.html { redirect_to club_members_url, notice: 'Club member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_member
      @club_member = ClubMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_member_params
      params.require(:club_member).permit(:ClubId, :UserId, :IsAdmin)
    end

  public
    def get_club_member_params
      club_member_params
    end
end
