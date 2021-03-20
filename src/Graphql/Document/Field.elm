module Graphql.Document.Field exposing (hashedAliasName, serializeChildren)

import Graphql.Document.Argument as Argument
import Graphql.Document.Hash exposing (hashString)
import Graphql.Document.Indent as Indent
import Graphql.RawField exposing (RawField(..))


hashedAliasName : RawField -> String
hashedAliasName field =
    field
        |> alias
        |> Maybe.withDefault (Graphql.RawField.name field)


maybeAliasHash : RawField -> Maybe Int
maybeAliasHash field =
    Nothing


alias : RawField -> Maybe String
alias field =
    field
        |> maybeAliasHash
        |> Maybe.map (\aliasHash -> Graphql.RawField.name field ++ String.fromInt aliasHash)


serialize : Maybe String -> Maybe Int -> RawField -> Maybe String
serialize aliasName mIndentationLevel field =
    let
        prefix =
            case aliasName of
                Just aliasName_ ->
                    aliasName_
                        ++ (case mIndentationLevel of
                                Just _ ->
                                    ": "

                                Nothing ->
                                    ":"
                           )

                Nothing ->
                    ""
    in
    (case field of
        Composite fieldName args children ->
            case mIndentationLevel of
                Nothing ->
                    (fieldName
                        ++ Argument.serialize args
                        ++ "{"
                        ++ serializeChildren Nothing children
                    )
                        ++ "}"
                        |> Just

                Just indentationLevel ->
                    (fieldName
                        ++ Argument.serialize args
                        ++ " {\n"
                        ++ serializeChildren (Just indentationLevel) children
                    )
                        ++ "\n"
                        ++ Indent.generate indentationLevel
                        ++ "}"
                        |> Just

        Leaf { fieldName } args ->
            Just (fieldName ++ Argument.serialize args)
    )
        |> Maybe.map
            (\string ->
                Indent.generate (mIndentationLevel |> Maybe.withDefault 0)
                    ++ prefix
                    ++ string
            )


serializeChildren : Maybe Int -> List RawField -> String
serializeChildren indentationLevel children =
    children
        |> nonemptyChildren
        |> List.map
            (\field ->
                serialize (alias field) (indentationLevel |> Maybe.map ((+) 1)) field
            )
        |> List.filterMap identity
        |> String.join
            (case indentationLevel of
                Just _ ->
                    "\n"

                Nothing ->
                    " "
            )


nonemptyChildren : List RawField -> List RawField
nonemptyChildren children =
    if List.isEmpty children then
        Graphql.RawField.typename :: children

    else
        children
