-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReviewDismissedEvent exposing (..)

import Github.Enum.PullRequestReviewState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewDismissedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.ReviewDismissedEvent
actor object =
    Object.selectionField "actor" [] object (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.ReviewDismissedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.ReviewDismissedEvent
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.ReviewDismissedEvent
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| Identifies the message associated with the 'review_dismissed' event.
-}
message : Field String Github.Object.ReviewDismissedEvent
message =
    Object.fieldDecoder "message" [] Decode.string


{-| The message associated with the event, rendered to HTML.
-}
messageHtml : Field Github.Scalar.Html Github.Object.ReviewDismissedEvent
messageHtml =
    Object.fieldDecoder "messageHtml" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Html)


{-| Identifies the previous state of the review with the 'review_dismissed' event.
-}
previousReviewState : Field Github.Enum.PullRequestReviewState.PullRequestReviewState Github.Object.ReviewDismissedEvent
previousReviewState =
    Object.fieldDecoder "previousReviewState" [] Github.Enum.PullRequestReviewState.decoder


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.ReviewDismissedEvent
pullRequest object =
    Object.selectionField "pullRequest" [] object identity


{-| Identifies the commit which caused the review to become stale.
-}
pullRequestCommit : SelectionSet decodesTo Github.Object.PullRequestCommit -> Field (Maybe decodesTo) Github.Object.ReviewDismissedEvent
pullRequestCommit object =
    Object.selectionField "pullRequestCommit" [] object (identity >> Decode.nullable)


{-| The HTTP path for this review dismissed event.
-}
resourcePath : Field Github.Scalar.Uri Github.Object.ReviewDismissedEvent
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| Identifies the review associated with the 'review_dismissed' event.
-}
review : SelectionSet decodesTo Github.Object.PullRequestReview -> Field (Maybe decodesTo) Github.Object.ReviewDismissedEvent
review object =
    Object.selectionField "review" [] object (identity >> Decode.nullable)


{-| The HTTP URL for this review dismissed event.
-}
url : Field Github.Scalar.Uri Github.Object.ReviewDismissedEvent
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)
