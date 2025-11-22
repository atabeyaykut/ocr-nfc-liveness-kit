.class public final enum Lnb/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnb/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnb/q;

.field public static final enum b:Lnb/q;

.field public static final synthetic c:[Lnb/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnb/q;

    const-string v1, "PRETTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnb/q;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lnb/q;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnb/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnb/q;->a:Lnb/q;

    new-instance v3, Lnb/q;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnb/q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnb/q;->b:Lnb/q;

    const/4 v5, 0x3

    new-array v5, v5, [Lnb/q;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnb/q;->c:[Lnb/q;

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

.method public static valueOf(Ljava/lang/String;)Lnb/q;
    .locals 1

    const-class v0, Lnb/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnb/q;

    return-object p0
.end method

.method public static values()[Lnb/q;
    .locals 1

    sget-object v0, Lnb/q;->c:[Lnb/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnb/q;

    return-object v0
.end method
