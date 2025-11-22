.class public final enum Lp4/d7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lp4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp4/d7;",
        ">;",
        "Lp4/k1;"
    }
.end annotation


# static fields
.field public static final enum b:Lp4/d7;

.field public static final enum c:Lp4/d7;

.field public static final enum d:Lp4/d7;

.field public static final enum e:Lp4/d7;

.field public static final enum f:Lp4/d7;

.field public static final enum g:Lp4/d7;

.field public static final synthetic h:[Lp4/d7;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lp4/d7;

    const-string v1, "UNKNOWN_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lp4/d7;->b:Lp4/d7;

    new-instance v1, Lp4/d7;

    const-string v3, "NV16"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lp4/d7;->c:Lp4/d7;

    new-instance v3, Lp4/d7;

    const-string v5, "NV21"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lp4/d7;->d:Lp4/d7;

    new-instance v5, Lp4/d7;

    const-string v7, "YV12"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lp4/d7;->e:Lp4/d7;

    new-instance v7, Lp4/d7;

    const-string v9, "YUV_420_888"

    const/4 v10, 0x4

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lp4/d7;->f:Lp4/d7;

    new-instance v9, Lp4/d7;

    const-string v12, "JPEG"

    const/4 v13, 0x5

    const/16 v14, 0x8

    invoke-direct {v9, v12, v13, v14}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lp4/d7;

    const-string v15, "BITMAP"

    const/4 v8, 0x6

    invoke-direct {v12, v15, v8, v10}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lp4/d7;->g:Lp4/d7;

    new-instance v15, Lp4/d7;

    const-string v10, "CM_SAMPLE_BUFFER_REF"

    invoke-direct {v15, v10, v11, v13}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lp4/d7;

    const-string v11, "UI_IMAGE"

    invoke-direct {v10, v11, v14, v8}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lp4/d7;

    const-string v14, "CV_PIXEL_BUFFER_REF"

    const/16 v8, 0x9

    invoke-direct {v11, v14, v8, v8}, Lp4/d7;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xa

    new-array v14, v14, [Lp4/d7;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    aput-object v9, v14, v13

    const/4 v0, 0x6

    aput-object v12, v14, v0

    const/4 v0, 0x7

    aput-object v15, v14, v0

    const/16 v0, 0x8

    aput-object v10, v14, v0

    aput-object v11, v14, v8

    sput-object v14, Lp4/d7;->h:[Lp4/d7;

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

    iput p3, p0, Lp4/d7;->a:I

    return-void
.end method

.method public static values()[Lp4/d7;
    .locals 1

    sget-object v0, Lp4/d7;->h:[Lp4/d7;

    invoke-virtual {v0}, [Lp4/d7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp4/d7;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lp4/d7;->a:I

    return v0
.end method
