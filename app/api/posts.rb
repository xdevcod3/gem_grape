module Posts
    class Posts < Grape::API
        version "v1", using: :path
        format :json

        resources :president do

            before do
                header "Access-Control-Allow-Origin", "*"
            end

            desc "get all post"
            get do
                posts = Post.all
            end

            desc "get one post"
            params do
                requires :id , type: Integer
            end
            get ":id" do
                Post.find(params[:id])
            end 
        end
    end
end