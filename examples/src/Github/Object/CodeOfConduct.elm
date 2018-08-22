-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CodeOfConduct exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.CodeOfConduct
selection constructor =
    Object.selection constructor


{-| The body of the CoC
-}
body : Field (Maybe String) Github.Object.CodeOfConduct
body =
    Object.fieldDecoder "body" [] (Decode.string |> Decode.nullable)


{-| The key for the CoC
-}
key : Field String Github.Object.CodeOfConduct
key =
    Object.fieldDecoder "key" [] Decode.string


{-| The formal name of the CoC
-}
name : Field String Github.Object.CodeOfConduct
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The path to the CoC
-}
url : Field (Maybe Github.Scalar.Uri) Github.Object.CodeOfConduct
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)
