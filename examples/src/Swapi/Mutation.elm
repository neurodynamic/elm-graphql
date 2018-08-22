-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Mutation exposing (..)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Swapi.Enum.Phrase
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select fields to build up a top-level mutation. The request can be sent with
functions from `Graphql.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootMutation
selection constructor =
    Object.selection constructor


increment : Field Int RootMutation
increment =
    Object.fieldDecoder "increment" [] Decode.int


type alias SendMessageRequiredArguments =
    { characterId : Swapi.Scalar.Id, phrase : Swapi.Enum.Phrase.Phrase }


sendMessage : SendMessageRequiredArguments -> SelectionSet decodesTo Swapi.Object.ChatMessage -> Field (Maybe decodesTo) RootMutation
sendMessage requiredArgs object =
    Object.selectionField "sendMessage" [ Argument.required "characterId" requiredArgs.characterId (\(Swapi.Scalar.Id raw) -> Encode.string raw), Argument.required "phrase" requiredArgs.phrase (Encode.enum Swapi.Enum.Phrase.toString) ] object (identity >> Decode.nullable)
