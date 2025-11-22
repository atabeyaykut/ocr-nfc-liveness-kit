.class public final Lkotlinx/coroutines/flow/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/f;

.field public final synthetic b:Lx9/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lr0/a0;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lkotlinx/coroutines/flow/m;->b:Lx9/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/m$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/m$a;

    iget v1, v0, Lkotlinx/coroutines/flow/m$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/m$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/m$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/m$a;-><init>(Lkotlinx/coroutines/flow/m;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/m$a;->a:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lkotlinx/coroutines/flow/m$a;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/flow/m$a;->d:Ljava/lang/Object;

    check-cast p1, Lqc/m;

    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/m$a;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/m$a;->e:Lkotlinx/coroutines/flow/g;

    iget-object v2, v0, Lkotlinx/coroutines/flow/m$a;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/m;

    :try_start_1
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/f;

    iput-object p0, v0, Lkotlinx/coroutines/flow/m$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/m$a;->e:Lkotlinx/coroutines/flow/g;

    iput v5, v0, Lkotlinx/coroutines/flow/m$a;->b:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    new-instance p2, Lqc/m;

    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    move-result-object v4

    invoke-direct {p2, p1, v4}, Lqc/m;-><init>(Lkotlinx/coroutines/flow/g;Lp9/f;)V

    :try_start_3
    iget-object p1, v2, Lkotlinx/coroutines/flow/m;->b:Lx9/q;

    iput-object p2, v0, Lkotlinx/coroutines/flow/m$a;->d:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/m$a;->e:Lkotlinx/coroutines/flow/g;

    iput v3, v0, Lkotlinx/coroutines/flow/m$a;->b:I

    invoke-interface {p1, p2, v6, v0}, Lx9/q;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Lqc/m;->releaseIntercepted()V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_3
    invoke-virtual {p1}, Lqc/m;->releaseIntercepted()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v2, p0

    :goto_4
    new-instance p2, Lkotlinx/coroutines/flow/i0;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/i0;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v2, Lkotlinx/coroutines/flow/m;->b:Lx9/q;

    iput-object p1, v0, Lkotlinx/coroutines/flow/m$a;->d:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/m$a;->e:Lkotlinx/coroutines/flow/g;

    iput v4, v0, Lkotlinx/coroutines/flow/m$a;->b:I

    invoke-static {p2, v2, p1, v0}, La2/b;->f(Lkotlinx/coroutines/flow/i0;Lx9/q;Ljava/lang/Throwable;Lp9/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    throw p1
.end method
