.class public final Lpc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lpc/r;Lx9/a;Lp9/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/r<",
            "*>;",
            "Lx9/a<",
            "Ll9/m;",
            ">;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lpc/p$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lpc/p$a;

    iget v1, v0, Lpc/p$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lpc/p$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lpc/p$a;

    invoke-direct {v0, p2}, Lpc/p$a;-><init>(Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lpc/p$a;->c:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lpc/p$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lpc/p$a;->b:Lx9/a;

    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    move-result-object p2

    sget-object v2, Lnc/b1$b;->a:Lnc/b1$b;

    invoke-interface {p2, v2}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object p2

    if-ne p2, p0, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    :try_start_1
    iput-object p0, v0, Lpc/p$a;->a:Lpc/r;

    iput-object p1, v0, Lpc/p$a;->b:Lx9/a;

    iput v3, v0, Lpc/p$a;->d:I

    new-instance p2, Lnc/j;

    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lnc/j;-><init>(ILp9/d;)V

    invoke-virtual {p2}, Lnc/j;->n()V

    new-instance v0, Lpc/p$b;

    invoke-direct {v0, p2}, Lpc/p$b;-><init>(Lnc/j;)V

    invoke-interface {p0, v0}, Lpc/y;->c(Lx9/l;)V

    invoke-virtual {p2}, Lnc/j;->m()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    sget-object p0, Ll9/m;->a:Ll9/m;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
