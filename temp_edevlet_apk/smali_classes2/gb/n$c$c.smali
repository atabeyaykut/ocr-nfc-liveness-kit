.class public final enum Lgb/n$c$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/n$c$c;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lgb/n$c$c;

.field public static final enum c:Lgb/n$c$c;

.field public static final enum d:Lgb/n$c$c;

.field public static final synthetic e:[Lgb/n$c$c;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgb/n$c$c;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/n$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgb/n$c$c;->b:Lgb/n$c$c;

    new-instance v1, Lgb/n$c$c;

    const-string v3, "PACKAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/n$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgb/n$c$c;->c:Lgb/n$c$c;

    new-instance v3, Lgb/n$c$c;

    const-string v5, "LOCAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/n$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgb/n$c$c;->d:Lgb/n$c$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lgb/n$c$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgb/n$c$c;->e:[Lgb/n$c$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/n$c$c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/n$c$c;
    .locals 1

    const-class v0, Lgb/n$c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/n$c$c;

    return-object p0
.end method

.method public static values()[Lgb/n$c$c;
    .locals 1

    sget-object v0, Lgb/n$c$c;->e:[Lgb/n$c$c;

    invoke-virtual {v0}, [Lgb/n$c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/n$c$c;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/n$c$c;->a:I

    return v0
.end method
