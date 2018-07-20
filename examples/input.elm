import Html exposing (Html, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String



main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model =
  { content : String
  }


model : Model
model =
  Model ""



-- UPDATE


type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }



-- VIEW

myStyle =
  style
    [ ("backgroundColor", "red")
    , ("height", "100px")
    , ("width", "200px")
    , ("margin-top", "30px")
    ]

view : Model -> Html Msg
view model =
  div []
    [ input  [ placeholder "Enter your text", onInput Change ] []
    , div [myStyle] [ text (model.content) ]
    ]