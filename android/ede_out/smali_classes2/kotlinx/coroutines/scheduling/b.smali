.class public final Lkotlinx/coroutines/scheduling/b;
.super Lnc/r0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/b;

.field public static final b:Lnc/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/b;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/coroutines/scheduling/k;->a:Lkotlinx/coroutines/scheduling/k;

    .line 9
    .line 10
    sget v1, Lkotlinx/coroutines/internal/v;->a:I

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v1, 0x40

    .line 18
    .line 19
    :goto_0
    const/16 v2, 0xc

    .line 20
    .line 21
    const-string v3, "kotlinx.coroutines.io.parallelism"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v3, v1, v4, v4, v2}, Lc5/v;->J(Ljava/lang/String;IIII)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lnc/y;->limitedParallelism(I)Lnc/y;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lkotlinx/coroutines/scheduling/b;->b:Lnc/y;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnc/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dispatch(Lp9/f;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->b:Lnc/y;

    invoke-virtual {v0, p1, p2}, Lnc/y;->dispatch(Lp9/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchYield(Lp9/f;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->b:Lnc/y;

    invoke-virtual {v0, p1, p2}, Lnc/y;->dispatchYield(Lp9/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lp9/g;->a:Lp9/g;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/scheduling/b;->dispatch(Lp9/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final limitedParallelism(I)Lnc/y;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/k;->a:Lkotlinx/coroutines/scheduling/k;

    invoke-virtual {v0, p1}, Lnc/y;->limitedParallelism(I)Lnc/y;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
