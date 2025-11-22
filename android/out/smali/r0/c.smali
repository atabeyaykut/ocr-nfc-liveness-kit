.class public final Lr0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr0/p;",
        ">",
        "Ljava/lang/Object;",
        "Lr0/r<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final h:Lnc/s0;


# instance fields
.field public final a:Lpc/a;

.field public final b:Lpc/a;

.field public final c:Lkotlinx/coroutines/flow/a0;

.field public volatile d:Lr0/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/flow/w;

.field public final f:Lnc/a0;

.field public final g:Lp9/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Executors.newCachedThreadPool()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lnc/s0;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lnc/s0;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lr0/c;->h:Lnc/s0;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lr0/p;Lkotlinx/coroutines/internal/f;Lp9/f;)V
    .locals 4

    .line 1
    const-string v0, "initialState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contextOverride"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lr0/c;->f:Lnc/a0;

    .line 15
    .line 16
    iput-object p3, p0, Lr0/c;->g:Lp9/f;

    .line 17
    .line 18
    const v0, 0x7fffffff

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-static {v0, v1, v2}, Lb8/f;->e(ILpc/f;I)Lpc/a;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Lr0/c;->a:Lpc/a;

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lb8/f;->e(ILpc/f;I)Lpc/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lr0/c;->b:Lpc/a;

    .line 34
    .line 35
    new-instance v0, Lkotlinx/coroutines/flow/a0;

    .line 36
    .line 37
    const/16 v2, 0x40

    .line 38
    .line 39
    invoke-direct {v0, v2}, Lkotlinx/coroutines/flow/a0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/a0;->n(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    sget-object v2, Ll9/m;->a:Ll9/m;

    .line 46
    .line 47
    iput-object v0, p0, Lr0/c;->c:Lkotlinx/coroutines/flow/a0;

    .line 48
    .line 49
    iput-object p1, p0, Lr0/c;->d:Lr0/p;

    .line 50
    .line 51
    new-instance p1, Lkotlinx/coroutines/flow/w;

    .line 52
    .line 53
    invoke-direct {p1, v0}, Lkotlinx/coroutines/flow/w;-><init>(Lkotlinx/coroutines/flow/a0;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lr0/c;->e:Lkotlinx/coroutines/flow/w;

    .line 57
    .line 58
    sget-object p1, Lr0/s;->a:Ljava/lang/Boolean;

    .line 59
    .line 60
    sget-object p1, Lr0/c;->h:Lnc/s0;

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Lp9/a;->plus(Lp9/f;)Lp9/f;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p3, Lr0/d;

    .line 67
    .line 68
    invoke-direct {p3, p0, v1}, Lr0/d;-><init>(Lr0/c;Lp9/d;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {p2, p1, v1, p3, v0}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/w;
    .locals 1

    iget-object v0, p0, Lr0/c;->e:Lkotlinx/coroutines/flow/w;

    return-object v0
.end method

.method public final b(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-TS;+TS;>;)V"
        }
    .end annotation

    const-string v0, "stateReducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/c;->a:Lpc/a;

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Lpc/b;->m(Ljava/io/Serializable;)Z

    sget-object p1, Lr0/s;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public final c()Lr0/p;
    .locals 1

    iget-object v0, p0, Lr0/c;->d:Lr0/p;

    return-object v0
.end method

.method public final d(Lp9/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/a;-><init>(Lp9/d;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lr0/c;->a:Lpc/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lr0/c$a;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, v3}, Lr0/c$a;-><init>(Lr0/c;Lp9/d;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v4, v2, v1, v0}, Lpc/a;->r(ILx9/p;Lpc/a;Lkotlinx/coroutines/selects/c;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lr0/c;->b:Lpc/a;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lr0/c$b;

    .line 27
    .line 28
    invoke-direct {v2, p0, v3}, Lr0/c$b;-><init>(Lr0/c;Lp9/d;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v2, v1, v0}, Lpc/a;->r(ILx9/p;Lpc/a;Lkotlinx/coroutines/selects/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/a;->L(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/a;->K()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    const-string v2, "frame"

    .line 48
    .line 49
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    if-ne v0, v1, :cond_1

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 56
    .line 57
    return-object p1
.end method
