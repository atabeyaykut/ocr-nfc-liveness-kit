.class public final enum Lgb/e$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/e$d;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lgb/e$d;

.field public static final enum c:Lgb/e$d;

.field public static final enum d:Lgb/e$d;

.field public static final synthetic e:[Lgb/e$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgb/e$d;

    const-string v1, "AT_MOST_ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/e$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgb/e$d;->b:Lgb/e$d;

    new-instance v1, Lgb/e$d;

    const-string v3, "EXACTLY_ONCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/e$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgb/e$d;->c:Lgb/e$d;

    new-instance v3, Lgb/e$d;

    const-string v5, "AT_LEAST_ONCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/e$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgb/e$d;->d:Lgb/e$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lgb/e$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgb/e$d;->e:[Lgb/e$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/e$d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/e$d;
    .locals 1

    const-class v0, Lgb/e$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/e$d;

    return-object p0
.end method

.method public static values()[Lgb/e$d;
    .locals 1

    sget-object v0, Lgb/e$d;->e:[Lgb/e$d;

    invoke-virtual {v0}, [Lgb/e$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/e$d;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/e$d;->a:I

    return v0
.end method
