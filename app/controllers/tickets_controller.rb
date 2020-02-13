# frozen_string_literal: true

class TicketsController < ApplicationController
    helper_method :get_tickets_per_status

    def get_tickets_per_status(status)
        Ticket.where(status: status).all
    end

    def index; end

    def sort
        Ticket.transaction do
            params[:ticket].each.with_index(1) do |id, index|
                Ticket.where(id: id).all.each do |ticket|
                    ticket.position = index
                    ticket.save
                end
            end
        end

        head :ok
    end
end
