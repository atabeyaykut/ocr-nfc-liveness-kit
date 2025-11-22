.class public abstract Lnc/a;
.super Lnc/g1;
.source "SourceFile"

# interfaces
.implements Lp9/d;
.implements Lnc/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/g1;",
        "Lp9/d<",
        "TT;>;",
        "Lnc/a0;"
    }
.end annotation


# instance fields
.field public final b:Lp9/f;


# direct methods
.method public constructor <init>(Lp9/f;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lnc/g1;-><init>(Z)V

    sget-object p2, Lnc/b1$b;->a:Lnc/b1$b;

    invoke-interface {p1, p2}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object p2

    check-cast p2, Lnc/b1;

    invoke-virtual {p0, p2}, Lnc/g1;->V(Lnc/b1;)V

    invoke-interface {p1, p0}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    move-result-object p1

    iput-object p1, p0, Lnc/a;->b:Lp9/f;

    return-void
.end method


# virtual methods
.method public final J()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " was cancelled"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final U(Lnc/u;)V
    .locals 1

    iget-object v0, p0, Lnc/a;->b:Lp9/f;

    invoke-static {v0, p1}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lnc/g1;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    invoke-super {p0}, Lnc/g1;->b()Z

    move-result v0

    return v0
.end method

.method public final b0(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lnc/r;

    if-eqz v0, :cond_0

    check-cast p1, Lnc/r;

    iget-object v0, p1, Lnc/r;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lnc/r;->a()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lnc/a;->j0(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnc/a;->k0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getContext()Lp9/f;
    .locals 1

    iget-object v0, p0, Lnc/a;->b:Lp9/f;

    return-object v0
.end method

.method public final getCoroutineContext()Lp9/f;
    .locals 1

    iget-object v0, p0, Lnc/a;->b:Lp9/f;

    return-object v0
.end method

.method public i0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnc/g1;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public j0(ZLjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public k0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final l0(ILnc/a;Lx9/p;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lnc/a;->b:Lp9/f;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/w;->c(Lp9/f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-static {v1, p3}, Lkotlin/jvm/internal/z;->c(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, p2, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    sget-object p1, Lq9/a;->a:Lq9/a;

    .line 34
    .line 35
    if-eq p2, p1, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception p2

    .line 41
    :try_start_3
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/w;->a(Lp9/f;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :goto_0
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_1
    invoke-virtual {p0, p2}, Lnc/a;->resumeWith(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    new-instance p1, Lj7/p;

    .line 54
    .line 55
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    const-string p1, "<this>"

    .line 60
    .line 61
    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p2, p0, p3}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 73
    .line 74
    invoke-interface {p1, p2}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :try_start_4
    invoke-static {p2, p0, p3}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 87
    .line 88
    invoke-static {p1, p2, v0}, La2/b;->m(Lp9/d;Ljava/lang/Object;Lx9/l;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    return-void

    .line 92
    :catchall_2
    move-exception p1

    .line 93
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0, p2}, Lnc/a;->resumeWith(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    throw v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ll9/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lnc/r;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lnc/g1;->X(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lc5/e0;->f:Lkotlinx/coroutines/internal/u;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lnc/a;->i0(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
