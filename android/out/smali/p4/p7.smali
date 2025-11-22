.class public final enum Lp4/p7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lp4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp4/p7;",
        ">;",
        "Lp4/k1;"
    }
.end annotation


# static fields
.field public static final enum b:Lp4/p7;

.field public static final enum c:Lp4/p7;

.field public static final enum d:Lp4/p7;

.field public static final enum e:Lp4/p7;

.field public static final synthetic f:[Lp4/p7;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 136

    new-instance v0, Lp4/p7;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lp4/p7;

    const-string v2, "ON_DEVICE_FACE_DETECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lp4/p7;

    const-string v3, "ON_DEVICE_FACE_CREATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lp4/p7;

    const-string v4, "ON_DEVICE_FACE_CLOSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lp4/p7;

    const-string v5, "ON_DEVICE_FACE_LOAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lp4/p7;

    const-string v6, "ON_DEVICE_TEXT_DETECT"

    const/4 v7, 0x5

    const/16 v8, 0xb

    invoke-direct {v5, v6, v7, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lp4/p7;

    const-string v7, "ON_DEVICE_TEXT_CREATE"

    const/4 v9, 0x6

    const/16 v10, 0xc

    invoke-direct {v6, v7, v9, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lp4/p7;

    const-string v9, "ON_DEVICE_TEXT_CLOSE"

    const/4 v11, 0x7

    const/16 v12, 0xd

    invoke-direct {v7, v9, v11, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lp4/p7;

    const-string v11, "ON_DEVICE_BARCODE_DETECT"

    const/16 v13, 0x8

    const/16 v14, 0x15

    invoke-direct {v9, v11, v13, v14}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lp4/p7;->b:Lp4/p7;

    new-instance v11, Lp4/p7;

    const-string v13, "ON_DEVICE_BARCODE_CREATE"

    const/16 v15, 0x9

    const/16 v14, 0x16

    invoke-direct {v11, v13, v15, v14}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lp4/p7;->c:Lp4/p7;

    new-instance v13, Lp4/p7;

    const-string v15, "ON_DEVICE_BARCODE_CLOSE"

    const/16 v14, 0xa

    const/16 v12, 0x17

    invoke-direct {v13, v15, v14, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lp4/p7;

    const-string v15, "ON_DEVICE_BARCODE_LOAD"

    const/16 v12, 0x18

    invoke-direct {v14, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lp4/p7;->d:Lp4/p7;

    new-instance v8, Lp4/p7;

    const-string v15, "ON_DEVICE_IMAGE_LABEL_DETECT"

    const/16 v12, 0x8d

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_IMAGE_LABEL_CREATE"

    const/16 v15, 0x8e

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v10, v12, v8, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x8f

    const-string v15, "ON_DEVICE_IMAGE_LABEL_CLOSE"

    move-object/from16 v17, v10

    const/16 v10, 0xe

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x90

    const-string v15, "ON_DEVICE_IMAGE_LABEL_LOAD"

    move-object/from16 v18, v8

    const/16 v8, 0xf

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x97

    const-string v15, "ON_DEVICE_SMART_REPLY_DETECT"

    move-object/from16 v19, v10

    const/16 v10, 0x10

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x98

    const-string v15, "ON_DEVICE_SMART_REPLY_CREATE"

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x99

    const-string v15, "ON_DEVICE_SMART_REPLY_CLOSE"

    move-object/from16 v21, v10

    const/16 v10, 0x12

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x9a

    const-string v15, "ON_DEVICE_SMART_REPLY_BLACKLIST_UPDATE"

    move-object/from16 v22, v8

    const/16 v8, 0x13

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xa1

    const-string v15, "ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT"

    move-object/from16 v23, v10

    const/16 v10, 0x14

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE"

    const/16 v15, 0xa2

    move-object/from16 v24, v8

    const/16 v8, 0x15

    invoke-direct {v10, v12, v8, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_LOAD"

    const/16 v15, 0xa4

    move-object/from16 v25, v10

    const/16 v10, 0x16

    invoke-direct {v8, v12, v10, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_CLOSE"

    const/16 v15, 0xa3

    move-object/from16 v26, v8

    const/16 v8, 0x17

    invoke-direct {v10, v12, v8, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "ON_DEVICE_TRANSLATOR_TRANSLATE"

    const/16 v15, 0xab

    move-object/from16 v27, v10

    const/16 v10, 0x18

    invoke-direct {v8, v12, v10, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xac

    const-string v15, "ON_DEVICE_TRANSLATOR_CREATE"

    move-object/from16 v28, v8

    const/16 v8, 0x19

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xad

    const-string v15, "ON_DEVICE_TRANSLATOR_LOAD"

    move-object/from16 v29, v10

    const/16 v10, 0x1a

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xae

    const-string v15, "ON_DEVICE_TRANSLATOR_CLOSE"

    move-object/from16 v30, v8

    const/16 v8, 0x1b

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xaf

    const-string v15, "ON_DEVICE_TRANSLATOR_DOWNLOAD"

    move-object/from16 v31, v10

    const/16 v10, 0x1c

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xf1

    const-string v15, "ON_DEVICE_ENTITY_EXTRACTION_ANNOTATE"

    move-object/from16 v32, v8

    const/16 v8, 0x1d

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xf2

    const-string v15, "ON_DEVICE_ENTITY_EXTRACTION_CREATE"

    move-object/from16 v33, v10

    const/16 v10, 0x1e

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_LOAD"

    const/16 v15, 0x1f

    move-object/from16 v34, v8

    const/16 v8, 0xf3

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_CLOSE"

    const/16 v15, 0x20

    move-object/from16 v35, v10

    const/16 v10, 0xf4

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_DOWNLOAD"

    const/16 v15, 0x21

    move-object/from16 v36, v8

    const/16 v8, 0xf5

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xbf

    const-string v15, "ON_DEVICE_OBJECT_CREATE"

    move-object/from16 v37, v10

    const/16 v10, 0x22

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xc0

    const-string v15, "ON_DEVICE_OBJECT_LOAD"

    move-object/from16 v38, v8

    const/16 v8, 0x23

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xc1

    const-string v15, "ON_DEVICE_OBJECT_INFERENCE"

    move-object/from16 v39, v10

    const/16 v10, 0x24

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xc2

    const-string v15, "ON_DEVICE_OBJECT_CLOSE"

    move-object/from16 v40, v8

    const/16 v8, 0x25

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x137

    const-string v15, "ON_DEVICE_DI_CREATE"

    move-object/from16 v41, v10

    const/16 v10, 0x26

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x138

    const-string v15, "ON_DEVICE_DI_LOAD"

    move-object/from16 v42, v8

    const/16 v8, 0x27

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x139

    const-string v15, "ON_DEVICE_DI_DOWNLOAD"

    move-object/from16 v43, v10

    const/16 v10, 0x28

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_DI_RECOGNIZE"

    const/16 v15, 0x29

    move-object/from16 v44, v8

    const/16 v8, 0x13a

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "ON_DEVICE_DI_CLOSE"

    const/16 v15, 0x2a

    move-object/from16 v45, v10

    const/16 v10, 0x13b

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "ON_DEVICE_POSE_CREATE"

    const/16 v15, 0x2b

    move-object/from16 v46, v8

    const/16 v8, 0x141

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x142

    const-string v15, "ON_DEVICE_POSE_LOAD"

    move-object/from16 v47, v10

    const/16 v10, 0x2c

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x143

    const-string v15, "ON_DEVICE_POSE_INFERENCE"

    move-object/from16 v48, v8

    const/16 v8, 0x2d

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x144

    const-string v15, "ON_DEVICE_POSE_CLOSE"

    move-object/from16 v49, v10

    const/16 v10, 0x2e

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x14b

    const-string v15, "ON_DEVICE_SEGMENTATION_CREATE"

    move-object/from16 v50, v8

    const/16 v8, 0x2f

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x14c

    const-string v15, "ON_DEVICE_SEGMENTATION_LOAD"

    move-object/from16 v51, v10

    const/16 v10, 0x30

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x14d

    const-string v15, "ON_DEVICE_SEGMENTATION_INFERENCE"

    move-object/from16 v52, v8

    const/16 v8, 0x31

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x14e

    const-string v15, "ON_DEVICE_SEGMENTATION_CLOSE"

    move-object/from16 v53, v10

    const/16 v10, 0x32

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CUSTOM_OBJECT_CREATE"

    const/16 v15, 0x33

    move-object/from16 v54, v8

    const/16 v8, 0x155

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "CUSTOM_OBJECT_LOAD"

    const/16 v15, 0x34

    move-object/from16 v55, v10

    const/16 v10, 0x156

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CUSTOM_OBJECT_INFERENCE"

    const/16 v15, 0x35

    move-object/from16 v56, v8

    const/16 v8, 0x157

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x158

    const-string v15, "CUSTOM_OBJECT_CLOSE"

    move-object/from16 v57, v10

    const/16 v10, 0x36

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x15f

    const-string v15, "CUSTOM_IMAGE_LABEL_CREATE"

    move-object/from16 v58, v8

    const/16 v8, 0x37

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x160

    const-string v15, "CUSTOM_IMAGE_LABEL_LOAD"

    move-object/from16 v59, v10

    const/16 v10, 0x38

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x161

    const-string v15, "CUSTOM_IMAGE_LABEL_DETECT"

    move-object/from16 v60, v8

    const/16 v8, 0x39

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x162

    const-string v15, "CUSTOM_IMAGE_LABEL_CLOSE"

    move-object/from16 v61, v10

    const/16 v10, 0x3a

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_FACE_DETECT"

    const/16 v15, 0x3b

    move-object/from16 v62, v8

    const/16 v8, 0x1f

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "CLOUD_FACE_CREATE"

    const/16 v15, 0x3c

    move-object/from16 v63, v10

    const/16 v10, 0x20

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_FACE_CLOSE"

    const/16 v15, 0x3d

    move-object/from16 v64, v8

    const/16 v8, 0x21

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "CLOUD_CROP_HINTS_CREATE"

    const/16 v15, 0x3e

    move-object/from16 v65, v10

    const/16 v10, 0x29

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_CROP_HINTS_DETECT"

    const/16 v15, 0x3f

    move-object/from16 v66, v8

    const/16 v8, 0x2a

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "CLOUD_CROP_HINTS_CLOSE"

    const/16 v15, 0x40

    move-object/from16 v67, v10

    const/16 v10, 0x2b

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_DOCUMENT_TEXT_CREATE"

    const/16 v15, 0x41

    move-object/from16 v68, v8

    const/16 v8, 0x33

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "CLOUD_DOCUMENT_TEXT_DETECT"

    const/16 v15, 0x42

    move-object/from16 v69, v10

    const/16 v10, 0x34

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_DOCUMENT_TEXT_CLOSE"

    const/16 v15, 0x43

    move-object/from16 v70, v8

    const/16 v8, 0x35

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_CREATE"

    const/16 v15, 0x44

    move-object/from16 v71, v10

    const/16 v10, 0x3d

    invoke-direct {v8, v12, v15, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x45

    const-string v15, "CLOUD_IMAGE_PROPERTIES_DETECT"

    move-object/from16 v72, v8

    const/16 v8, 0x3e

    invoke-direct {v10, v15, v12, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x46

    const-string v15, "CLOUD_IMAGE_PROPERTIES_CLOSE"

    move-object/from16 v73, v10

    const/16 v10, 0x3f

    invoke-direct {v8, v15, v12, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_IMAGE_LABEL_CREATE"

    const/16 v15, 0x47

    invoke-direct {v10, v12, v15, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lp4/p7;

    const-string v15, "CLOUD_IMAGE_LABEL_DETECT"

    move-object/from16 v74, v10

    const/16 v10, 0x48

    invoke-direct {v12, v15, v10, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lp4/p7;

    const-string v10, "CLOUD_IMAGE_LABEL_CLOSE"

    move-object/from16 v75, v12

    const/16 v12, 0x49

    invoke-direct {v15, v10, v12, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const-string v12, "CLOUD_LANDMARK_CREATE"

    move-object/from16 v76, v15

    const/16 v15, 0x4a

    move-object/from16 v77, v8

    const/16 v8, 0x51

    invoke-direct {v10, v12, v15, v8}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lp4/p7;

    const-string v15, "CLOUD_LANDMARK_DETECT"

    const/16 v8, 0x4b

    move-object/from16 v78, v10

    const/16 v10, 0x52

    invoke-direct {v12, v15, v8, v10}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v15, 0x53

    const-string v10, "CLOUD_LANDMARK_CLOSE"

    move-object/from16 v79, v12

    const/16 v12, 0x4c

    invoke-direct {v8, v10, v12, v15}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x5b

    const-string v15, "CLOUD_LOGO_CREATE"

    move-object/from16 v80, v8

    const/16 v8, 0x4d

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x5c

    const-string v15, "CLOUD_LOGO_DETECT"

    move-object/from16 v81, v10

    const/16 v10, 0x4e

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x5d

    const-string v15, "CLOUD_LOGO_CLOSE"

    move-object/from16 v82, v8

    const/16 v8, 0x4f

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x6f

    const-string v15, "CLOUD_SAFE_SEARCH_CREATE"

    move-object/from16 v83, v10

    const/16 v10, 0x50

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x70

    const-string v15, "CLOUD_SAFE_SEARCH_DETECT"

    move-object/from16 v84, v8

    const/16 v8, 0x51

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x71

    const-string v15, "CLOUD_SAFE_SEARCH_CLOSE"

    move-object/from16 v85, v10

    const/16 v10, 0x52

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x79

    const-string v15, "CLOUD_TEXT_CREATE"

    move-object/from16 v86, v8

    const/16 v8, 0x53

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x7a

    const-string v15, "CLOUD_TEXT_DETECT"

    move-object/from16 v87, v10

    const/16 v10, 0x54

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x7b

    const-string v15, "CLOUD_TEXT_CLOSE"

    move-object/from16 v88, v8

    const/16 v8, 0x55

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x83

    const-string v15, "CLOUD_WEB_SEARCH_CREATE"

    move-object/from16 v89, v10

    const/16 v10, 0x56

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x84

    const-string v15, "CLOUD_WEB_SEARCH_DETECT"

    move-object/from16 v90, v8

    const/16 v8, 0x57

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x85

    const-string v15, "CLOUD_WEB_SEARCH_CLOSE"

    move-object/from16 v91, v10

    const/16 v10, 0x58

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x66

    const-string v15, "CUSTOM_MODEL_RUN"

    move-object/from16 v92, v8

    const/16 v8, 0x59

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x67

    const-string v15, "CUSTOM_MODEL_CREATE"

    move-object/from16 v93, v10

    const/16 v10, 0x5a

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x68

    const-string v15, "CUSTOM_MODEL_CLOSE"

    move-object/from16 v94, v8

    const/16 v8, 0x5b

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x69

    const-string v15, "CUSTOM_MODEL_LOAD"

    move-object/from16 v95, v10

    const/16 v10, 0x5c

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xb5

    const-string v15, "AUTOML_IMAGE_LABELING_RUN"

    move-object/from16 v96, v8

    const/16 v8, 0x5d

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xb6

    const-string v15, "AUTOML_IMAGE_LABELING_CREATE"

    move-object/from16 v97, v10

    const/16 v10, 0x5e

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xb7

    const-string v15, "AUTOML_IMAGE_LABELING_CLOSE"

    move-object/from16 v98, v8

    const/16 v8, 0x5f

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xb8

    const-string v15, "AUTOML_IMAGE_LABELING_LOAD"

    move-object/from16 v99, v10

    const/16 v10, 0x60

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x64

    const-string v15, "MODEL_DOWNLOAD"

    move-object/from16 v100, v8

    const/16 v8, 0x61

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x65

    const-string v15, "MODEL_UPDATE"

    move-object/from16 v101, v10

    const/16 v10, 0x62

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xfb

    const-string v15, "REMOTE_MODEL_IS_DOWNLOADED"

    move-object/from16 v102, v8

    const/16 v8, 0x63

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xfc

    const-string v15, "REMOTE_MODEL_DELETE_ON_DEVICE"

    move-object/from16 v103, v10

    const/16 v10, 0x64

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x104

    const-string v15, "ACCELERATION_ANALYTICS"

    move-object/from16 v104, v8

    const/16 v8, 0x65

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xc8

    const-string v15, "AGGREGATED_AUTO_ML_IMAGE_LABELING_INFERENCE"

    move-object/from16 v105, v10

    const/16 v10, 0x66

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xc9

    const-string v15, "AGGREGATED_CUSTOM_MODEL_INFERENCE"

    move-object/from16 v106, v8

    const/16 v8, 0x67

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xca

    const-string v15, "AGGREGATED_ON_DEVICE_BARCODE_DETECTION"

    move-object/from16 v107, v10

    const/16 v10, 0x68

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lp4/p7;->e:Lp4/p7;

    new-instance v10, Lp4/p7;

    const/16 v12, 0xcb

    const-string v15, "AGGREGATED_ON_DEVICE_FACE_DETECTION"

    move-object/from16 v108, v8

    const/16 v8, 0x69

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xcc

    const-string v15, "AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION"

    move-object/from16 v109, v10

    const/16 v10, 0x6a

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xcd

    const-string v15, "AGGREGATED_ON_DEVICE_OBJECT_INFERENCE"

    move-object/from16 v110, v8

    const/16 v8, 0x6b

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xce

    const-string v15, "AGGREGATED_ON_DEVICE_TEXT_DETECTION"

    move-object/from16 v111, v10

    const/16 v10, 0x6c

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xcf

    const-string v15, "AGGREGATED_ON_DEVICE_POSE_DETECTION"

    move-object/from16 v112, v8

    const/16 v8, 0x6d

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xd0

    const-string v15, "AGGREGATED_ON_DEVICE_SEGMENTATION"

    move-object/from16 v113, v10

    const/16 v10, 0x6e

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0xd1

    const-string v15, "AGGREGATED_CUSTOM_OBJECT_INFERENCE"

    move-object/from16 v114, v8

    const/16 v8, 0x6f

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0xd2

    const-string v15, "AGGREGATED_CUSTOM_IMAGE_LABEL_DETECTION"

    move-object/from16 v115, v10

    const/16 v10, 0x70

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x10f

    const-string v15, "REMOTE_CONFIG_FETCH"

    move-object/from16 v116, v8

    const/16 v8, 0x71

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x110

    const-string v15, "REMOTE_CONFIG_ACTIVATE"

    move-object/from16 v117, v10

    const/16 v10, 0x72

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x111

    const-string v15, "REMOTE_CONFIG_LOAD"

    move-object/from16 v118, v8

    const/16 v8, 0x73

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x119

    const-string v15, "REMOTE_CONFIG_FRC_FETCH"

    move-object/from16 v119, v10

    const/16 v10, 0x74

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x123

    const-string v15, "INSTALLATION_ID_INIT"

    move-object/from16 v120, v8

    const/16 v8, 0x75

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x124

    const-string v15, "INSTALLATION_ID_REGISTER_NEW_ID"

    move-object/from16 v121, v10

    const/16 v10, 0x76

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x125

    const-string v15, "INSTALLATION_ID_REFRESH_TEMPORARY_TOKEN"

    move-object/from16 v122, v8

    const/16 v8, 0x77

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x12d

    const-string v15, "INSTALLATION_ID_FIS_CREATE_INSTALLATION"

    move-object/from16 v123, v10

    const/16 v10, 0x78

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x12e

    const-string v15, "INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN"

    move-object/from16 v124, v8

    const/16 v8, 0x79

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x169

    const-string v15, "INPUT_IMAGE_CONSTRUCTION"

    move-object/from16 v125, v10

    const/16 v10, 0x7a

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x173

    const-string v15, "HANDLE_LEAKED"

    move-object/from16 v126, v8

    const/16 v8, 0x7b

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x17d

    const-string v15, "CAMERA_SOURCE"

    move-object/from16 v127, v10

    const/16 v10, 0x7c

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x187

    const-string v15, "OPTIONAL_MODULE_IMAGE_LABELING"

    move-object/from16 v128, v8

    const/16 v8, 0x7d

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x191

    const-string v15, "OPTIONAL_MODULE_LANGUAGE_ID"

    move-object/from16 v129, v10

    const/16 v10, 0x7e

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x19b

    const-string v15, "OPTIONAL_MODULE_NLCLASSIFIER"

    move-object/from16 v130, v8

    const/16 v8, 0x7f

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x1a5

    const-string v15, "NLCLASSIFIER_CLIENT_LIBRARY"

    move-object/from16 v131, v10

    const/16 v10, 0x80

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x1b9

    const-string v15, "OPTIONAL_MODULE_FACE_DETECTION"

    move-object/from16 v132, v8

    const/16 v8, 0x81

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x1af

    const-string v15, "ACCELERATION_ALLOWLIST_GET"

    move-object/from16 v133, v10

    const/16 v10, 0x82

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/p7;

    const/16 v12, 0x1b0

    const-string v15, "ACCELERATION_ALLOWLIST_FETCH"

    move-object/from16 v134, v8

    const/16 v8, 0x83

    invoke-direct {v10, v15, v8, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lp4/p7;

    const/16 v12, 0x1ba

    const-string v15, "ODML_IMAGE"

    move-object/from16 v135, v10

    const/16 v10, 0x84

    invoke-direct {v8, v15, v10, v12}, Lp4/p7;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x85

    new-array v10, v10, [Lp4/p7;

    const/4 v12, 0x0

    aput-object v0, v10, v12

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    const/16 v0, 0x9

    aput-object v11, v10, v0

    const/16 v0, 0xa

    aput-object v13, v10, v0

    const/16 v0, 0xb

    aput-object v14, v10, v0

    const/16 v0, 0xc

    aput-object v16, v10, v0

    const/16 v0, 0xd

    aput-object v17, v10, v0

    const/16 v0, 0xe

    aput-object v18, v10, v0

    const/16 v0, 0xf

    aput-object v19, v10, v0

    const/16 v0, 0x10

    aput-object v20, v10, v0

    const/16 v0, 0x11

    aput-object v21, v10, v0

    const/16 v0, 0x12

    aput-object v22, v10, v0

    const/16 v0, 0x13

    aput-object v23, v10, v0

    const/16 v0, 0x14

    aput-object v24, v10, v0

    const/16 v0, 0x15

    aput-object v25, v10, v0

    const/16 v0, 0x16

    aput-object v26, v10, v0

    const/16 v0, 0x17

    aput-object v27, v10, v0

    const/16 v0, 0x18

    aput-object v28, v10, v0

    const/16 v0, 0x19

    aput-object v29, v10, v0

    const/16 v0, 0x1a

    aput-object v30, v10, v0

    const/16 v0, 0x1b

    aput-object v31, v10, v0

    const/16 v0, 0x1c

    aput-object v32, v10, v0

    const/16 v0, 0x1d

    aput-object v33, v10, v0

    const/16 v0, 0x1e

    aput-object v34, v10, v0

    const/16 v0, 0x1f

    aput-object v35, v10, v0

    const/16 v0, 0x20

    aput-object v36, v10, v0

    const/16 v0, 0x21

    aput-object v37, v10, v0

    const/16 v0, 0x22

    aput-object v38, v10, v0

    const/16 v0, 0x23

    aput-object v39, v10, v0

    const/16 v0, 0x24

    aput-object v40, v10, v0

    const/16 v0, 0x25

    aput-object v41, v10, v0

    const/16 v0, 0x26

    aput-object v42, v10, v0

    const/16 v0, 0x27

    aput-object v43, v10, v0

    const/16 v0, 0x28

    aput-object v44, v10, v0

    const/16 v0, 0x29

    aput-object v45, v10, v0

    const/16 v0, 0x2a

    aput-object v46, v10, v0

    const/16 v0, 0x2b

    aput-object v47, v10, v0

    const/16 v0, 0x2c

    aput-object v48, v10, v0

    const/16 v0, 0x2d

    aput-object v49, v10, v0

    const/16 v0, 0x2e

    aput-object v50, v10, v0

    const/16 v0, 0x2f

    aput-object v51, v10, v0

    const/16 v0, 0x30

    aput-object v52, v10, v0

    const/16 v0, 0x31

    aput-object v53, v10, v0

    const/16 v0, 0x32

    aput-object v54, v10, v0

    const/16 v0, 0x33

    aput-object v55, v10, v0

    const/16 v0, 0x34

    aput-object v56, v10, v0

    const/16 v0, 0x35

    aput-object v57, v10, v0

    const/16 v0, 0x36

    aput-object v58, v10, v0

    const/16 v0, 0x37

    aput-object v59, v10, v0

    const/16 v0, 0x38

    aput-object v60, v10, v0

    const/16 v0, 0x39

    aput-object v61, v10, v0

    const/16 v0, 0x3a

    aput-object v62, v10, v0

    const/16 v0, 0x3b

    aput-object v63, v10, v0

    const/16 v0, 0x3c

    aput-object v64, v10, v0

    const/16 v0, 0x3d

    aput-object v65, v10, v0

    const/16 v0, 0x3e

    aput-object v66, v10, v0

    const/16 v0, 0x3f

    aput-object v67, v10, v0

    const/16 v0, 0x40

    aput-object v68, v10, v0

    const/16 v0, 0x41

    aput-object v69, v10, v0

    const/16 v0, 0x42

    aput-object v70, v10, v0

    const/16 v0, 0x43

    aput-object v71, v10, v0

    const/16 v0, 0x44

    aput-object v72, v10, v0

    const/16 v0, 0x45

    aput-object v73, v10, v0

    const/16 v0, 0x46

    aput-object v77, v10, v0

    const/16 v0, 0x47

    aput-object v74, v10, v0

    const/16 v0, 0x48

    aput-object v75, v10, v0

    const/16 v0, 0x49

    aput-object v76, v10, v0

    const/16 v0, 0x4a

    aput-object v78, v10, v0

    const/16 v0, 0x4b

    aput-object v79, v10, v0

    const/16 v0, 0x4c

    aput-object v80, v10, v0

    const/16 v0, 0x4d

    aput-object v81, v10, v0

    const/16 v0, 0x4e

    aput-object v82, v10, v0

    const/16 v0, 0x4f

    aput-object v83, v10, v0

    const/16 v0, 0x50

    aput-object v84, v10, v0

    const/16 v0, 0x51

    aput-object v85, v10, v0

    const/16 v0, 0x52

    aput-object v86, v10, v0

    const/16 v0, 0x53

    aput-object v87, v10, v0

    const/16 v0, 0x54

    aput-object v88, v10, v0

    const/16 v0, 0x55

    aput-object v89, v10, v0

    const/16 v0, 0x56

    aput-object v90, v10, v0

    const/16 v0, 0x57

    aput-object v91, v10, v0

    const/16 v0, 0x58

    aput-object v92, v10, v0

    const/16 v0, 0x59

    aput-object v93, v10, v0

    const/16 v0, 0x5a

    aput-object v94, v10, v0

    const/16 v0, 0x5b

    aput-object v95, v10, v0

    const/16 v0, 0x5c

    aput-object v96, v10, v0

    const/16 v0, 0x5d

    aput-object v97, v10, v0

    const/16 v0, 0x5e

    aput-object v98, v10, v0

    const/16 v0, 0x5f

    aput-object v99, v10, v0

    const/16 v0, 0x60

    aput-object v100, v10, v0

    const/16 v0, 0x61

    aput-object v101, v10, v0

    const/16 v0, 0x62

    aput-object v102, v10, v0

    const/16 v0, 0x63

    aput-object v103, v10, v0

    const/16 v0, 0x64

    aput-object v104, v10, v0

    const/16 v0, 0x65

    aput-object v105, v10, v0

    const/16 v0, 0x66

    aput-object v106, v10, v0

    const/16 v0, 0x67

    aput-object v107, v10, v0

    const/16 v0, 0x68

    aput-object v108, v10, v0

    const/16 v0, 0x69

    aput-object v109, v10, v0

    const/16 v0, 0x6a

    aput-object v110, v10, v0

    const/16 v0, 0x6b

    aput-object v111, v10, v0

    const/16 v0, 0x6c

    aput-object v112, v10, v0

    const/16 v0, 0x6d

    aput-object v113, v10, v0

    const/16 v0, 0x6e

    aput-object v114, v10, v0

    const/16 v0, 0x6f

    aput-object v115, v10, v0

    const/16 v0, 0x70

    aput-object v116, v10, v0

    const/16 v0, 0x71

    aput-object v117, v10, v0

    const/16 v0, 0x72

    aput-object v118, v10, v0

    const/16 v0, 0x73

    aput-object v119, v10, v0

    const/16 v0, 0x74

    aput-object v120, v10, v0

    const/16 v0, 0x75

    aput-object v121, v10, v0

    const/16 v0, 0x76

    aput-object v122, v10, v0

    const/16 v0, 0x77

    aput-object v123, v10, v0

    const/16 v0, 0x78

    aput-object v124, v10, v0

    const/16 v0, 0x79

    aput-object v125, v10, v0

    const/16 v0, 0x7a

    aput-object v126, v10, v0

    const/16 v0, 0x7b

    aput-object v127, v10, v0

    const/16 v0, 0x7c

    aput-object v128, v10, v0

    const/16 v0, 0x7d

    aput-object v129, v10, v0

    const/16 v0, 0x7e

    aput-object v130, v10, v0

    const/16 v0, 0x7f

    aput-object v131, v10, v0

    const/16 v0, 0x80

    aput-object v132, v10, v0

    const/16 v0, 0x81

    aput-object v133, v10, v0

    const/16 v0, 0x82

    aput-object v134, v10, v0

    const/16 v0, 0x83

    aput-object v135, v10, v0

    const/16 v0, 0x84

    aput-object v8, v10, v0

    sput-object v10, Lp4/p7;->f:[Lp4/p7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lp4/p7;->a:I

    return-void
.end method

.method public static values()[Lp4/p7;
    .locals 1

    sget-object v0, Lp4/p7;->f:[Lp4/p7;

    invoke-virtual {v0}, [Lp4/p7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp4/p7;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lp4/p7;->a:I

    return v0
.end method
