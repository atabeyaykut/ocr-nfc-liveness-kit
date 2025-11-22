.class public final Lpc/o;
.super Lpc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx9/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-TE;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/a;-><init>(Lx9/l;)V

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lpc/b;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lc5/y;->k:Lkotlinx/coroutines/internal/u;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_1
    sget-object v2, Lc5/y;->l:Lkotlinx/coroutines/internal/u;

    .line 11
    .line 12
    if-ne v0, v2, :cond_5

    .line 13
    .line 14
    iget-object v2, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 15
    .line 16
    new-instance v3, Lpc/b$a;

    .line 17
    .line 18
    invoke-direct {v3, p1}, Lpc/b$a;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v4, v0, Lpc/v;

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    check-cast v0, Lpc/v;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/internal/j;->u(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/i;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-nez v0, :cond_4

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_4
    instance-of v1, v0, Lpc/k;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_5
    instance-of p1, v0, Lpc/k;

    .line 48
    .line 49
    if-eqz p1, :cond_6

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "Invalid offerInternal result "

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z(Ljava/lang/Object;Lpc/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lpc/k<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lpc/b;->a:Lx9/l;

    if-nez v1, :cond_3

    check-cast p1, Lpc/x;

    instance-of v1, p1, Lpc/b$a;

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lpc/b$a;

    iget-object p1, p1, Lpc/b$a;->d:Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Lpc/x;->L(Lpc/k;)V

    goto :goto_2

    :cond_3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    move-object v3, v0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpc/x;

    instance-of v5, v1, Lpc/b$a;

    if-eqz v5, :cond_5

    if-nez v2, :cond_4

    move-object v3, v0

    goto :goto_1

    :cond_4
    check-cast v1, Lpc/b$a;

    iget-object v1, v1, Lpc/b$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p2}, Lpc/x;->L(Lpc/k;)V

    :goto_1
    if-gez v4, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    return-void

    :cond_8
    throw v0
.end method
