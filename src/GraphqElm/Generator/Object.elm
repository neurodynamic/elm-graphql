module GraphqElm.Generator.Object exposing (..)

import GraphqElm.Generator.Enum
import GraphqElm.Generator.Imports as Imports
import GraphqElm.Parser.Type as Type exposing (Field, TypeDefinition, TypeReference)
import String.Format


generate : String -> List Type.Field -> ( List String, String )
generate name fields =
    ( Imports.object name
    , prepend (Imports.object name) fields
        ++ (List.map generateNew fields |> String.join "\n\n")
    )


prepend : List String -> List Type.Field -> String
prepend moduleName fields =
    let
        imports : String
        imports =
            fields
                |> List.map (\{ name, typeRef } -> typeRef)
                |> Imports.importsString moduleName
    in
    String.Format.format1 """module {1} exposing (..)

import GraphqElm.Argument as Argument exposing (Argument)
import GraphqElm.Field as Field exposing (Field, FieldDecoder)
import GraphqElm.Object as Object exposing (Object)
import GraphqElm.TypeLock exposing (TypeLocked(TypeLocked))
import Json.Decode as Decode
"""
        (moduleName |> String.join ".")
        ++ imports
        ++ """


type Type
    = Type


build : (a -> constructor) -> Object (a -> constructor) Type
build constructor =
    Object.object constructor
"""


generateNew : Type.Field -> String
generateNew field =
    case field.typeRef of
        Type.TypeReference referrableType isNullable ->
            case referrableType of
                Type.ObjectRef objectName ->
                    String.Format.format2
                        """{1} : List (TypeLocked Argument Api.Object.{2}.Type) -> Object {1} Api.Object.{2}.Type -> Field.Query {1}
{1} optionalArgs object =
    Object.single "{1}" optionalArgs object
"""
                        ( field.name, objectName )

                Type.InterfaceRef interfaceName ->
                    String.Format.format2
                        """{1} : List (TypeLocked Argument Api.Object.{2}.Type) -> Object {1} Api.Object.{2}.Type -> Field.Query {1}
{1} optionalArgs object =
    Object.single "{1}" optionalArgs object
"""
                        ( field.name, interfaceName )

                Type.List (Type.TypeReference (Type.InterfaceRef objectName) isNullable) ->
                    String.Format.format3
                        """{1} : List (TypeLocked Argument Api.Object.{2}.Type) -> Object {3} Api.Object.{2}.Type -> Field.Query (List {3})
{1} optionalArgs object =
    Object.listOf "{3}" optionalArgs object
"""
                        ( field.name, objectName, field.name )

                _ ->
                    generateField field


generateField : Type.Field -> String
generateField { name, typeRef } =
    String.Format.format3
        """{1} : TypeLocked (FieldDecoder {2}) Type
{1} =
    Field.fieldDecoder "{1}" ({3})
"""
        ( name, generateType typeRef, generateDecoder typeRef )


generateDecoder : TypeReference -> String
generateDecoder typeRef =
    case typeRef of
        Type.TypeReference referrableType isNullable ->
            case referrableType of
                Type.Scalar scalar ->
                    "Decode.string"

                Type.List typeRef ->
                    generateDecoder typeRef ++ " |> Decode.list"

                Type.ObjectRef objectName ->
                    "Api.Object." ++ objectName ++ ".decoder"

                Type.InterfaceRef interfaceName ->
                    "Api.Object." ++ interfaceName ++ ".decoder"

                Type.EnumRef enumName ->
                    GraphqElm.Generator.Enum.moduleNameFor enumName ++ [ "decoder" ] |> String.join "."


generateType : TypeReference -> String
generateType typeRef =
    case typeRef of
        Type.TypeReference referrableType isNullable ->
            case referrableType of
                Type.Scalar scalar ->
                    "String"

                Type.List typeRef ->
                    "List String"

                Type.ObjectRef objectName ->
                    "Object." ++ objectName

                Type.InterfaceRef interfaceName ->
                    "Object." ++ interfaceName

                Type.EnumRef _ ->
                    "ENUMTYPETODO"