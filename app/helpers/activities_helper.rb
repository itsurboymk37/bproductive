module ActivitiesHelper
    def activity_params
        params.require(:activity).permit(:title, :body)
      end      
end
