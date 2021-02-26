json.extract! post, :id, :username, :password, :nom, :prenom, :nationalite, :dateN, :epouse, :enfants, :expresident, :bio, :partie, :sexe, :dateF, :dateC, :age, :expP, :created_at, :updated_at
json.url post_url(post, format: :json)
