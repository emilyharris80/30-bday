class ReplysController

    def new
        @reply = Reply.new(params[:fname], params[:reply])
        
    end

    def index
        @replies = Reply.all
    end

  
end