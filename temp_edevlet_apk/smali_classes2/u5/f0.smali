.class public final enum Lu5/f0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/z$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu5/f0;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/z$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lu5/f0;

.field public static final enum c:Lu5/f0;

.field public static final enum d:Lu5/f0;

.field public static final enum e:Lu5/f0;

.field public static final enum f:Lu5/f0;

.field public static final synthetic g:[Lu5/f0;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lu5/f0;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu5/f0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu5/f0;->b:Lu5/f0;

    new-instance v1, Lu5/f0;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lu5/f0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu5/f0;->c:Lu5/f0;

    new-instance v3, Lu5/f0;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lu5/f0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu5/f0;->d:Lu5/f0;

    new-instance v5, Lu5/f0;

    const-string v7, "DESTROYED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lu5/f0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lu5/f0;->e:Lu5/f0;

    new-instance v7, Lu5/f0;

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lu5/f0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lu5/f0;->f:Lu5/f0;

    const/4 v9, 0x5

    new-array v9, v9, [Lu5/f0;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v11

    sput-object v9, Lu5/f0;->g:[Lu5/f0;

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

    iput p3, p0, Lu5/f0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu5/f0;
    .locals 1

    const-class v0, Lu5/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu5/f0;

    return-object p0
.end method

.method public static values()[Lu5/f0;
    .locals 1

    sget-object v0, Lu5/f0;->g:[Lu5/f0;

    invoke-virtual {v0}, [Lu5/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu5/f0;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 2

    sget-object v0, Lu5/f0;->f:Lu5/f0;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lu5/f0;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
