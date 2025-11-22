.class public final enum Lva/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lva/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lva/c;

.field public static final enum c:Lva/c;

.field public static final enum d:Lva/c;

.field public static final enum e:Lva/c;

.field public static final enum f:Lva/c;

.field public static final synthetic g:[Lva/c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lva/c;

    const-string v1, "METHOD_RETURN_TYPE"

    const/4 v2, 0x0

    const-string v3, "METHOD"

    invoke-direct {v0, v1, v2, v3}, Lva/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lva/c;->b:Lva/c;

    new-instance v1, Lva/c;

    const-string v3, "VALUE_PARAMETER"

    const/4 v4, 0x1

    const-string v5, "PARAMETER"

    invoke-direct {v1, v3, v4, v5}, Lva/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lva/c;->c:Lva/c;

    new-instance v3, Lva/c;

    const-string v5, "FIELD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lva/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lva/c;->d:Lva/c;

    new-instance v5, Lva/c;

    const-string v7, "TYPE_USE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lva/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lva/c;->e:Lva/c;

    new-instance v9, Lva/c;

    const-string v10, "TYPE_PARAMETER_BOUNDS"

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11, v7}, Lva/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lva/c;->f:Lva/c;

    new-instance v7, Lva/c;

    const-string v10, "TYPE_PARAMETER"

    const/4 v12, 0x5

    invoke-direct {v7, v10, v12, v10}, Lva/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x6

    new-array v10, v10, [Lva/c;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v9, v10, v11

    aput-object v7, v10, v12

    sput-object v10, Lva/c;->g:[Lva/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lva/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lva/c;
    .locals 1

    const-class v0, Lva/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lva/c;

    return-object p0
.end method

.method public static values()[Lva/c;
    .locals 1

    sget-object v0, Lva/c;->g:[Lva/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lva/c;

    return-object v0
.end method
