.class public Lnc/f0;
.super Lnc/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/a<",
        "TT;>;",
        "Lkotlinx/coroutines/selects/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp9/f;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnc/a;-><init>(Lp9/f;Z)V

    return-void
.end method


# virtual methods
.method public final m0(Lp9/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lnc/v0;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    instance-of p1, v0, Lnc/r;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lc5/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast v0, Lnc/r;

    .line 19
    .line 20
    iget-object p1, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 21
    .line 22
    throw p1

    .line 23
    :cond_2
    invoke-virtual {p0, v0}, Lnc/g1;->e0(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ltz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lnc/g1$a;

    .line 30
    .line 31
    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1, p0}, Lnc/g1$a;-><init>(Lp9/d;Lnc/g1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lnc/j;->n()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lnc/q1;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lnc/q1;-><init>(Lnc/g1$a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lnc/g1;->o(Lx9/l;)Lnc/k0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v1, Lnc/l0;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lnc/l0;-><init>(Lnc/k0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lnc/j;->D(Lx9/l;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_0
    return-object p1
.end method

.method public final z(Lkotlinx/coroutines/selects/c;Lx9/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/c<",
            "-TR;>;",
            "Lx9/p<",
            "-TT;-",
            "Lp9/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnc/v0;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lnc/r;

    if-eqz v1, :cond_2

    check-cast v0, Lnc/r;

    iget-object p2, v0, Lnc/r;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/c;->t(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lc5/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->r()Lp9/d;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/d0;->A(Ljava/lang/Object;Lp9/d;Lx9/p;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lnc/g1;->e0(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnc/s1;

    invoke-direct {v0, p1, p2}, Lnc/s1;-><init>(Lkotlinx/coroutines/selects/c;Lx9/p;)V

    invoke-virtual {p0, v0}, Lnc/g1;->o(Lx9/l;)Lnc/k0;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/c;->m(Lnc/k0;)V

    :cond_4
    :goto_0
    return-void
.end method
