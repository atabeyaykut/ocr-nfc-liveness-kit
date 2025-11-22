.class public final enum Lp4/i9;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lp4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp4/i9;",
        ">;",
        "Lp4/k1;"
    }
.end annotation


# static fields
.field public static final enum b:Lp4/i9;

.field public static final enum c:Lp4/i9;

.field public static final enum d:Lp4/i9;

.field public static final enum e:Lp4/i9;

.field public static final enum f:Lp4/i9;

.field public static final enum g:Lp4/i9;

.field public static final enum h:Lp4/i9;

.field public static final enum j:Lp4/i9;

.field public static final enum k:Lp4/i9;

.field public static final enum l:Lp4/i9;

.field public static final enum m:Lp4/i9;

.field public static final enum n:Lp4/i9;

.field public static final enum p:Lp4/i9;

.field public static final synthetic q:[Lp4/i9;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lp4/i9;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lp4/i9;

    const-string v3, "CODE_128"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lp4/i9;->b:Lp4/i9;

    new-instance v3, Lp4/i9;

    const-string v5, "CODE_39"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lp4/i9;->c:Lp4/i9;

    new-instance v5, Lp4/i9;

    const-string v7, "CODE_93"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lp4/i9;->d:Lp4/i9;

    new-instance v7, Lp4/i9;

    const-string v9, "CODABAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lp4/i9;->e:Lp4/i9;

    new-instance v9, Lp4/i9;

    const-string v11, "DATA_MATRIX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lp4/i9;->f:Lp4/i9;

    new-instance v11, Lp4/i9;

    const-string v13, "EAN_13"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lp4/i9;->g:Lp4/i9;

    new-instance v13, Lp4/i9;

    const-string v15, "EAN_8"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lp4/i9;->h:Lp4/i9;

    new-instance v15, Lp4/i9;

    const-string v14, "ITF"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lp4/i9;->j:Lp4/i9;

    new-instance v14, Lp4/i9;

    const-string v12, "QR_CODE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lp4/i9;->k:Lp4/i9;

    new-instance v12, Lp4/i9;

    const-string v10, "UPC_A"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lp4/i9;->l:Lp4/i9;

    new-instance v10, Lp4/i9;

    const-string v8, "UPC_E"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lp4/i9;->m:Lp4/i9;

    new-instance v8, Lp4/i9;

    const-string v6, "PDF417"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lp4/i9;->n:Lp4/i9;

    new-instance v6, Lp4/i9;

    const-string v4, "AZTEC"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lp4/i9;->p:Lp4/i9;

    new-instance v4, Lp4/i9;

    const-string v2, "DATABAR"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lp4/i9;

    const-string v6, "TEZ_CODE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const/16 v8, 0x10

    invoke-direct {v2, v6, v4, v8}, Lp4/i9;-><init>(Ljava/lang/String;II)V

    new-array v6, v8, [Lp4/i9;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lp4/i9;->q:[Lp4/i9;

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

    iput p3, p0, Lp4/i9;->a:I

    return-void
.end method

.method public static values()[Lp4/i9;
    .locals 1

    sget-object v0, Lp4/i9;->q:[Lp4/i9;

    invoke-virtual {v0}, [Lp4/i9;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp4/i9;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lp4/i9;->a:I

    return v0
.end method
