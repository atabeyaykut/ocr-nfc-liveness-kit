.class public final enum Ldb/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldb/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldb/i;

.field public static final enum b:Ldb/i;

.field public static final synthetic c:[Ldb/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldb/i;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldb/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb/i;->a:Ldb/i;

    new-instance v1, Ldb/i;

    const-string v3, "MUTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldb/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldb/i;->b:Ldb/i;

    const/4 v3, 0x2

    new-array v3, v3, [Ldb/i;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ldb/i;->c:[Ldb/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldb/i;
    .locals 1

    const-class v0, Ldb/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldb/i;

    return-object p0
.end method

.method public static values()[Ldb/i;
    .locals 1

    sget-object v0, Ldb/i;->c:[Ldb/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldb/i;

    return-object v0
.end method
