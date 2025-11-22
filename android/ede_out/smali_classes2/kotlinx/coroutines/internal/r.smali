.class public Lkotlinx/coroutines/internal/r;
.super Lnc/a;
.source "SourceFile"

# interfaces
.implements Lr9/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/a<",
        "TT;>;",
        "Lr9/d;"
    }
.end annotation


# instance fields
.field public final c:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/d;Lp9/f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lnc/a;-><init>(Lp9/f;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/r;->c:Lp9/d;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lp9/d;

    .line 2
    .line 3
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lx5/a;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p1, v1}, La2/b;->m(Lp9/d;Ljava/lang/Object;Lx9/l;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final W()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCallerFrame()Lr9/d;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lp9/d;

    instance-of v1, v0, Lr9/d;

    if-eqz v1, :cond_0

    check-cast v0, Lr9/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lp9/d;

    invoke-static {p1}, Lx5/a;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
