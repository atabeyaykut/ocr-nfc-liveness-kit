.class public final enum Lx4/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx4/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx4/d$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum b:Lx4/d$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final synthetic c:[Lx4/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lx4/d$a;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx4/d$a;->a:Lx4/d$a;

    new-instance v1, Lx4/d$a;

    const-string v3, "LATEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx4/d$a;->b:Lx4/d$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lx4/d$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lx4/d$a;->c:[Lx4/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx4/d$a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lx4/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx4/d$a;

    return-object p0
.end method

.method public static values()[Lx4/d$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lx4/d$a;->c:[Lx4/d$a;

    invoke-virtual {v0}, [Lx4/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx4/d$a;

    return-object v0
.end method
