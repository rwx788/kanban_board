# frozen_string_literal: true

class TicketsController < ApplicationController
    helper_method :get_tickets_per_status

    def get_tickets_per_status(status)
        Ticket.where(status: status).all
    end

    def index; end

    def update_list
        # get new status parameter in case card was moved to another column
        status = Status.where(id: params[:status]).first
        Ticket.transaction do
            params[:tickets].each.with_index(1) do |id, index|
                Ticket.where(id: id).all.each do |ticket|
                    ticket.with_lock do
                        ticket.status = status
                        ticket.position = index
                        ticket.save
                    end
                end
            end
        end

        respond_to do |format|
            format.js
            format.html { render :partial => 'status_badge', locals: { :name => status.name, :count => get_tickets_per_status(status).count() } }
        end
    end

end
