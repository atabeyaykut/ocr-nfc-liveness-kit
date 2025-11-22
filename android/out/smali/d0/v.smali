.class public final enum Ld0/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld0/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld0/v;

.field public static final enum b:Ld0/v;

.field public static final synthetic c:[Ld0/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld0/v;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld0/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld0/v;->a:Ld0/v;

    new-instance v1, Ld0/v;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ld0/v;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld0/v;->b:Ld0/v;

    new-instance v3, Ld0/v;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ld0/v;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Ld0/v;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ld0/v;->c:[Ld0/v;

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

.method public static valueOf(Ljava/lang/String;)Ld0/v;
    .locals 1

    const-class v0, Ld0/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld0/v;

    return-object p0
.end method

.method public static values()[Ld0/v;
    .locals 1

    sget-object v0, Ld0/v;->c:[Ld0/v;

    invoke-virtual {v0}, [Ld0/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld0/v;

    return-object v0
.end method
