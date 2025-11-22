.class public final enum Lu5/o0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/z$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu5/o0;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/z$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lu5/o0;

.field public static final enum c:Lu5/o0;

.field public static final enum d:Lu5/o0;

.field public static final enum e:Lu5/o0;

.field public static final enum f:Lu5/o0;

.field public static final enum g:Lu5/o0;

.field public static final synthetic h:[Lu5/o0;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lu5/o0;

    const-string v1, "UNKNOWN_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu5/o0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu5/o0;->b:Lu5/o0;

    new-instance v1, Lu5/o0;

    const-string v3, "TINK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lu5/o0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu5/o0;->c:Lu5/o0;

    new-instance v3, Lu5/o0;

    const-string v5, "LEGACY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lu5/o0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu5/o0;->d:Lu5/o0;

    new-instance v5, Lu5/o0;

    const-string v7, "RAW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lu5/o0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lu5/o0;->e:Lu5/o0;

    new-instance v7, Lu5/o0;

    const-string v9, "CRUNCHY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lu5/o0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lu5/o0;->f:Lu5/o0;

    new-instance v9, Lu5/o0;

    const/4 v11, -0x1

    const-string v12, "UNRECOGNIZED"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lu5/o0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lu5/o0;->g:Lu5/o0;

    const/4 v11, 0x6

    new-array v11, v11, [Lu5/o0;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lu5/o0;->h:[Lu5/o0;

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

    iput p3, p0, Lu5/o0;->a:I

    return-void
.end method

.method public static n(I)Lu5/o0;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lu5/o0;->f:Lu5/o0;

    return-object p0

    :cond_1
    sget-object p0, Lu5/o0;->e:Lu5/o0;

    return-object p0

    :cond_2
    sget-object p0, Lu5/o0;->d:Lu5/o0;

    return-object p0

    :cond_3
    sget-object p0, Lu5/o0;->c:Lu5/o0;

    return-object p0

    :cond_4
    sget-object p0, Lu5/o0;->b:Lu5/o0;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu5/o0;
    .locals 1

    const-class v0, Lu5/o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu5/o0;

    return-object p0
.end method

.method public static values()[Lu5/o0;
    .locals 1

    sget-object v0, Lu5/o0;->h:[Lu5/o0;

    invoke-virtual {v0}, [Lu5/o0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu5/o0;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 2

    sget-object v0, Lu5/o0;->g:Lu5/o0;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lu5/o0;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
