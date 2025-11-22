.class public final enum Ldb/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldb/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldb/k;

.field public static final enum b:Ldb/k;

.field public static final enum c:Ldb/k;

.field public static final synthetic d:[Ldb/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ldb/k;

    const-string v1, "FORCE_FLEXIBILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldb/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb/k;->a:Ldb/k;

    new-instance v1, Ldb/k;

    const-string v3, "NULLABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldb/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldb/k;->b:Ldb/k;

    new-instance v3, Ldb/k;

    const-string v5, "NOT_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldb/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldb/k;->c:Ldb/k;

    const/4 v5, 0x3

    new-array v5, v5, [Ldb/k;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ldb/k;->d:[Ldb/k;

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

.method public static valueOf(Ljava/lang/String;)Ldb/k;
    .locals 1

    const-class v0, Ldb/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldb/k;

    return-object p0
.end method

.method public static values()[Ldb/k;
    .locals 1

    sget-object v0, Ldb/k;->d:[Ldb/k;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldb/k;

    return-object v0
.end method
