-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RepositoryInvitationRepository exposing (..)

import Github.Enum.RepositoryLockReason
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryInvitationRepository
selection constructor =
    Object.selection constructor


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.RepositoryInvitationRepository
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| The description of the repository.
-}
description : Field (Maybe String) Github.Object.RepositoryInvitationRepository
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The description of the repository rendered to HTML.
-}
descriptionHTML : Field Github.Scalar.Html Github.Object.RepositoryInvitationRepository
descriptionHTML =
    Object.fieldDecoder "descriptionHTML" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Html)


{-| Returns how many forks there are of this repository in the whole network.
-}
forkCount : Field Int Github.Object.RepositoryInvitationRepository
forkCount =
    Object.fieldDecoder "forkCount" [] Decode.int


{-| Indicates if the repository has issues feature enabled.
-}
hasIssuesEnabled : Field Bool Github.Object.RepositoryInvitationRepository
hasIssuesEnabled =
    Object.fieldDecoder "hasIssuesEnabled" [] Decode.bool


{-| Indicates if the repository has wiki feature enabled.
-}
hasWikiEnabled : Field Bool Github.Object.RepositoryInvitationRepository
hasWikiEnabled =
    Object.fieldDecoder "hasWikiEnabled" [] Decode.bool


{-| The repository's URL.
-}
homepageUrl : Field (Maybe Github.Scalar.Uri) Github.Object.RepositoryInvitationRepository
homepageUrl =
    Object.fieldDecoder "homepageUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| Indicates if the repository is unmaintained.
-}
isArchived : Field Bool Github.Object.RepositoryInvitationRepository
isArchived =
    Object.fieldDecoder "isArchived" [] Decode.bool


{-| Identifies if the repository is a fork.
-}
isFork : Field Bool Github.Object.RepositoryInvitationRepository
isFork =
    Object.fieldDecoder "isFork" [] Decode.bool


{-| Indicates if the repository has been locked or not.
-}
isLocked : Field Bool Github.Object.RepositoryInvitationRepository
isLocked =
    Object.fieldDecoder "isLocked" [] Decode.bool


{-| Identifies if the repository is a mirror.
-}
isMirror : Field Bool Github.Object.RepositoryInvitationRepository
isMirror =
    Object.fieldDecoder "isMirror" [] Decode.bool


{-| Identifies if the repository is private.
-}
isPrivate : Field Bool Github.Object.RepositoryInvitationRepository
isPrivate =
    Object.fieldDecoder "isPrivate" [] Decode.bool


{-| The license associated with the repository
-}
license : Field (Maybe String) Github.Object.RepositoryInvitationRepository
license =
    Object.fieldDecoder "license" [] (Decode.string |> Decode.nullable)


{-| The license associated with the repository
-}
licenseInfo : SelectionSet decodesTo Github.Object.License -> Field (Maybe decodesTo) Github.Object.RepositoryInvitationRepository
licenseInfo object =
    Object.selectionField "licenseInfo" [] object (identity >> Decode.nullable)


{-| The reason the repository has been locked.
-}
lockReason : Field (Maybe Github.Enum.RepositoryLockReason.RepositoryLockReason) Github.Object.RepositoryInvitationRepository
lockReason =
    Object.fieldDecoder "lockReason" [] (Github.Enum.RepositoryLockReason.decoder |> Decode.nullable)


{-| The repository's original mirror URL.
-}
mirrorUrl : Field (Maybe Github.Scalar.Uri) Github.Object.RepositoryInvitationRepository
mirrorUrl =
    Object.fieldDecoder "mirrorUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| The name of the repository.
-}
name : Field String Github.Object.RepositoryInvitationRepository
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The repository's name with owner.
-}
nameWithOwner : Field String Github.Object.RepositoryInvitationRepository
nameWithOwner =
    Object.fieldDecoder "nameWithOwner" [] Decode.string


{-| The owner of the repository associated with this invitation repository.
-}
owner : SelectionSet decodesTo Github.Interface.RepositoryOwner -> Field decodesTo Github.Object.RepositoryInvitationRepository
owner object =
    Object.selectionField "owner" [] object identity


{-| Identifies when the repository was last pushed to.
-}
pushedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.RepositoryInvitationRepository
pushedAt =
    Object.fieldDecoder "pushedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| The HTTP path for this repository
-}
resourcePath : Field Github.Scalar.Uri Github.Object.RepositoryInvitationRepository
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


type alias ShortDescriptionHTMLOptionalArguments =
    { limit : OptionalArgument Int }


{-| A description of the repository, rendered to HTML without any links in it.

  - limit - How many characters to return.

-}
shortDescriptionHTML : (ShortDescriptionHTMLOptionalArguments -> ShortDescriptionHTMLOptionalArguments) -> Field Github.Scalar.Html Github.Object.RepositoryInvitationRepository
shortDescriptionHTML fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { limit = Absent }

        optionalArgs =
            [ Argument.optional "limit" filledInOptionals.limit Encode.int ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "shortDescriptionHTML" optionalArgs (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Html)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.RepositoryInvitationRepository
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this repository
-}
url : Field Github.Scalar.Uri Github.Object.RepositoryInvitationRepository
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)
