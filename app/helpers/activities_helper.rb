module ActivitiesHelper
    def activity_params
        params.require(:activity).permit(:title, :body, :tag_list)
      end      
end
