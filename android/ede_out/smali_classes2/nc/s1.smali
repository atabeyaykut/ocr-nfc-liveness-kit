.class public final Lnc/s1;
.super Lnc/f1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/f1;"
    }
.end annotation


# instance fields
.field public final e:Lkotlinx/coroutines/selects/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/c<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final f:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "TT;",
            "Lp9/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/c;Lx9/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-direct {p0}, Lnc/f1;-><init>()V

    iput-object p1, p0, Lnc/s1;->e:Lkotlinx/coroutines/selects/c;

    iput-object p2, p0, Lnc/s1;->f:Lx9/p;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lnc/s1;->e:Lkotlinx/coroutines/selects/c;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lnc/s1;->f:Lx9/p;

    .line 14
    .line 15
    invoke-virtual {v0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v2, v0, Lnc/r;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast v0, Lnc/r;

    .line 24
    .line 25
    iget-object v0, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/c;->t(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Lc5/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->r()Lp9/d;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    invoke-static {v0, p1, v1}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v0, v1, v2}, La2/b;->m(Lp9/d;Ljava/lang/Object;Lx9/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {p1, v1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/s1;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
