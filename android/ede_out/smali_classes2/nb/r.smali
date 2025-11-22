.class public abstract enum Lnb/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb/r$b;,
        Lnb/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnb/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnb/r$b;

.field public static final enum b:Lnb/r$a;

.field public static final synthetic c:[Lnb/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnb/r$b;

    invoke-direct {v0}, Lnb/r$b;-><init>()V

    sput-object v0, Lnb/r;->a:Lnb/r$b;

    new-instance v1, Lnb/r$a;

    invoke-direct {v1}, Lnb/r$a;-><init>()V

    sput-object v1, Lnb/r;->b:Lnb/r$a;

    const/4 v2, 0x2

    new-array v2, v2, [Lnb/r;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lnb/r;->c:[Lnb/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnb/r;
    .locals 1

    const-class v0, Lnb/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnb/r;

    return-object p0
.end method

.method public static values()[Lnb/r;
    .locals 1

    sget-object v0, Lnb/r;->c:[Lnb/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnb/r;

    return-object v0
.end method


# virtual methods
.method public abstract n(Ljava/lang/String;)Ljava/lang/String;
.end method
