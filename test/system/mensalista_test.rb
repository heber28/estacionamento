require "application_system_test_case"

class MensalistaTest < ApplicationSystemTestCase
  setup do
    @mensalistum = mensalista(:one)
  end

  test "visiting the index" do
    visit mensalista_url
    assert_selector "h1", text: "Mensalista"
  end

  test "creating a Mensalistum" do
    visit mensalista_url
    click_on "New Mensalistum"

    fill_in "Nome", with: @mensalistum.nome
    fill_in "Telefone", with: @mensalistum.telefone
    click_on "Create Mensalistum"

    assert_text "Mensalistum was successfully created"
    click_on "Back"
  end

  test "updating a Mensalistum" do
    visit mensalista_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @mensalistum.nome
    fill_in "Telefone", with: @mensalistum.telefone
    click_on "Update Mensalistum"

    assert_text "Mensalistum was successfully updated"
    click_on "Back"
  end

  test "destroying a Mensalistum" do
    visit mensalista_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mensalistum was successfully destroyed"
  end
end
