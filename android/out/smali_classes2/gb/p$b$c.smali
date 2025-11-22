.class public final enum Lgb/p$b$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/p$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/p$b$c;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lgb/p$b$c;

.field public static final enum c:Lgb/p$b$c;

.field public static final enum d:Lgb/p$b$c;

.field public static final enum e:Lgb/p$b$c;

.field public static final synthetic f:[Lgb/p$b$c;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgb/p$b$c;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/p$b$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgb/p$b$c;->b:Lgb/p$b$c;

    new-instance v1, Lgb/p$b$c;

    const-string v3, "OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/p$b$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgb/p$b$c;->c:Lgb/p$b$c;

    new-instance v3, Lgb/p$b$c;

    const-string v5, "INV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/p$b$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgb/p$b$c;->d:Lgb/p$b$c;

    new-instance v5, Lgb/p$b$c;

    const-string v7, "STAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgb/p$b$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgb/p$b$c;->e:Lgb/p$b$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lgb/p$b$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lgb/p$b$c;->f:[Lgb/p$b$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/p$b$c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/p$b$c;
    .locals 1

    const-class v0, Lgb/p$b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/p$b$c;

    return-object p0
.end method

.method public static values()[Lgb/p$b$c;
    .locals 1

    sget-object v0, Lgb/p$b$c;->f:[Lgb/p$b$c;

    invoke-virtual {v0}, [Lgb/p$b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/p$b$c;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/p$b$c;->a:I

    return v0
.end method
