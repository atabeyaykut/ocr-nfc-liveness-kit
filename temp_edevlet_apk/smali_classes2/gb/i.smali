.class public final enum Lgb/i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/i;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Lgb/i;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgb/i;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/i;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lgb/i;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/i;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lgb/i;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/i;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lgb/i;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgb/i;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x4

    new-array v7, v7, [Lgb/i;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lgb/i;->b:[Lgb/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/i;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/i;
    .locals 1

    const-class v0, Lgb/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/i;

    return-object p0
.end method

.method public static values()[Lgb/i;
    .locals 1

    sget-object v0, Lgb/i;->b:[Lgb/i;

    invoke-virtual {v0}, [Lgb/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/i;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/i;->a:I

    return v0
.end method
