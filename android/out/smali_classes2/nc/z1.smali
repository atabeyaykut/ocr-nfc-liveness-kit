.class public final Lnc/z1;
.super Lkotlinx/coroutines/internal/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ll9/g<",
            "Lp9/f;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/d;Lp9/f;)V
    .locals 2

    sget-object v0, Lnc/a2;->a:Lnc/a2;

    invoke-interface {p2, v0}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/r;-><init>(Lp9/d;Lp9/f;)V

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lnc/z1;->d:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final i0(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lnc/z1;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll9/g;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Ll9/g;->a:Ljava/lang/Object;

    check-cast v3, Lp9/f;

    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    invoke-static {p1}, Lx5/a;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lp9/d;

    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/w;->c(Lp9/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    if-eq v3, v4, :cond_1

    invoke-static {v0, v1, v3}, Lnc/w;->c(Lp9/d;Lp9/f;Ljava/lang/Object;)Lnc/z1;

    move-result-object v2

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnc/z1;->m0()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {v1, v3}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnc/z1;->m0()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {v1, v3}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final m0()Z
    .locals 2

    iget-object v0, p0, Lnc/z1;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
