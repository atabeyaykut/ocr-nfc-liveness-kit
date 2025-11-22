.class public final enum Lm4/e0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum a:Lm4/e0;

.field public static final synthetic b:[Lm4/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm4/e0;

    invoke-direct {v0}, Lm4/e0;-><init>()V

    sput-object v0, Lm4/e0;->a:Lm4/e0;

    const/4 v1, 0x1

    new-array v1, v1, [Lm4/e0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lm4/e0;->b:[Lm4/e0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lm4/e0;
    .locals 1

    sget-object v0, Lm4/e0;->b:[Lm4/e0;

    invoke-virtual {v0}, [Lm4/e0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm4/e0;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
