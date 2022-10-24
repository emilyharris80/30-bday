class ReplysController

    def new
        @reply = Reply.new(param[:fname], param[:reply])
        CSV.open("/Users/emily.harris/personal/30-bday/emily_is_30/db/csv/attendees.csv", "ab") do |csv|
            csv << [param[:fname], param[:reply]]
        end
    end

    def index
        @replies = Reply.all
    end

  
end