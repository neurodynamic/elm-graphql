-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.Node exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Node
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Node) -> SelectionSet (a -> constructor) Github.Interface.Node
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onAddedToProjectEvent : SelectionSet decodesTo Github.Object.AddedToProjectEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onAddedToProjectEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AddedToProjectEvent" fields decoder


onAssignedEvent : SelectionSet decodesTo Github.Object.AssignedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onAssignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AssignedEvent" fields decoder


onBaseRefChangedEvent : SelectionSet decodesTo Github.Object.BaseRefChangedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onBaseRefChangedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "BaseRefChangedEvent" fields decoder


onBaseRefForcePushedEvent : SelectionSet decodesTo Github.Object.BaseRefForcePushedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onBaseRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "BaseRefForcePushedEvent" fields decoder


onBlob : SelectionSet decodesTo Github.Object.Blob -> FragmentSelectionSet decodesTo Github.Interface.Node
onBlob (SelectionSet fields decoder) =
    FragmentSelectionSet "Blob" fields decoder


onBot : SelectionSet decodesTo Github.Object.Bot -> FragmentSelectionSet decodesTo Github.Interface.Node
onBot (SelectionSet fields decoder) =
    FragmentSelectionSet "Bot" fields decoder


onClosedEvent : SelectionSet decodesTo Github.Object.ClosedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onClosedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ClosedEvent" fields decoder


onCommentDeletedEvent : SelectionSet decodesTo Github.Object.CommentDeletedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onCommentDeletedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CommentDeletedEvent" fields decoder


onCommit : SelectionSet decodesTo Github.Object.Commit -> FragmentSelectionSet decodesTo Github.Interface.Node
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onCommitComment : SelectionSet decodesTo Github.Object.CommitComment -> FragmentSelectionSet decodesTo Github.Interface.Node
onCommitComment (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitComment" fields decoder


onCommitCommentThread : SelectionSet decodesTo Github.Object.CommitCommentThread -> FragmentSelectionSet decodesTo Github.Interface.Node
onCommitCommentThread (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitCommentThread" fields decoder


onConvertedNoteToIssueEvent : SelectionSet decodesTo Github.Object.ConvertedNoteToIssueEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onConvertedNoteToIssueEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ConvertedNoteToIssueEvent" fields decoder


onCrossReferencedEvent : SelectionSet decodesTo Github.Object.CrossReferencedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onCrossReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CrossReferencedEvent" fields decoder


onDemilestonedEvent : SelectionSet decodesTo Github.Object.DemilestonedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onDemilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DemilestonedEvent" fields decoder


onDeployKey : SelectionSet decodesTo Github.Object.DeployKey -> FragmentSelectionSet decodesTo Github.Interface.Node
onDeployKey (SelectionSet fields decoder) =
    FragmentSelectionSet "DeployKey" fields decoder


onDeployedEvent : SelectionSet decodesTo Github.Object.DeployedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onDeployedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DeployedEvent" fields decoder


onDeployment : SelectionSet decodesTo Github.Object.Deployment -> FragmentSelectionSet decodesTo Github.Interface.Node
onDeployment (SelectionSet fields decoder) =
    FragmentSelectionSet "Deployment" fields decoder


onDeploymentStatus : SelectionSet decodesTo Github.Object.DeploymentStatus -> FragmentSelectionSet decodesTo Github.Interface.Node
onDeploymentStatus (SelectionSet fields decoder) =
    FragmentSelectionSet "DeploymentStatus" fields decoder


onExternalIdentity : SelectionSet decodesTo Github.Object.ExternalIdentity -> FragmentSelectionSet decodesTo Github.Interface.Node
onExternalIdentity (SelectionSet fields decoder) =
    FragmentSelectionSet "ExternalIdentity" fields decoder


onGist : SelectionSet decodesTo Github.Object.Gist -> FragmentSelectionSet decodesTo Github.Interface.Node
onGist (SelectionSet fields decoder) =
    FragmentSelectionSet "Gist" fields decoder


onGistComment : SelectionSet decodesTo Github.Object.GistComment -> FragmentSelectionSet decodesTo Github.Interface.Node
onGistComment (SelectionSet fields decoder) =
    FragmentSelectionSet "GistComment" fields decoder


onHeadRefDeletedEvent : SelectionSet decodesTo Github.Object.HeadRefDeletedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onHeadRefDeletedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefDeletedEvent" fields decoder


onHeadRefForcePushedEvent : SelectionSet decodesTo Github.Object.HeadRefForcePushedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onHeadRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefForcePushedEvent" fields decoder


onHeadRefRestoredEvent : SelectionSet decodesTo Github.Object.HeadRefRestoredEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onHeadRefRestoredEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefRestoredEvent" fields decoder


onIssue : SelectionSet decodesTo Github.Object.Issue -> FragmentSelectionSet decodesTo Github.Interface.Node
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onIssueComment : SelectionSet decodesTo Github.Object.IssueComment -> FragmentSelectionSet decodesTo Github.Interface.Node
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onLabel : SelectionSet decodesTo Github.Object.Label -> FragmentSelectionSet decodesTo Github.Interface.Node
onLabel (SelectionSet fields decoder) =
    FragmentSelectionSet "Label" fields decoder


onLabeledEvent : SelectionSet decodesTo Github.Object.LabeledEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onLabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LabeledEvent" fields decoder


onLanguage : SelectionSet decodesTo Github.Object.Language -> FragmentSelectionSet decodesTo Github.Interface.Node
onLanguage (SelectionSet fields decoder) =
    FragmentSelectionSet "Language" fields decoder


onLockedEvent : SelectionSet decodesTo Github.Object.LockedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onLockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LockedEvent" fields decoder


onMarketplaceListing : SelectionSet decodesTo Github.Object.MarketplaceListing -> FragmentSelectionSet decodesTo Github.Interface.Node
onMarketplaceListing (SelectionSet fields decoder) =
    FragmentSelectionSet "MarketplaceListing" fields decoder


onMentionedEvent : SelectionSet decodesTo Github.Object.MentionedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onMentionedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MentionedEvent" fields decoder


onMergedEvent : SelectionSet decodesTo Github.Object.MergedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onMergedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MergedEvent" fields decoder


onMilestone : SelectionSet decodesTo Github.Object.Milestone -> FragmentSelectionSet decodesTo Github.Interface.Node
onMilestone (SelectionSet fields decoder) =
    FragmentSelectionSet "Milestone" fields decoder


onMilestonedEvent : SelectionSet decodesTo Github.Object.MilestonedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onMilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MilestonedEvent" fields decoder


onMovedColumnsInProjectEvent : SelectionSet decodesTo Github.Object.MovedColumnsInProjectEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onMovedColumnsInProjectEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MovedColumnsInProjectEvent" fields decoder


onOrganization : SelectionSet decodesTo Github.Object.Organization -> FragmentSelectionSet decodesTo Github.Interface.Node
onOrganization (SelectionSet fields decoder) =
    FragmentSelectionSet "Organization" fields decoder


onOrganizationIdentityProvider : SelectionSet decodesTo Github.Object.OrganizationIdentityProvider -> FragmentSelectionSet decodesTo Github.Interface.Node
onOrganizationIdentityProvider (SelectionSet fields decoder) =
    FragmentSelectionSet "OrganizationIdentityProvider" fields decoder


onOrganizationInvitation : SelectionSet decodesTo Github.Object.OrganizationInvitation -> FragmentSelectionSet decodesTo Github.Interface.Node
onOrganizationInvitation (SelectionSet fields decoder) =
    FragmentSelectionSet "OrganizationInvitation" fields decoder


onProject : SelectionSet decodesTo Github.Object.Project -> FragmentSelectionSet decodesTo Github.Interface.Node
onProject (SelectionSet fields decoder) =
    FragmentSelectionSet "Project" fields decoder


onProjectCard : SelectionSet decodesTo Github.Object.ProjectCard -> FragmentSelectionSet decodesTo Github.Interface.Node
onProjectCard (SelectionSet fields decoder) =
    FragmentSelectionSet "ProjectCard" fields decoder


onProjectColumn : SelectionSet decodesTo Github.Object.ProjectColumn -> FragmentSelectionSet decodesTo Github.Interface.Node
onProjectColumn (SelectionSet fields decoder) =
    FragmentSelectionSet "ProjectColumn" fields decoder


onProtectedBranch : SelectionSet decodesTo Github.Object.ProtectedBranch -> FragmentSelectionSet decodesTo Github.Interface.Node
onProtectedBranch (SelectionSet fields decoder) =
    FragmentSelectionSet "ProtectedBranch" fields decoder


onPublicKey : SelectionSet decodesTo Github.Object.PublicKey -> FragmentSelectionSet decodesTo Github.Interface.Node
onPublicKey (SelectionSet fields decoder) =
    FragmentSelectionSet "PublicKey" fields decoder


onPullRequest : SelectionSet decodesTo Github.Object.PullRequest -> FragmentSelectionSet decodesTo Github.Interface.Node
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onPullRequestCommit : SelectionSet decodesTo Github.Object.PullRequestCommit -> FragmentSelectionSet decodesTo Github.Interface.Node
onPullRequestCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestCommit" fields decoder


onPullRequestReview : SelectionSet decodesTo Github.Object.PullRequestReview -> FragmentSelectionSet decodesTo Github.Interface.Node
onPullRequestReview (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReview" fields decoder


onPullRequestReviewComment : SelectionSet decodesTo Github.Object.PullRequestReviewComment -> FragmentSelectionSet decodesTo Github.Interface.Node
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


onPullRequestReviewThread : SelectionSet decodesTo Github.Object.PullRequestReviewThread -> FragmentSelectionSet decodesTo Github.Interface.Node
onPullRequestReviewThread (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewThread" fields decoder


onPushAllowance : SelectionSet decodesTo Github.Object.PushAllowance -> FragmentSelectionSet decodesTo Github.Interface.Node
onPushAllowance (SelectionSet fields decoder) =
    FragmentSelectionSet "PushAllowance" fields decoder


onReaction : SelectionSet decodesTo Github.Object.Reaction -> FragmentSelectionSet decodesTo Github.Interface.Node
onReaction (SelectionSet fields decoder) =
    FragmentSelectionSet "Reaction" fields decoder


onRef : SelectionSet decodesTo Github.Object.Ref -> FragmentSelectionSet decodesTo Github.Interface.Node
onRef (SelectionSet fields decoder) =
    FragmentSelectionSet "Ref" fields decoder


onReferencedEvent : SelectionSet decodesTo Github.Object.ReferencedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReferencedEvent" fields decoder


onRelease : SelectionSet decodesTo Github.Object.Release -> FragmentSelectionSet decodesTo Github.Interface.Node
onRelease (SelectionSet fields decoder) =
    FragmentSelectionSet "Release" fields decoder


onReleaseAsset : SelectionSet decodesTo Github.Object.ReleaseAsset -> FragmentSelectionSet decodesTo Github.Interface.Node
onReleaseAsset (SelectionSet fields decoder) =
    FragmentSelectionSet "ReleaseAsset" fields decoder


onRemovedFromProjectEvent : SelectionSet decodesTo Github.Object.RemovedFromProjectEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onRemovedFromProjectEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RemovedFromProjectEvent" fields decoder


onRenamedTitleEvent : SelectionSet decodesTo Github.Object.RenamedTitleEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onRenamedTitleEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RenamedTitleEvent" fields decoder


onReopenedEvent : SelectionSet decodesTo Github.Object.ReopenedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onReopenedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReopenedEvent" fields decoder


onRepository : SelectionSet decodesTo Github.Object.Repository -> FragmentSelectionSet decodesTo Github.Interface.Node
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


onRepositoryInvitation : SelectionSet decodesTo Github.Object.RepositoryInvitation -> FragmentSelectionSet decodesTo Github.Interface.Node
onRepositoryInvitation (SelectionSet fields decoder) =
    FragmentSelectionSet "RepositoryInvitation" fields decoder


onRepositoryTopic : SelectionSet decodesTo Github.Object.RepositoryTopic -> FragmentSelectionSet decodesTo Github.Interface.Node
onRepositoryTopic (SelectionSet fields decoder) =
    FragmentSelectionSet "RepositoryTopic" fields decoder


onReviewDismissalAllowance : SelectionSet decodesTo Github.Object.ReviewDismissalAllowance -> FragmentSelectionSet decodesTo Github.Interface.Node
onReviewDismissalAllowance (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissalAllowance" fields decoder


onReviewDismissedEvent : SelectionSet decodesTo Github.Object.ReviewDismissedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onReviewDismissedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissedEvent" fields decoder


onReviewRequest : SelectionSet decodesTo Github.Object.ReviewRequest -> FragmentSelectionSet decodesTo Github.Interface.Node
onReviewRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequest" fields decoder


onReviewRequestRemovedEvent : SelectionSet decodesTo Github.Object.ReviewRequestRemovedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onReviewRequestRemovedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestRemovedEvent" fields decoder


onReviewRequestedEvent : SelectionSet decodesTo Github.Object.ReviewRequestedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onReviewRequestedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestedEvent" fields decoder


onStatus : SelectionSet decodesTo Github.Object.Status -> FragmentSelectionSet decodesTo Github.Interface.Node
onStatus (SelectionSet fields decoder) =
    FragmentSelectionSet "Status" fields decoder


onStatusContext : SelectionSet decodesTo Github.Object.StatusContext -> FragmentSelectionSet decodesTo Github.Interface.Node
onStatusContext (SelectionSet fields decoder) =
    FragmentSelectionSet "StatusContext" fields decoder


onSubscribedEvent : SelectionSet decodesTo Github.Object.SubscribedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onSubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "SubscribedEvent" fields decoder


onTag : SelectionSet decodesTo Github.Object.Tag -> FragmentSelectionSet decodesTo Github.Interface.Node
onTag (SelectionSet fields decoder) =
    FragmentSelectionSet "Tag" fields decoder


onTeam : SelectionSet decodesTo Github.Object.Team -> FragmentSelectionSet decodesTo Github.Interface.Node
onTeam (SelectionSet fields decoder) =
    FragmentSelectionSet "Team" fields decoder


onTopic : SelectionSet decodesTo Github.Object.Topic -> FragmentSelectionSet decodesTo Github.Interface.Node
onTopic (SelectionSet fields decoder) =
    FragmentSelectionSet "Topic" fields decoder


onTree : SelectionSet decodesTo Github.Object.Tree -> FragmentSelectionSet decodesTo Github.Interface.Node
onTree (SelectionSet fields decoder) =
    FragmentSelectionSet "Tree" fields decoder


onUnassignedEvent : SelectionSet decodesTo Github.Object.UnassignedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onUnassignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnassignedEvent" fields decoder


onUnlabeledEvent : SelectionSet decodesTo Github.Object.UnlabeledEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onUnlabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlabeledEvent" fields decoder


onUnlockedEvent : SelectionSet decodesTo Github.Object.UnlockedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onUnlockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlockedEvent" fields decoder


onUnsubscribedEvent : SelectionSet decodesTo Github.Object.UnsubscribedEvent -> FragmentSelectionSet decodesTo Github.Interface.Node
onUnsubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnsubscribedEvent" fields decoder


onUser : SelectionSet decodesTo Github.Object.User -> FragmentSelectionSet decodesTo Github.Interface.Node
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder


onUserContentEdit : SelectionSet decodesTo Github.Object.UserContentEdit -> FragmentSelectionSet decodesTo Github.Interface.Node
onUserContentEdit (SelectionSet fields decoder) =
    FragmentSelectionSet "UserContentEdit" fields decoder


{-| ID of the object.
-}
id : Field Github.Scalar.Id Github.Interface.Node
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)
