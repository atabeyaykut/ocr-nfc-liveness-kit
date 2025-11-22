.class public final Lkotlinx/coroutines/flow/c;
.super Lqc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqc/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic consumed:I

.field public final d:Lpc/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/u<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/flow/c;

    const-string v1, "consumed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/c;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lpc/u;ZLp9/f;ILpc/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/u<",
            "+TT;>;Z",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Lqc/e;-><init>(Lp9/f;ILpc/f;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/c;->d:Lpc/u;

    iput-boolean p2, p0, Lkotlinx/coroutines/flow/c;->e:Z

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/flow/c;->consumed:I

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lqc/e;->b:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    sget-object v2, Lq9/a;->a:Lq9/a;

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c;->g()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/coroutines/flow/c;->d:Lpc/u;

    .line 12
    .line 13
    iget-boolean v1, p0, Lkotlinx/coroutines/flow/c;->e:Z

    .line 14
    .line 15
    invoke-static {p1, v0, v1, p2}, Lkotlinx/coroutines/flow/i;->a(Lkotlinx/coroutines/flow/g;Lpc/u;ZLp9/d;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-super {p0, p1, p2}, Lqc/e;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-ne p1, v2, :cond_2

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 33
    .line 34
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const-string v0, "channel="

    iget-object v1, p0, Lkotlinx/coroutines/flow/c;->d:Lpc/u;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lpc/r;Lp9/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/r<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lqc/p;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lqc/p;-><init>(Lpc/y;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/flow/c;->d:Lpc/u;

    .line 7
    .line 8
    iget-boolean v1, p0, Lkotlinx/coroutines/flow/c;->e:Z

    .line 9
    .line 10
    invoke-static {v0, p1, v1, p2}, Lkotlinx/coroutines/flow/i;->a(Lkotlinx/coroutines/flow/g;Lpc/u;ZLp9/d;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lq9/a;->a:Lq9/a;

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 20
    .line 21
    return-object p1
.end method

.method public final d(Lp9/f;ILpc/f;)Lqc/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")",
            "Lqc/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lkotlinx/coroutines/flow/c;

    iget-object v1, p0, Lkotlinx/coroutines/flow/c;->d:Lpc/u;

    iget-boolean v2, p0, Lkotlinx/coroutines/flow/c;->e:Z

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/c;-><init>(Lpc/u;ZLp9/f;ILpc/f;)V

    return-object v6
.end method

.method public final f(Lnc/a0;)Lpc/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a0;",
            ")",
            "Lpc/u<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c;->g()V

    iget v0, p0, Lqc/e;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/flow/c;->d:Lpc/u;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lqc/e;->f(Lnc/a0;)Lpc/u;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lkotlinx/coroutines/flow/c;->e:Z

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/flow/c;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ReceiveChannel.consumeAsFlow can be collected just once"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
