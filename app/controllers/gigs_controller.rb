class GigsController < ApplicationController
    skip_before_action :authorized, only: [:create, :show]
    
    def create
        gig = Gig.create!(gig_params)
        Mailer.gig_email(gig, Admin.last).deliver_now
        render json: gig
    end

    def index
        gigs = Gig.select{|gig| gig.status == "requested"}
        render json: gigs
    end

    def show
        gigs = Gig.select{|gig| gig.public == true && gig.status == "accepted"}
        render json: gigs
    end

    def update
        gig = Gig.find_by(id: params[:id])
        gig.update(:status => params[:status])
        render json: gig.reload
    end

    private
    def gig_params
        params.require(:gig).permit(:admin_id, :client_name, :client_email, :client_phone, :date, :start_time, :end_time, :location, :description, :public, :rep, :status)
    end

end
