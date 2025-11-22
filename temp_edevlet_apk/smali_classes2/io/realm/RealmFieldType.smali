.class public final enum Lio/realm/RealmFieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmFieldType;",
        ">;"
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmFieldType;

.field public static final enum BINARY:Lio/realm/RealmFieldType;

.field public static final enum BINARY_LIST:Lio/realm/RealmFieldType;

.field public static final enum BINARY_SET:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_LIST:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_SET:Lio/realm/RealmFieldType;

.field public static final enum DATE:Lio/realm/RealmFieldType;

.field public static final enum DATE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DATE_SET:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_LIST:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_SET:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_SET:Lio/realm/RealmFieldType;

.field public static final enum FLOAT:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_LIST:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_SET:Lio/realm/RealmFieldType;

.field public static final enum INTEGER:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_LIST:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_SET:Lio/realm/RealmFieldType;

.field public static final enum LINKING_OBJECTS:Lio/realm/RealmFieldType;

.field public static final enum LINK_SET:Lio/realm/RealmFieldType;

.field public static final enum LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED:Lio/realm/RealmFieldType;

.field public static final enum MIXED_LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED_SET:Lio/realm/RealmFieldType;

.field public static final enum OBJECT:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_LIST:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING:Lio/realm/RealmFieldType;

.field public static final enum STRING_LIST:Lio/realm/RealmFieldType;

.field public static final enum STRING_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

.field public static final enum TYPED_LINK:Lio/realm/RealmFieldType;

.field public static final enum UUID:Lio/realm/RealmFieldType;

.field public static final enum UUID_LIST:Lio/realm/RealmFieldType;

.field public static final enum UUID_SET:Lio/realm/RealmFieldType;

.field private static final basicTypes:[Lio/realm/RealmFieldType;

.field private static final listTypes:[Lio/realm/RealmFieldType;

.field private static final mapTypes:[Lio/realm/RealmFieldType;

.field private static final setTypes:[Lio/realm/RealmFieldType;


# instance fields
.field private final nativeValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 53

    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    new-instance v3, Lio/realm/RealmFieldType;

    const-string v5, "STRING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    new-instance v5, Lio/realm/RealmFieldType;

    const-string v7, "BINARY"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    new-instance v7, Lio/realm/RealmFieldType;

    const-string v10, "DATE"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    new-instance v10, Lio/realm/RealmFieldType;

    const-string v12, "FLOAT"

    const/4 v13, 0x5

    const/16 v14, 0x9

    invoke-direct {v10, v12, v13, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    new-instance v12, Lio/realm/RealmFieldType;

    const-string v15, "DOUBLE"

    const/4 v13, 0x6

    const/16 v9, 0xa

    invoke-direct {v12, v15, v13, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    new-instance v15, Lio/realm/RealmFieldType;

    const-string v8, "OBJECT"

    const/4 v6, 0x7

    const/16 v4, 0xc

    invoke-direct {v15, v8, v6, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    new-instance v8, Lio/realm/RealmFieldType;

    const-string v6, "DECIMAL128"

    const/16 v2, 0xb

    invoke-direct {v8, v6, v11, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    new-instance v6, Lio/realm/RealmFieldType;

    const-string v11, "OBJECT_ID"

    const/16 v4, 0xf

    invoke-direct {v6, v11, v14, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    new-instance v11, Lio/realm/RealmFieldType;

    const-string v14, "UUID"

    const/16 v4, 0x11

    invoke-direct {v11, v14, v9, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    new-instance v14, Lio/realm/RealmFieldType;

    const-string v9, "MIXED"

    invoke-direct {v14, v9, v2, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    new-instance v9, Lio/realm/RealmFieldType;

    const-string v2, "TYPED_LINK"

    const/16 v13, 0x10

    const/16 v4, 0xc

    invoke-direct {v9, v2, v4, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const-string v4, "LIST"

    const/16 v13, 0xd

    invoke-direct {v2, v4, v13, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const-string v13, "LINKING_OBJECTS"

    move-object/from16 v16, v2

    const/16 v2, 0xe

    invoke-direct {v4, v13, v2, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    new-instance v13, Lio/realm/RealmFieldType;

    const-string v2, "INTEGER_LIST"

    move-object/from16 v17, v4

    const/16 v4, 0x80

    move-object/from16 v18, v9

    const/16 v9, 0xf

    invoke-direct {v13, v2, v9, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "BOOLEAN_LIST"

    const/16 v4, 0x81

    move-object/from16 v19, v13

    const/16 v13, 0x10

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_LIST"

    const/16 v13, 0x82

    move-object/from16 v20, v2

    const/16 v2, 0x11

    invoke-direct {v4, v9, v2, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x84

    const-string v13, "BINARY_LIST"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v13, v4, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    new-instance v9, Lio/realm/RealmFieldType;

    const/16 v13, 0x13

    const/16 v4, 0x88

    move-object/from16 v22, v2

    const-string v2, "DATE_LIST"

    invoke-direct {v9, v2, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v4, 0x14

    const/16 v13, 0x89

    move-object/from16 v23, v9

    const-string v9, "FLOAT_LIST"

    invoke-direct {v2, v9, v4, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x15

    const/16 v13, 0x8a

    move-object/from16 v24, v2

    const-string v2, "DOUBLE_LIST"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x16

    const/16 v13, 0x8b

    move-object/from16 v25, v4

    const-string v4, "DECIMAL128_LIST"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x17

    const/16 v13, 0x8f

    move-object/from16 v26, v2

    const-string v2, "OBJECT_ID_LIST"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x18

    const/16 v13, 0x91

    move-object/from16 v27, v4

    const-string v4, "UUID_LIST"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x19

    const/16 v13, 0x86

    move-object/from16 v28, v2

    const-string v2, "MIXED_LIST"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_INTEGER_MAP"

    const/16 v13, 0x1a

    move-object/from16 v29, v4

    const/16 v4, 0x200

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    new-instance v9, Lio/realm/RealmFieldType;

    const/16 v13, 0x1b

    const/16 v4, 0x201

    move-object/from16 v30, v2

    const-string v2, "STRING_TO_BOOLEAN_MAP"

    invoke-direct {v9, v2, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v4, 0x1c

    const/16 v13, 0x202

    move-object/from16 v31, v9

    const-string v9, "STRING_TO_STRING_MAP"

    invoke-direct {v2, v9, v4, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x1d

    const/16 v13, 0x204

    move-object/from16 v32, v2

    const-string v2, "STRING_TO_BINARY_MAP"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x1e

    const/16 v13, 0x208

    move-object/from16 v33, v4

    const-string v4, "STRING_TO_DATE_MAP"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x1f

    const/16 v13, 0x209

    move-object/from16 v34, v2

    const-string v2, "STRING_TO_FLOAT_MAP"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x20

    const/16 v13, 0x20a

    move-object/from16 v35, v4

    const-string v4, "STRING_TO_DOUBLE_MAP"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x21

    const/16 v13, 0x20b

    move-object/from16 v36, v2

    const-string v2, "STRING_TO_DECIMAL128_MAP"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x22

    const/16 v13, 0x20f

    move-object/from16 v37, v4

    const-string v4, "STRING_TO_OBJECT_ID_MAP"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x23

    const/16 v13, 0x211

    move-object/from16 v38, v2

    const-string v2, "STRING_TO_UUID_MAP"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x24

    const/16 v13, 0x206

    move-object/from16 v39, v4

    const-string v4, "STRING_TO_MIXED_MAP"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x25

    const/16 v13, 0x20c

    move-object/from16 v40, v2

    const-string v2, "STRING_TO_LINK_MAP"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "INTEGER_SET"

    const/16 v13, 0x26

    move-object/from16 v41, v4

    const/16 v4, 0x100

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    new-instance v9, Lio/realm/RealmFieldType;

    const/16 v13, 0x27

    const/16 v4, 0x101

    move-object/from16 v42, v2

    const-string v2, "BOOLEAN_SET"

    invoke-direct {v9, v2, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v4, 0x28

    const/16 v13, 0x102

    move-object/from16 v43, v9

    const-string v9, "STRING_SET"

    invoke-direct {v2, v9, v4, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x29

    const/16 v13, 0x104

    move-object/from16 v44, v2

    const-string v2, "BINARY_SET"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x2a

    const/16 v13, 0x108

    move-object/from16 v45, v4

    const-string v4, "DATE_SET"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x2b

    const/16 v13, 0x109

    move-object/from16 v46, v2

    const-string v2, "FLOAT_SET"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x2c

    const/16 v13, 0x10a

    move-object/from16 v47, v4

    const-string v4, "DOUBLE_SET"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x2d

    const/16 v13, 0x10b

    move-object/from16 v48, v2

    const-string v2, "DECIMAL128_SET"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x2e

    const/16 v13, 0x10f

    move-object/from16 v49, v4

    const-string v4, "OBJECT_ID_SET"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x2f

    const/16 v13, 0x111

    move-object/from16 v50, v2

    const-string v2, "UUID_SET"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v9, 0x30

    const/16 v13, 0x10c

    move-object/from16 v51, v4

    const-string v4, "LINK_SET"

    invoke-direct {v2, v4, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const/16 v9, 0x31

    const/16 v13, 0x106

    move-object/from16 v52, v2

    const-string v2, "MIXED_SET"

    invoke-direct {v4, v2, v9, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    const/16 v2, 0x32

    new-array v2, v2, [Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    const/16 v0, 0x8

    aput-object v8, v2, v0

    const/16 v0, 0x9

    aput-object v6, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v14, v2, v0

    const/16 v0, 0xc

    aput-object v18, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v50, v2, v0

    const/16 v0, 0x2f

    aput-object v51, v2, v0

    const/16 v0, 0x30

    aput-object v52, v2, v0

    const/16 v0, 0x31

    aput-object v4, v2, v0

    sput-object v2, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    const/16 v0, 0x12

    new-array v1, v0, [Lio/realm/RealmFieldType;

    sput-object v1, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    new-array v1, v0, [Lio/realm/RealmFieldType;

    sput-object v1, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    new-array v1, v0, [Lio/realm/RealmFieldType;

    sput-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    new-array v0, v0, [Lio/realm/RealmFieldType;

    sput-object v0, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget v4, v3, Lio/realm/RealmFieldType;->nativeValue:I

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    sget-object v6, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    aput-object v3, v6, v4

    const/16 v6, 0x100

    :goto_1
    const/16 v7, 0x200

    goto :goto_2

    :cond_0
    const/16 v6, 0x100

    if-ge v4, v6, :cond_1

    sget-object v7, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    add-int/lit8 v4, v4, -0x80

    aput-object v3, v7, v4

    goto :goto_1

    :cond_1
    const/16 v7, 0x200

    if-ge v4, v7, :cond_2

    sget-object v8, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v4, v4, -0x100

    aput-object v3, v8, v4

    goto :goto_2

    :cond_2
    sget-object v8, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v4, v4, -0x200

    aput-object v3, v8, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmFieldType;
    .locals 4

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    aget-object v0, v0, p0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/16 v0, 0x80

    .line 14
    .line 15
    const/16 v1, 0x100

    .line 16
    .line 17
    if-gt v0, p0, :cond_1

    .line 18
    .line 19
    if-ge p0, v1, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, p0, -0x80

    .line 22
    .line 23
    sget-object v2, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    if-ge v0, v3, :cond_1

    .line 27
    .line 28
    aget-object v0, v2, v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    const/16 v0, 0x200

    .line 34
    .line 35
    if-gt v1, p0, :cond_2

    .line 36
    .line 37
    if-ge p0, v0, :cond_2

    .line 38
    .line 39
    add-int/lit16 v1, p0, -0x100

    .line 40
    .line 41
    sget-object v2, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    .line 42
    .line 43
    array-length v3, v2

    .line 44
    if-ge v1, v3, :cond_2

    .line 45
    .line 46
    aget-object v1, v2, v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    if-gt v0, p0, :cond_3

    .line 52
    .line 53
    add-int/lit16 v0, p0, -0x200

    .line 54
    .line 55
    sget-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    if-ge v0, v2, :cond_3

    .line 59
    .line 60
    aget-object v0, v1, v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v1, "Invalid native Realm type: "

    .line 68
    .line 69
    invoke-static {v1, p0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .locals 1

    const-class v0, Lio/realm/RealmFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmFieldType;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmFieldType;
    .locals 1

    sget-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    invoke-virtual {v0}, [Lio/realm/RealmFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmFieldType;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()I
    .locals 1

    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Realm type:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    instance-of p1, p1, Lorg/bson/types/ObjectId;

    return p1

    :pswitch_1
    instance-of p1, p1, Lorg/bson/types/Decimal128;

    return p1

    :pswitch_2
    instance-of p1, p1, Ljava/lang/Double;

    return p1

    :pswitch_3
    instance-of p1, p1, Ljava/lang/Float;

    return p1

    :pswitch_4
    instance-of p1, p1, Ljava/util/Date;

    return p1

    :pswitch_5
    :sswitch_0
    return v2

    :sswitch_1
    instance-of p1, p1, Ljava/util/UUID;

    return p1

    :cond_0
    :sswitch_2
    instance-of p1, p1, Lio/realm/h0;

    return p1

    :cond_1
    instance-of v0, p1, [B

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    instance-of p1, p1, Ljava/lang/String;

    return p1

    :cond_5
    instance-of p1, p1, Ljava/lang/Boolean;

    return p1

    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of p1, p1, Ljava/lang/Byte;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_0
        0x8f -> :sswitch_0
        0x91 -> :sswitch_0
        0x104 -> :sswitch_0
        0x106 -> :sswitch_0
        0x10f -> :sswitch_0
        0x111 -> :sswitch_0
        0x204 -> :sswitch_0
        0x206 -> :sswitch_0
        0x20f -> :sswitch_0
        0x211 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x88
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x108
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x200
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x208
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
