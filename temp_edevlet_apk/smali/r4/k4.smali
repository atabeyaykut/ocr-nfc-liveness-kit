.class public final enum Lr4/k4;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lr4/c7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/k4;",
        ">;",
        "Lr4/c7;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/k4;

.field public static final enum c:Lr4/k4;

.field public static final enum d:Lr4/k4;

.field public static final enum e:Lr4/k4;

.field public static final enum f:Lr4/k4;

.field public static final synthetic g:[Lr4/k4;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lr4/k4;

    const-string v1, "SOURCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lr4/k4;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lr4/k4;

    const-string v3, "BITMAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lr4/k4;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr4/k4;->b:Lr4/k4;

    new-instance v3, Lr4/k4;

    const-string v5, "BYTEARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lr4/k4;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr4/k4;->c:Lr4/k4;

    new-instance v5, Lr4/k4;

    const-string v7, "BYTEBUFFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lr4/k4;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lr4/k4;->d:Lr4/k4;

    new-instance v7, Lr4/k4;

    const-string v9, "FILEPATH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lr4/k4;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lr4/k4;->e:Lr4/k4;

    new-instance v9, Lr4/k4;

    const-string v11, "ANDROID_MEDIA_IMAGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lr4/k4;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lr4/k4;->f:Lr4/k4;

    const/4 v11, 0x6

    new-array v11, v11, [Lr4/k4;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lr4/k4;->g:[Lr4/k4;

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

    iput p3, p0, Lr4/k4;->a:I

    return-void
.end method

.method public static values()[Lr4/k4;
    .locals 1

    sget-object v0, Lr4/k4;->g:[Lr4/k4;

    invoke-virtual {v0}, [Lr4/k4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/k4;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr4/k4;->a:I

    return v0
.end method
