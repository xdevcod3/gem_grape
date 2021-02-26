require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Age", with: @post.age
    fill_in "Bio", with: @post.bio
    fill_in "Datec", with: @post.dateC
    fill_in "Datef", with: @post.dateF
    fill_in "Daten", with: @post.dateN
    fill_in "Enfants", with: @post.enfants
    fill_in "Epouse", with: @post.epouse
    fill_in "Expp", with: @post.expP
    fill_in "Expresident", with: @post.expresident
    fill_in "Nationalite", with: @post.nationalite
    fill_in "Nom", with: @post.nom
    fill_in "Partie", with: @post.partie
    fill_in "Password", with: @post.password
    fill_in "Prenom", with: @post.prenom
    fill_in "Sexe", with: @post.sexe
    fill_in "Username", with: @post.username
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Age", with: @post.age
    fill_in "Bio", with: @post.bio
    fill_in "Datec", with: @post.dateC
    fill_in "Datef", with: @post.dateF
    fill_in "Daten", with: @post.dateN
    fill_in "Enfants", with: @post.enfants
    fill_in "Epouse", with: @post.epouse
    fill_in "Expp", with: @post.expP
    fill_in "Expresident", with: @post.expresident
    fill_in "Nationalite", with: @post.nationalite
    fill_in "Nom", with: @post.nom
    fill_in "Partie", with: @post.partie
    fill_in "Password", with: @post.password
    fill_in "Prenom", with: @post.prenom
    fill_in "Sexe", with: @post.sexe
    fill_in "Username", with: @post.username
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
