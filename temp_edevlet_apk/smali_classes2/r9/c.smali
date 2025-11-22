.class public abstract Lr9/c;
.super Lr9/a;
.source "SourceFile"


# instance fields
.field private final _context:Lp9/f;

.field private transient intercepted:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lp9/d;->getContext()Lp9/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lr9/c;-><init>(Lp9/d;Lp9/f;)V

    return-void
.end method

.method public constructor <init>(Lp9/d;Lp9/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr9/a;-><init>(Lp9/d;)V

    iput-object p2, p0, Lr9/c;->_context:Lp9/f;

    return-void
.end method


# virtual methods
.method public getContext()Lp9/f;
    .locals 1

    iget-object v0, p0, Lr9/c;->_context:Lp9/f;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp9/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr9/c;->intercepted:Lp9/d;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lr9/c;->getContext()Lp9/f;

    move-result-object v0

    sget v1, Lp9/e;->e0:I

    sget-object v1, Lp9/e$a;->a:Lp9/e$a;

    invoke-interface {v0, v1}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v0

    check-cast v0, Lp9/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lp9/e;->interceptContinuation(Lp9/d;)Lp9/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lr9/c;->intercepted:Lp9/d;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lr9/c;->intercepted:Lp9/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lr9/c;->getContext()Lp9/f;

    move-result-object v1

    sget v2, Lp9/e;->e0:I

    sget-object v2, Lp9/e$a;->a:Lp9/e$a;

    invoke-interface {v1, v2}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    check-cast v1, Lp9/e;

    invoke-interface {v1, v0}, Lp9/e;->releaseInterceptedContinuation(Lp9/d;)V

    :cond_0
    sget-object v0, Lr9/b;->a:Lr9/b;

    iput-object v0, p0, Lr9/c;->intercepted:Lp9/d;

    return-void
.end method
