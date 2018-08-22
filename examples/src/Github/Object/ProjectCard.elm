-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ProjectCard exposing (..)

import Github.Enum.ProjectCardState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ProjectCard
selection constructor =
    Object.selection constructor


{-| The project column this card is associated under. A card may only belong to one
project column at a time. The column field will be null if the card is created
in a pending state and has yet to be associated with a column. Once cards are
associated with a column, they will not become pending in the future.
-}
column : SelectionSet decodesTo Github.Object.ProjectColumn -> Field (Maybe decodesTo) Github.Object.ProjectCard
column object =
    Object.selectionField "column" [] object (identity >> Decode.nullable)


{-| The card content item
-}
content : SelectionSet decodesTo Github.Union.ProjectCardItem -> Field (Maybe decodesTo) Github.Object.ProjectCard
content object =
    Object.selectionField "content" [] object (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.ProjectCard
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| The actor who created this card
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.ProjectCard
creator object =
    Object.selectionField "creator" [] object (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.ProjectCard
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.ProjectCard
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The card note
-}
note : Field (Maybe String) Github.Object.ProjectCard
note =
    Object.fieldDecoder "note" [] (Decode.string |> Decode.nullable)


{-| The project that contains this card.
-}
project : SelectionSet decodesTo Github.Object.Project -> Field decodesTo Github.Object.ProjectCard
project object =
    Object.selectionField "project" [] object identity


{-| The column that contains this card.
-}
projectColumn : SelectionSet decodesTo Github.Object.ProjectColumn -> Field decodesTo Github.Object.ProjectCard
projectColumn object =
    Object.selectionField "projectColumn" [] object identity


{-| The HTTP path for this card
-}
resourcePath : Field Github.Scalar.Uri Github.Object.ProjectCard
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The state of ProjectCard
-}
state : Field (Maybe Github.Enum.ProjectCardState.ProjectCardState) Github.Object.ProjectCard
state =
    Object.fieldDecoder "state" [] (Github.Enum.ProjectCardState.decoder |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.ProjectCard
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this card
-}
url : Field Github.Scalar.Uri Github.Object.ProjectCard
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)
