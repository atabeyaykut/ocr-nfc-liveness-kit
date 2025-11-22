.class public Lpc/h;
.super Lnc/a;
.source "SourceFile"

# interfaces
.implements Lpc/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/a<",
        "Ll9/m;",
        ">;",
        "Lpc/g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Lpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/g<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/f;Lpc/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnc/a;-><init>(Lp9/f;Z)V

    iput-object p2, p0, Lpc/h;->c:Lpc/g;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p1}, Lpc/y;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0}, Lpc/y;->C()Z

    move-result v0

    return v0
.end method

.method public final H(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lpc/u;->a(Ljava/util/concurrent/CancellationException;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lnc/g1;->G(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc/g1;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Lnc/c1;

    .line 11
    .line 12
    invoke-virtual {p0}, Lnc/a;->J()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lpc/h;->H(Ljava/util/concurrent/CancellationException;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final c(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p1}, Lpc/y;->c(Lx9/l;)V

    return-void
.end method

.method public final h(Lp9/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lpc/j<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p1}, Lpc/u;->h(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Lpc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc/i<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0}, Lpc/u;->iterator()Lpc/i;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lkotlinx/coroutines/selects/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/b<",
            "Lpc/j<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0}, Lpc/u;->k()Lkotlinx/coroutines/selects/b;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lkotlinx/coroutines/selects/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0}, Lpc/u;->l()Lkotlinx/coroutines/selects/b;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/io/Serializable;)Z
    .locals 1

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p1}, Lpc/y;->m(Ljava/io/Serializable;)Z

    move-result p1

    return p1
.end method

.method public final p(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p1, p2}, Lpc/y;->p(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p1}, Lpc/y;->s(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
