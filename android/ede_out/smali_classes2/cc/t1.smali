.class public final enum Lcc/t1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcc/t1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcc/t1;

.field public static final enum d:Lcc/t1;

.field public static final enum e:Lcc/t1;

.field public static final synthetic f:[Lcc/t1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcc/t1;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcc/t1;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcc/t1;->c:Lcc/t1;

    new-instance v1, Lcc/t1;

    const-string v3, "IN_VARIANCE"

    const-string v5, "in"

    invoke-direct {v1, v3, v4, v5, v2}, Lcc/t1;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcc/t1;->d:Lcc/t1;

    new-instance v3, Lcc/t1;

    const-string v5, "out"

    const-string v6, "OUT_VARIANCE"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v5, v4}, Lcc/t1;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcc/t1;->e:Lcc/t1;

    const/4 v5, 0x3

    new-array v5, v5, [Lcc/t1;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    sput-object v5, Lcc/t1;->f:[Lcc/t1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcc/t1;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcc/t1;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/t1;
    .locals 1

    const-class v0, Lcc/t1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/t1;

    return-object p0
.end method

.method public static values()[Lcc/t1;
    .locals 1

    sget-object v0, Lcc/t1;->f:[Lcc/t1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/t1;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcc/t1;->a:Ljava/lang/String;

    return-object v0
.end method
