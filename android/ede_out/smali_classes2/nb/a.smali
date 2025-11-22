.class public final enum Lnb/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnb/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lnb/a;

.field public static final synthetic d:[Lnb/a;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnb/a;

    const-string v1, "NO_ARGUMENTS"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v2, v3}, Lnb/a;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lnb/a;->c:Lnb/a;

    new-instance v1, Lnb/a;

    const-string v4, "UNLESS_EMPTY"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v5, v6}, Lnb/a;-><init>(Ljava/lang/String;IZI)V

    new-instance v4, Lnb/a;

    const-string v7, "ALWAYS_PARENTHESIZED"

    invoke-direct {v4, v7, v6, v5, v5}, Lnb/a;-><init>(Ljava/lang/String;IZZ)V

    new-array v3, v3, [Lnb/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v6

    sput-object v3, Lnb/a;->d:[Lnb/a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZI)V
    .locals 1

    and-int/lit8 p4, p4, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lnb/a;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnb/a;->a:Z

    iput-boolean p4, p0, Lnb/a;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnb/a;
    .locals 1

    const-class v0, Lnb/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnb/a;

    return-object p0
.end method

.method public static values()[Lnb/a;
    .locals 1

    sget-object v0, Lnb/a;->d:[Lnb/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnb/a;

    return-object v0
.end method
