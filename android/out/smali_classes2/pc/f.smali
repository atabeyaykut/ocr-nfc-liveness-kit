.class public final enum Lpc/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpc/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lpc/f;

.field public static final enum b:Lpc/f;

.field public static final synthetic c:[Lpc/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lpc/f;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpc/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpc/f;->a:Lpc/f;

    new-instance v1, Lpc/f;

    const-string v3, "DROP_OLDEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lpc/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpc/f;->b:Lpc/f;

    new-instance v3, Lpc/f;

    const-string v5, "DROP_LATEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lpc/f;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lpc/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lpc/f;->c:[Lpc/f;

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

.method public static valueOf(Ljava/lang/String;)Lpc/f;
    .locals 1

    const-class v0, Lpc/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpc/f;

    return-object p0
.end method

.method public static values()[Lpc/f;
    .locals 1

    sget-object v0, Lpc/f;->c:[Lpc/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpc/f;

    return-object v0
.end method
