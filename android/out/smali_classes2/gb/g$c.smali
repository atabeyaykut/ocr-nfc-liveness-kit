.class public final enum Lgb/g$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmb/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb/g$c;",
        ">;",
        "Lmb/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lgb/g$c;

.field public static final enum c:Lgb/g$c;

.field public static final enum d:Lgb/g$c;

.field public static final synthetic e:[Lgb/g$c;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgb/g$c;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgb/g$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgb/g$c;->b:Lgb/g$c;

    new-instance v1, Lgb/g$c;

    const-string v3, "FALSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgb/g$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgb/g$c;->c:Lgb/g$c;

    new-instance v3, Lgb/g$c;

    const-string v5, "NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgb/g$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgb/g$c;->d:Lgb/g$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lgb/g$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgb/g$c;->e:[Lgb/g$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgb/g$c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb/g$c;
    .locals 1

    const-class v0, Lgb/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb/g$c;

    return-object p0
.end method

.method public static values()[Lgb/g$c;
    .locals 1

    sget-object v0, Lgb/g$c;->e:[Lgb/g$c;

    invoke-virtual {v0}, [Lgb/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/g$c;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lgb/g$c;->a:I

    return v0
.end method
