class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    
    def show
        @tag = Tag.find(params[:id])
        @tags = Tag.all
    end      
end
#what I want to do:
#homepage should be a list of the tags, which you can then click on and expand to see the activities (and click again to hide them)
    #eventually, want it to show like the top four for that tag, and then when you click on the tag it takes you to a list of all articles
#center tags under the title (when you click on an individual article)