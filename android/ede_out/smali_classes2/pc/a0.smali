.class public final Lpc/a0;
.super Lpc/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/z<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TE;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnc/j;Lx9/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpc/z;-><init>(Ljava/lang/Object;Lnc/j;)V

    iput-object p3, p0, Lpc/a0;->f:Lx9/l;

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    invoke-super {p0}, Lkotlinx/coroutines/internal/j;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lpc/a0;->N()V

    const/4 v0, 0x1

    return v0
.end method

.method public final N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lpc/z;->e:Lnc/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lpc/a0;->f:Lx9/l;

    .line 9
    .line 10
    iget-object v3, p0, Lpc/z;->d:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v2, v3, v1}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0, v1}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
