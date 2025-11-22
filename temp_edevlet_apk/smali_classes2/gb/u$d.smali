.class public final enum Lgb/u$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/u$d;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lgb/u$d;

.field public static final enum c:Lgb/u$d;

.field public static final enum d:Lgb/u$d;

.field public static final synthetic e:[Lgb/u$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgb/u$d;

    const-string v1, "LANGUAGE_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/u$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgb/u$d;->b:Lgb/u$d;

    new-instance v1, Lgb/u$d;

    const-string v3, "COMPILER_VERSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/u$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgb/u$d;->c:Lgb/u$d;

    new-instance v3, Lgb/u$d;

    const-string v5, "API_VERSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/u$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgb/u$d;->d:Lgb/u$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lgb/u$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgb/u$d;->e:[Lgb/u$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/u$d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/u$d;
    .locals 1

    const-class v0, Lgb/u$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/u$d;

    return-object p0
.end method

.method public static values()[Lgb/u$d;
    .locals 1

    sget-object v0, Lgb/u$d;->e:[Lgb/u$d;

    invoke-virtual {v0}, [Lgb/u$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/u$d;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/u$d;->a:I

    return v0
.end method
