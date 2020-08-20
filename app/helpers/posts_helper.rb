module PostsHelper
    def posting_params
        params.require(:post).permit(:title, :body)
    end
end
