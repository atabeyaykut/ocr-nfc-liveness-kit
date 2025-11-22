.class public final enum Lec/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lec/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lec/h;

.field public static final enum B:Lec/h;

.field public static final enum C:Lec/h;

.field public static final enum D:Lec/h;

.field public static final enum E:Lec/h;

.field public static final enum F:Lec/h;

.field public static final enum G:Lec/h;

.field public static final enum H:Lec/h;

.field public static final synthetic I:[Lec/h;

.field public static final enum c:Lec/h;

.field public static final enum d:Lec/h;

.field public static final enum e:Lec/h;

.field public static final enum f:Lec/h;

.field public static final enum g:Lec/h;

.field public static final enum h:Lec/h;

.field public static final enum j:Lec/h;

.field public static final enum k:Lec/h;

.field public static final enum l:Lec/h;

.field public static final enum m:Lec/h;

.field public static final enum n:Lec/h;

.field public static final enum p:Lec/h;

.field public static final enum q:Lec/h;

.field public static final enum r:Lec/h;

.field public static final enum s:Lec/h;

.field public static final enum t:Lec/h;

.field public static final enum v:Lec/h;

.field public static final enum w:Lec/h;

.field public static final enum x:Lec/h;

.field public static final enum y:Lec/h;

.field public static final enum z:Lec/h;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 88

    new-instance v0, Lec/h;

    const-string v1, "UNRESOLVED_TYPE"

    const-string v2, "Unresolved type for %s"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v1, Lec/h;

    const-string v2, "UNRESOLVED_TYPE_PARAMETER_TYPE"

    const-string v5, "Unresolved type parameter type"

    invoke-direct {v1, v2, v5, v3, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v2, Lec/h;

    const-string v5, "UNRESOLVED_CLASS_TYPE"

    const-string v6, "Unresolved class %s"

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v3, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v5, Lec/h;

    const-string v6, "UNRESOLVED_JAVA_CLASS"

    const-string v8, "Unresolved java class %s"

    const/4 v9, 0x3

    invoke-direct {v5, v6, v8, v3, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v5, Lec/h;->c:Lec/h;

    new-instance v6, Lec/h;

    const-string v8, "UNRESOLVED_DECLARATION"

    const-string v10, "Unresolved declaration %s"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v10, v3, v11}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v8, Lec/h;

    const-string v10, "UNRESOLVED_KCLASS_CONSTANT_VALUE"

    const-string v12, "Unresolved type for %s (arrayDimensions=%s)"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v12, v3, v13}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v8, Lec/h;->d:Lec/h;

    new-instance v10, Lec/h;

    const-string v12, "UNRESOLVED_TYPE_ALIAS"

    const-string v14, "Unresolved type alias %s"

    const/4 v15, 0x6

    .line 1
    invoke-direct {v10, v12, v14, v4, v15}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2
    new-instance v12, Lec/h;

    const-string v14, "RETURN_TYPE"

    const-string v15, "Return type for %s cannot be resolved"

    const/4 v13, 0x7

    .line 3
    invoke-direct {v12, v14, v15, v4, v13}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 4
    new-instance v14, Lec/h;

    const-string v15, "RETURN_TYPE_FOR_FUNCTION"

    const-string v13, "Return type for function cannot be resolved"

    const/16 v11, 0x8

    .line 5
    invoke-direct {v14, v15, v13, v4, v11}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 6
    sput-object v14, Lec/h;->e:Lec/h;

    new-instance v13, Lec/h;

    const-string v15, "RETURN_TYPE_FOR_PROPERTY"

    const-string v11, "Return type for property %s cannot be resolved"

    const/16 v9, 0x9

    .line 7
    invoke-direct {v13, v15, v11, v4, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 8
    new-instance v11, Lec/h;

    const-string v15, "RETURN_TYPE_FOR_CONSTRUCTOR"

    const-string v9, "Return type for constructor %s cannot be resolved"

    const/16 v7, 0xa

    .line 9
    invoke-direct {v11, v15, v9, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 10
    new-instance v9, Lec/h;

    const-string v15, "IMPLICIT_RETURN_TYPE_FOR_FUNCTION"

    const-string v7, "Implicit return type for function %s cannot be resolved"

    const/16 v3, 0xb

    .line 11
    invoke-direct {v9, v15, v7, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 12
    new-instance v7, Lec/h;

    const-string v15, "IMPLICIT_RETURN_TYPE_FOR_PROPERTY"

    const-string v3, "Implicit return type for property %s cannot be resolved"

    move-object/from16 v16, v9

    const/16 v9, 0xc

    .line 13
    invoke-direct {v7, v15, v3, v4, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 14
    new-instance v3, Lec/h;

    const-string v15, "IMPLICIT_RETURN_TYPE_FOR_PROPERTY_ACCESSOR"

    const-string v9, "Implicit return type for property accessor %s cannot be resolved"

    move-object/from16 v17, v7

    const/16 v7, 0xd

    .line 15
    invoke-direct {v3, v15, v9, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 16
    new-instance v9, Lec/h;

    const-string v15, "ERROR_TYPE_FOR_DESTRUCTURING_COMPONENT"

    const-string v7, "%s() return type"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    .line 17
    invoke-direct {v9, v15, v7, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 18
    new-instance v7, Lec/h;

    const-string v15, "RECURSIVE_TYPE"

    const-string v3, "Recursive type"

    move-object/from16 v19, v9

    const/16 v9, 0xf

    .line 19
    invoke-direct {v7, v15, v3, v4, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 20
    new-instance v3, Lec/h;

    const-string v15, "RECURSIVE_TYPE_ALIAS"

    const-string v9, "Recursive type alias %s"

    move-object/from16 v20, v7

    const/16 v7, 0x10

    .line 21
    invoke-direct {v3, v15, v9, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 22
    sput-object v3, Lec/h;->f:Lec/h;

    new-instance v9, Lec/h;

    const-string v15, "RECURSIVE_ANNOTATION_TYPE"

    const-string v7, "Recursive annotation\'s type"

    move-object/from16 v21, v3

    const/16 v3, 0x11

    .line 23
    invoke-direct {v9, v15, v7, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 24
    new-instance v7, Lec/h;

    const-string v15, "CYCLIC_UPPER_BOUNDS"

    const-string v3, "Cyclic upper bounds"

    move-object/from16 v22, v9

    const/16 v9, 0x12

    .line 25
    invoke-direct {v7, v15, v3, v4, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 26
    sput-object v7, Lec/h;->g:Lec/h;

    new-instance v3, Lec/h;

    const-string v15, "CYCLIC_SUPERTYPES"

    const-string v9, "Cyclic supertypes"

    move-object/from16 v23, v7

    const/16 v7, 0x13

    .line 27
    invoke-direct {v3, v15, v9, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 28
    sput-object v3, Lec/h;->h:Lec/h;

    new-instance v9, Lec/h;

    const-string v15, "UNINFERRED_LAMBDA_CONTEXT_RECEIVER_TYPE"

    const-string v7, "Cannot infer a lambda context receiver type"

    move-object/from16 v24, v3

    const/16 v3, 0x14

    .line 29
    invoke-direct {v9, v15, v7, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 30
    new-instance v7, Lec/h;

    const-string v15, "UNINFERRED_LAMBDA_PARAMETER_TYPE"

    const-string v3, "Cannot infer a lambda parameter type"

    move-object/from16 v25, v9

    const/16 v9, 0x15

    .line 31
    invoke-direct {v7, v15, v3, v4, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 32
    sput-object v7, Lec/h;->j:Lec/h;

    new-instance v3, Lec/h;

    const-string v15, "UNINFERRED_TYPE_VARIABLE"

    const-string v9, "Cannot infer a type variable %s"

    move-object/from16 v26, v7

    const/16 v7, 0x16

    .line 33
    invoke-direct {v3, v15, v9, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 34
    sput-object v3, Lec/h;->k:Lec/h;

    new-instance v9, Lec/h;

    const-string v15, "RESOLUTION_ERROR_TYPE"

    const-string v7, "Resolution error type (%s)"

    move-object/from16 v27, v3

    const/16 v3, 0x17

    .line 35
    invoke-direct {v9, v15, v7, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 36
    new-instance v3, Lec/h;

    const-string v7, "ERROR_EXPECTED_TYPE"

    const-string v15, "Error expected type"

    move-object/from16 v28, v9

    const/16 v9, 0x18

    .line 37
    invoke-direct {v3, v7, v15, v4, v9}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 38
    new-instance v7, Lec/h;

    const-string v9, "ERROR_DATA_FLOW_TYPE"

    const-string v15, "Error type for data flow"

    move-object/from16 v29, v3

    const/16 v3, 0x19

    .line 39
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 40
    new-instance v3, Lec/h;

    const-string v9, "ERROR_WHILE_RECONSTRUCTING_BARE_TYPE"

    const-string v15, "Failed to reconstruct type %s"

    move-object/from16 v30, v7

    const/16 v7, 0x1a

    .line 41
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 42
    new-instance v7, Lec/h;

    const-string v9, "UNABLE_TO_SUBSTITUTE_TYPE"

    const-string v15, "Unable to substitute type (%s)"

    move-object/from16 v31, v3

    const/16 v3, 0x1b

    .line 43
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 44
    sput-object v7, Lec/h;->l:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "DONT_CARE"

    const-string v15, "Special DONT_CARE type"

    move-object/from16 v32, v7

    const/16 v7, 0x1c

    .line 45
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 46
    sput-object v3, Lec/h;->m:Lec/h;

    new-instance v7, Lec/h;

    const-string v9, "STUB_TYPE"

    const-string v15, "Stub type %s"

    move-object/from16 v33, v3

    const/16 v3, 0x1d

    .line 47
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 48
    new-instance v3, Lec/h;

    const-string v9, "FUNCTION_PLACEHOLDER_TYPE"

    const-string v15, "Function placeholder type (arguments: %s)"

    move-object/from16 v34, v7

    const/16 v7, 0x1e

    .line 49
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 50
    new-instance v7, Lec/h;

    const-string v9, "TYPE_FOR_RESULT"

    const-string v15, "Stubbed \'Result\' type"

    move-object/from16 v35, v3

    const/16 v3, 0x1f

    .line 51
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 52
    new-instance v3, Lec/h;

    const-string v9, "TYPE_FOR_COMPILER_EXCEPTION"

    const-string v15, "Error type for a compiler exception while analyzing %s"

    move-object/from16 v36, v7

    const/16 v7, 0x20

    .line 53
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 54
    new-instance v7, Lec/h;

    const-string v9, "ERROR_FLEXIBLE_TYPE"

    const-string v15, "Error java flexible type with id %s. (%s..%s)"

    move-object/from16 v37, v3

    const/16 v3, 0x21

    .line 55
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 56
    sput-object v7, Lec/h;->n:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "ERROR_RAW_TYPE"

    const-string v15, "Error raw type %s"

    move-object/from16 v38, v7

    const/16 v7, 0x22

    .line 57
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 58
    sput-object v3, Lec/h;->p:Lec/h;

    new-instance v7, Lec/h;

    const-string v9, "TYPE_WITH_MISMATCHED_TYPE_ARGUMENTS_AND_PARAMETERS"

    const-string v15, "Inconsistent type %s (parameters.size = %s, arguments.size = %s)"

    move-object/from16 v39, v3

    const/16 v3, 0x23

    .line 59
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 60
    new-instance v3, Lec/h;

    const-string v9, "ILLEGAL_TYPE_RANGE_FOR_DYNAMIC"

    const-string v15, "Illegal type range for dynamic type %s..%s"

    move-object/from16 v40, v7

    const/16 v7, 0x24

    .line 61
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 62
    new-instance v7, Lec/h;

    const-string v9, "CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER"

    const-string v15, "Unknown type parameter %s. Please try recompiling module containing \"%s\""

    move-object/from16 v41, v3

    const/16 v3, 0x25

    .line 63
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 64
    sput-object v7, Lec/h;->q:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME"

    const-string v15, "Couldn\'t deserialize type parameter %s in %s"

    move-object/from16 v42, v7

    const/16 v7, 0x26

    .line 65
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 66
    sput-object v3, Lec/h;->r:Lec/h;

    new-instance v7, Lec/h;

    const-string v9, "INCONSISTENT_SUSPEND_FUNCTION"

    const-string v15, "Inconsistent suspend function type in metadata with constructor %s"

    move-object/from16 v43, v3

    const/16 v3, 0x27

    .line 67
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 68
    sput-object v7, Lec/h;->s:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "UNEXPECTED_FLEXIBLE_TYPE_ID"

    const-string v15, "Unexpected id of a flexible type %s. (%s..%s)"

    move-object/from16 v44, v7

    const/16 v7, 0x28

    .line 69
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 70
    new-instance v7, Lec/h;

    const-string v9, "UNKNOWN_TYPE"

    const-string v15, "Unknown type"

    move-object/from16 v45, v3

    const/16 v3, 0x29

    .line 71
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 72
    sput-object v7, Lec/h;->t:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "NO_TYPE_SPECIFIED"

    const-string v15, "No type specified for %s"

    move-object/from16 v46, v7

    const/16 v7, 0x2a

    .line 73
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 74
    new-instance v7, Lec/h;

    const-string v9, "NO_TYPE_FOR_LOOP_RANGE"

    const-string v15, "Loop range has no type"

    move-object/from16 v47, v3

    const/16 v3, 0x2b

    .line 75
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 76
    new-instance v3, Lec/h;

    const-string v9, "NO_TYPE_FOR_LOOP_PARAMETER"

    const-string v15, "Loop parameter has no type"

    move-object/from16 v48, v7

    const/16 v7, 0x2c

    .line 77
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 78
    new-instance v7, Lec/h;

    const-string v9, "MISSED_TYPE_FOR_PARAMETER"

    const-string v15, "Missed a type for a value parameter %s"

    move-object/from16 v49, v3

    const/16 v3, 0x2d

    .line 79
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 80
    new-instance v3, Lec/h;

    const-string v9, "MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER"

    const-string v15, "Missed a type argument for a type parameter %s"

    move-object/from16 v50, v7

    const/16 v7, 0x2e

    .line 81
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 82
    sput-object v3, Lec/h;->v:Lec/h;

    new-instance v7, Lec/h;

    const-string v9, "PARSE_ERROR_ARGUMENT"

    const-string v15, "Error type for parse error argument %s"

    move-object/from16 v51, v3

    const/16 v3, 0x2f

    .line 83
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 84
    new-instance v3, Lec/h;

    const-string v9, "STAR_PROJECTION_IN_CALL"

    const-string v15, "Error type for star projection directly passing as a call type argument"

    move-object/from16 v52, v7

    const/16 v7, 0x30

    .line 85
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 86
    new-instance v7, Lec/h;

    const-string v9, "PROHIBITED_DYNAMIC_TYPE"

    const-string v15, "Dynamic type in a not allowed context"

    move-object/from16 v53, v3

    const/16 v3, 0x31

    .line 87
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 88
    new-instance v3, Lec/h;

    const-string v9, "NOT_ANNOTATION_TYPE_IN_ANNOTATION_CONTEXT"

    const-string v15, "Not an annotation type %s in the annotation context"

    move-object/from16 v54, v7

    const/16 v7, 0x32

    .line 89
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 90
    new-instance v7, Lec/h;

    const-string v9, "UNIT_RETURN_TYPE_FOR_INC_DEC"

    const-string v15, "Unit type returned by inc or dec"

    move-object/from16 v55, v3

    const/16 v3, 0x33

    .line 91
    invoke-direct {v7, v9, v15, v4, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 92
    new-instance v3, Lec/h;

    const-string v9, "RETURN_NOT_ALLOWED"

    const-string v15, "Return not allowed"

    move-object/from16 v56, v7

    const/16 v7, 0x34

    .line 93
    invoke-direct {v3, v9, v15, v4, v7}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 94
    new-instance v7, Lec/h;

    const-string v9, "UNRESOLVED_PARCEL_TYPE"

    const/16 v15, 0x35

    const-string v4, "Unresolved \'Parcel\' type"

    move-object/from16 v58, v3

    const/4 v3, 0x1

    invoke-direct {v7, v9, v4, v3, v15}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v3, Lec/h;

    const-string v4, "KAPT_ERROR_TYPE"

    const-string v9, "Kapt error type"

    const/16 v15, 0x36

    move-object/from16 v59, v7

    const/4 v7, 0x0

    .line 95
    invoke-direct {v3, v4, v9, v7, v15}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 96
    new-instance v4, Lec/h;

    const-string v9, "SYNTHETIC_ELEMENT_ERROR_TYPE"

    const-string v15, "Error type for synthetic element"

    move-object/from16 v57, v3

    const/16 v3, 0x37

    .line 97
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 98
    new-instance v3, Lec/h;

    const-string v9, "AD_HOC_ERROR_TYPE_FOR_LIGHTER_CLASSES_RESOLVE"

    const-string v15, "Error type in ad hoc resolve for lighter classes"

    move-object/from16 v60, v4

    const/16 v4, 0x38

    .line 99
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 100
    new-instance v4, Lec/h;

    const-string v9, "ERROR_EXPRESSION_TYPE"

    const-string v15, "Error expression type"

    move-object/from16 v61, v3

    const/16 v3, 0x39

    .line 101
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 102
    new-instance v3, Lec/h;

    const-string v9, "ERROR_RECEIVER_TYPE"

    const-string v15, "Error receiver type for %s"

    move-object/from16 v62, v4

    const/16 v4, 0x3a

    .line 103
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 104
    new-instance v4, Lec/h;

    const-string v9, "ERROR_CONSTANT_VALUE"

    const-string v15, "Error constant value %s"

    move-object/from16 v63, v3

    const/16 v3, 0x3b

    .line 105
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 106
    sput-object v4, Lec/h;->w:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "EMPTY_CALLABLE_REFERENCE"

    const-string v15, "Empty callable reference"

    move-object/from16 v64, v4

    const/16 v4, 0x3c

    .line 107
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 108
    new-instance v4, Lec/h;

    const-string v9, "UNSUPPORTED_CALLABLE_REFERENCE_TYPE"

    const-string v15, "Unsupported callable reference type %s"

    move-object/from16 v65, v3

    const/16 v3, 0x3d

    .line 109
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 110
    new-instance v3, Lec/h;

    const-string v9, "TYPE_FOR_DELEGATION"

    const-string v15, "Error delegation type for %s"

    move-object/from16 v66, v4

    const/16 v4, 0x3e

    .line 111
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 112
    new-instance v4, Lec/h;

    const-string v9, "UNAVAILABLE_TYPE_FOR_DECLARATION"

    const-string v15, "Type is unavailable for declaration %s"

    move-object/from16 v67, v3

    const/16 v3, 0x3f

    .line 113
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 114
    new-instance v3, Lec/h;

    const-string v9, "ERROR_TYPE_PARAMETER"

    const-string v15, "Error type parameter"

    move-object/from16 v68, v4

    const/16 v4, 0x40

    .line 115
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 116
    new-instance v4, Lec/h;

    const-string v9, "ERROR_TYPE_PROJECTION"

    const-string v15, "Error type projection"

    move-object/from16 v69, v3

    const/16 v3, 0x41

    .line 117
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 118
    new-instance v3, Lec/h;

    const-string v9, "ERROR_SUPER_TYPE"

    const-string v15, "Error super type"

    move-object/from16 v70, v4

    const/16 v4, 0x42

    .line 119
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 120
    new-instance v4, Lec/h;

    const-string v9, "SUPER_TYPE_FOR_ERROR_TYPE"

    const-string v15, "Supertype of error type %s"

    move-object/from16 v71, v3

    const/16 v3, 0x43

    .line 121
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 122
    new-instance v3, Lec/h;

    const-string v9, "ERROR_PROPERTY_TYPE"

    const-string v15, "Error property type"

    move-object/from16 v72, v4

    const/16 v4, 0x44

    .line 123
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 124
    sput-object v3, Lec/h;->x:Lec/h;

    new-instance v4, Lec/h;

    const-string v9, "ERROR_CLASS"

    const-string v15, "Error class"

    move-object/from16 v73, v3

    const/16 v3, 0x45

    .line 125
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 126
    sput-object v4, Lec/h;->y:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "TYPE_FOR_ERROR_TYPE_CONSTRUCTOR"

    const-string v15, "Type for error type constructor (%s)"

    move-object/from16 v74, v4

    const/16 v4, 0x46

    .line 127
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 128
    sput-object v3, Lec/h;->z:Lec/h;

    new-instance v4, Lec/h;

    const-string v9, "INTERSECTION_OF_ERROR_TYPES"

    const-string v15, "Intersection of error types %s"

    move-object/from16 v75, v3

    const/16 v3, 0x47

    .line 129
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 130
    sput-object v4, Lec/h;->A:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "CANNOT_COMPUTE_ERASED_BOUND"

    const-string v15, "Cannot compute erased upper bound of a type parameter %s"

    move-object/from16 v76, v4

    const/16 v4, 0x48

    .line 131
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 132
    sput-object v3, Lec/h;->B:Lec/h;

    new-instance v4, Lec/h;

    const-string v9, "NOT_FOUND_UNSIGNED_TYPE"

    const-string v15, "Unsigned type %s not found"

    move-object/from16 v77, v3

    const/16 v3, 0x49

    .line 133
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 134
    sput-object v4, Lec/h;->C:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "ERROR_ENUM_TYPE"

    const-string v15, "Not found the corresponding enum class for given enum entry %s.%s"

    move-object/from16 v78, v4

    const/16 v4, 0x4a

    .line 135
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 136
    sput-object v3, Lec/h;->D:Lec/h;

    new-instance v4, Lec/h;

    const-string v9, "NO_RECORDED_TYPE"

    const-string v15, "Not found recorded type for %s"

    move-object/from16 v79, v3

    const/16 v3, 0x4b

    .line 137
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 138
    sput-object v4, Lec/h;->E:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "NOT_FOUND_DESCRIPTOR_FOR_FUNCTION"

    const-string v15, "Descriptor not found for function %s"

    move-object/from16 v80, v4

    const/16 v4, 0x4c

    .line 139
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 140
    new-instance v4, Lec/h;

    const-string v9, "NOT_FOUND_DESCRIPTOR_FOR_CLASS"

    const-string v15, "Cannot build class type, descriptor not found for builder %s"

    move-object/from16 v81, v3

    const/16 v3, 0x4d

    .line 141
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 142
    new-instance v3, Lec/h;

    const-string v9, "NOT_FOUND_DESCRIPTOR_FOR_TYPE_PARAMETER"

    const-string v15, "Cannot build type parameter type, descriptor not found for builder %s"

    move-object/from16 v82, v4

    const/16 v4, 0x4e

    .line 143
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 144
    new-instance v4, Lec/h;

    const-string v9, "UNMAPPED_ANNOTATION_TARGET_TYPE"

    const-string v15, "Type for unmapped Java annotation target to Kotlin one"

    move-object/from16 v83, v3

    const/16 v3, 0x4f

    .line 145
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 146
    sput-object v4, Lec/h;->F:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "UNKNOWN_ARRAY_ELEMENT_TYPE_OF_ANNOTATION_ARGUMENT"

    const-string v15, "Unknown type for an array element of a java annotation argument"

    move-object/from16 v84, v4

    const/16 v4, 0x50

    .line 147
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 148
    sput-object v3, Lec/h;->G:Lec/h;

    new-instance v4, Lec/h;

    const-string v9, "NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION"

    const-string v15, "No fqName for annotation %s"

    move-object/from16 v85, v3

    const/16 v3, 0x51

    .line 149
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 150
    sput-object v4, Lec/h;->H:Lec/h;

    new-instance v3, Lec/h;

    const-string v9, "NOT_FOUND_FQNAME"

    const-string v15, "No fqName for %s"

    move-object/from16 v86, v4

    const/16 v4, 0x52

    .line 151
    invoke-direct {v3, v9, v15, v7, v4}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 152
    new-instance v4, Lec/h;

    const-string v9, "TYPE_FOR_GENERATED_ERROR_EXPRESSION"

    const-string v15, "Type for generated error expression"

    move-object/from16 v87, v3

    const/16 v3, 0x53

    .line 153
    invoke-direct {v4, v9, v15, v7, v3}, Lec/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const/16 v3, 0x54

    new-array v3, v3, [Lec/h;

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v26, v3, v0

    const/16 v0, 0x16

    aput-object v27, v3, v0

    const/16 v0, 0x17

    aput-object v28, v3, v0

    const/16 v0, 0x18

    aput-object v29, v3, v0

    const/16 v0, 0x19

    aput-object v30, v3, v0

    const/16 v0, 0x1a

    aput-object v31, v3, v0

    const/16 v0, 0x1b

    aput-object v32, v3, v0

    const/16 v0, 0x1c

    aput-object v33, v3, v0

    const/16 v0, 0x1d

    aput-object v34, v3, v0

    const/16 v0, 0x1e

    aput-object v35, v3, v0

    const/16 v0, 0x1f

    aput-object v36, v3, v0

    const/16 v0, 0x20

    aput-object v37, v3, v0

    const/16 v0, 0x21

    aput-object v38, v3, v0

    const/16 v0, 0x22

    aput-object v39, v3, v0

    const/16 v0, 0x23

    aput-object v40, v3, v0

    const/16 v0, 0x24

    aput-object v41, v3, v0

    const/16 v0, 0x25

    aput-object v42, v3, v0

    const/16 v0, 0x26

    aput-object v43, v3, v0

    const/16 v0, 0x27

    aput-object v44, v3, v0

    const/16 v0, 0x28

    aput-object v45, v3, v0

    const/16 v0, 0x29

    aput-object v46, v3, v0

    const/16 v0, 0x2a

    aput-object v47, v3, v0

    const/16 v0, 0x2b

    aput-object v48, v3, v0

    const/16 v0, 0x2c

    aput-object v49, v3, v0

    const/16 v0, 0x2d

    aput-object v50, v3, v0

    const/16 v0, 0x2e

    aput-object v51, v3, v0

    const/16 v0, 0x2f

    aput-object v52, v3, v0

    const/16 v0, 0x30

    aput-object v53, v3, v0

    const/16 v0, 0x31

    aput-object v54, v3, v0

    const/16 v0, 0x32

    aput-object v55, v3, v0

    const/16 v0, 0x33

    aput-object v56, v3, v0

    const/16 v0, 0x34

    aput-object v58, v3, v0

    const/16 v0, 0x35

    aput-object v59, v3, v0

    const/16 v0, 0x36

    aput-object v57, v3, v0

    const/16 v0, 0x37

    aput-object v60, v3, v0

    const/16 v0, 0x38

    aput-object v61, v3, v0

    const/16 v0, 0x39

    aput-object v62, v3, v0

    const/16 v0, 0x3a

    aput-object v63, v3, v0

    const/16 v0, 0x3b

    aput-object v64, v3, v0

    const/16 v0, 0x3c

    aput-object v65, v3, v0

    const/16 v0, 0x3d

    aput-object v66, v3, v0

    const/16 v0, 0x3e

    aput-object v67, v3, v0

    const/16 v0, 0x3f

    aput-object v68, v3, v0

    const/16 v0, 0x40

    aput-object v69, v3, v0

    const/16 v0, 0x41

    aput-object v70, v3, v0

    const/16 v0, 0x42

    aput-object v71, v3, v0

    const/16 v0, 0x43

    aput-object v72, v3, v0

    const/16 v0, 0x44

    aput-object v73, v3, v0

    const/16 v0, 0x45

    aput-object v74, v3, v0

    const/16 v0, 0x46

    aput-object v75, v3, v0

    const/16 v0, 0x47

    aput-object v76, v3, v0

    const/16 v0, 0x48

    aput-object v77, v3, v0

    const/16 v0, 0x49

    aput-object v78, v3, v0

    const/16 v0, 0x4a

    aput-object v79, v3, v0

    const/16 v0, 0x4b

    aput-object v80, v3, v0

    const/16 v0, 0x4c

    aput-object v81, v3, v0

    const/16 v0, 0x4d

    aput-object v82, v3, v0

    const/16 v0, 0x4e

    aput-object v83, v3, v0

    const/16 v0, 0x4f

    aput-object v84, v3, v0

    const/16 v0, 0x50

    aput-object v85, v3, v0

    const/16 v0, 0x51

    aput-object v86, v3, v0

    const/16 v0, 0x52

    aput-object v87, v3, v0

    const/16 v0, 0x53

    aput-object v4, v3, v0

    .line 154
    sput-object v3, Lec/h;->I:[Lec/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lec/h;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lec/h;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lec/h;
    .locals 1

    const-class v0, Lec/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lec/h;

    return-object p0
.end method

.method public static values()[Lec/h;
    .locals 1

    sget-object v0, Lec/h;->I:[Lec/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lec/h;

    return-object v0
.end method
