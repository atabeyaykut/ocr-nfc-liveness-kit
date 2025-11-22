.class public final enum Lgb/w;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/w;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Lgb/w;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lgb/w;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/w;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lgb/w;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/w;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lgb/w;

    const-string v5, "PROTECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/w;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lgb/w;

    const-string v7, "PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgb/w;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lgb/w;

    const-string v9, "PRIVATE_TO_THIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgb/w;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lgb/w;

    const-string v11, "LOCAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgb/w;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x6

    new-array v11, v11, [Lgb/w;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lgb/w;->b:[Lgb/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/w;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/w;
    .locals 1

    const-class v0, Lgb/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/w;

    return-object p0
.end method

.method public static values()[Lgb/w;
    .locals 1

    sget-object v0, Lgb/w;->b:[Lgb/w;

    invoke-virtual {v0}, [Lgb/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/w;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/w;->a:I

    return v0
.end method
