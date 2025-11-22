.class public final Lkotlinx/coroutines/flow/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final a(Lp9/d;)Ll9/m;
    .locals 4

    instance-of v0, p1, Lkotlinx/coroutines/flow/g0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/g0;

    iget v1, v0, Lkotlinx/coroutines/flow/g0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/g0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/g0;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/g0;-><init>(Lkotlinx/coroutines/flow/h0;Lp9/d;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/g0;->c:Ljava/lang/Object;

    iget v1, v0, Lkotlinx/coroutines/flow/g0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/flow/g0;->b:Lqc/m;

    iget-object v0, v0, Lkotlinx/coroutines/flow/g0;->a:Lkotlinx/coroutines/flow/h0;

    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lqc/m;->releaseIntercepted()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    new-instance v1, Lqc/m;

    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lqc/m;-><init>(Lkotlinx/coroutines/flow/g;Lp9/f;)V

    :try_start_1
    iput-object p0, v0, Lkotlinx/coroutines/flow/g0;->a:Lkotlinx/coroutines/flow/h0;

    iput-object v1, v0, Lkotlinx/coroutines/flow/g0;->b:Lqc/m;

    iput v2, v0, Lkotlinx/coroutines/flow/g0;->e:I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lqc/m;->releaseIntercepted()V

    throw p1
.end method

.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
