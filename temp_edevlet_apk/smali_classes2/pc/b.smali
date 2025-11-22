.class public abstract Lpc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpc/y<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final a:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TE;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lkotlinx/coroutines/internal/i;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "onCloseHandler"

    const-class v2, Lpc/b;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lpc/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc/b;->a:Lx9/l;

    new-instance p1, Lkotlinx/coroutines/internal/i;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/i;-><init>()V

    iput-object p1, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lpc/b;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lpc/b;Lnc/j;Ljava/lang/Object;Lpc/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lpc/b;->g(Lpc/k;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Lpc/k;->P()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    iget-object p0, p0, Lpc/b;->a:Lx9/l;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, p2, v0}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    :goto_0
    invoke-static {p3}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {p0, p3}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_1
    invoke-virtual {p1, p0}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static g(Lpc/k;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    instance-of v3, v2, Lpc/s;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    check-cast v2, Lpc/s;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_1
    if-nez v2, :cond_5

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    instance-of v0, v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    check-cast v1, Lpc/s;

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Lpc/s;->K(Lpc/k;)V

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    if-ltz v0, :cond_4

    .line 39
    .line 40
    :goto_2
    add-int/lit8 v2, v0, -0x1

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lpc/s;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lpc/s;->K(Lpc/k;)V

    .line 49
    .line 50
    .line 51
    if-gez v2, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v0, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    :goto_3
    return-void

    .line 57
    :cond_5
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->F()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_6

    .line 62
    .line 63
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lkotlinx/coroutines/internal/p;

    .line 68
    .line 69
    iget-object v2, v2, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    .line 70
    .line 71
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->C()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    invoke-static {v1, v2}, Lc5/v;->G(Ljava/lang/Object;Lkotlinx/coroutines/internal/j;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lpc/b;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lc5/y;->k:Lkotlinx/coroutines/internal/u;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lc5/y;->l:Lkotlinx/coroutines/internal/u;

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lpc/j;->b:Lpc/j$b;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-static {p1}, Lpc/b;->g(Lpc/k;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lpc/k;->P()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lpc/j$a;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lpc/j$a;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p1, Lpc/k;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast p1, Lpc/k;

    .line 43
    .line 44
    invoke-static {p1}, Lpc/b;->g(Lpc/k;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lpc/k;->P()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lpc/j$a;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lpc/j$a;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    move-object p1, v0

    .line 57
    :goto_1
    return-object p1

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "trySend returned "

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public final C()Z
    .locals 1

    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Lx9/l;)V
    .locals 6
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

    sget-object v0, Lpc/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lc5/y;->p:Lkotlinx/coroutines/internal/u;

    if-nez v0, :cond_3

    iget-object p1, p0, Lpc/b;->onCloseHandler:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another handler was already registered: "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v4, Lpc/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    iget-object v0, v0, Lpc/k;->d:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public d(Lpc/z;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lpc/b;->i()Z

    move-result v0

    iget-object v1, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    move-result-object v0

    instance-of v2, v0, Lpc/v;

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/internal/j;->u(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    new-instance v0, Lpc/c;

    invoke-direct {v0, p1, p0}, Lpc/c;-><init>(Lpc/z;Lpc/b;)V

    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    move-result-object v2

    instance-of v3, v2, Lpc/v;

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v2, p1, v1, v0}, Lkotlinx/coroutines/internal/j;->I(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j$b;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    sget-object p1, Lc5/y;->n:Lkotlinx/coroutines/internal/u;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final f()Lpc/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc/k<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    move-result-object v0

    instance-of v1, v0, Lpc/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lpc/k;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lpc/b;->g(Lpc/k;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public final m(Ljava/io/Serializable;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lpc/b;->A(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    instance-of v2, v1, Lpc/j$b;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    xor-int/2addr v2, v3

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    instance-of v2, v1, Lpc/j$a;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast v1, Lpc/j$a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v1, v0

    .line 21
    :goto_0
    if-nez v1, :cond_2

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-object v1, v1, Lpc/j$a;->a:Ljava/lang/Throwable;

    .line 26
    .line 27
    :goto_1
    if-nez v1, :cond_3

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_2
    return v3

    .line 31
    :cond_3
    sget v2, Lkotlinx/coroutines/internal/t;->a:I

    .line 32
    .line 33
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    iget-object v2, p0, Lpc/b;->a:Lx9/l;

    .line 36
    .line 37
    if-eqz v2, :cond_5

    .line 38
    .line 39
    invoke-static {v2, p1, v0}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    invoke-static {p1, v1}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_5
    :goto_3
    throw v1
.end method

.method public n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lpc/b;->o()Lpc/v;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lc5/y;->l:Lkotlinx/coroutines/internal/u;

    return-object p1

    :cond_1
    invoke-interface {v0, p1}, Lpc/v;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lpc/v;->s(Ljava/lang/Object;)V

    invoke-interface {v0}, Lpc/v;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()Lpc/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc/v<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/j;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_0
    instance-of v3, v1, Lpc/v;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Lpc/v;

    instance-of v2, v2, Lpc/k;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->E()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->G()Lkotlinx/coroutines/internal/j;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    check-cast v1, Lpc/v;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->C()V

    goto :goto_0
.end method

.method public final p(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    invoke-virtual {p0, p1}, Lpc/b;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lc5/y;->k:Lkotlinx/coroutines/internal/u;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {p2}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/clearcut/d0;->u(Lp9/d;)Lnc/j;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    iget-object v0, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Lpc/v;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lpc/b;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_1
    if-eqz v0, :cond_7

    .line 40
    .line 41
    iget-object v0, p0, Lpc/b;->a:Lx9/l;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Lpc/z;

    .line 46
    .line 47
    invoke-direct {v0, p1, p2}, Lpc/z;-><init>(Ljava/lang/Object;Lnc/j;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    new-instance v2, Lpc/a0;

    .line 52
    .line 53
    invoke-direct {v2, p1, p2, v0}, Lpc/a0;-><init>(Ljava/lang/Object;Lnc/j;Lx9/l;)V

    .line 54
    .line 55
    .line 56
    move-object v0, v2

    .line 57
    :goto_2
    invoke-virtual {p0, v0}, Lpc/b;->d(Lpc/z;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    new-instance p1, Lnc/p1;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lnc/p1;-><init>(Lkotlinx/coroutines/internal/j;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Lnc/j;->D(Lx9/l;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_3
    instance-of v0, v2, Lpc/k;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    check-cast v2, Lpc/k;

    .line 77
    .line 78
    invoke-static {p0, p2, p1, v2}, Lpc/b;->b(Lpc/b;Lnc/j;Ljava/lang/Object;Lpc/k;)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    sget-object v0, Lc5/y;->n:Lkotlinx/coroutines/internal/u;

    .line 83
    .line 84
    if-ne v2, v0, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    instance-of v0, v2, Lpc/s;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string p2, "enqueueSend returned "

    .line 95
    .line 96
    invoke-static {v2, p2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Lpc/b;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-ne v0, v1, :cond_8

    .line 113
    .line 114
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_8
    sget-object v2, Lc5/y;->l:Lkotlinx/coroutines/internal/u;

    .line 121
    .line 122
    if-ne v0, v2, :cond_9

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_9
    instance-of v1, v0, Lpc/k;

    .line 126
    .line 127
    if-eqz v1, :cond_c

    .line 128
    .line 129
    check-cast v0, Lpc/k;

    .line 130
    .line 131
    invoke-static {p0, p2, p1, v0}, Lpc/b;->b(Lpc/b;Lnc/j;Ljava/lang/Object;Lpc/k;)V

    .line 132
    .line 133
    .line 134
    :goto_4
    invoke-virtual {p2}, Lnc/j;->m()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    sget-object p2, Lq9/a;->a:Lq9/a;

    .line 139
    .line 140
    if-ne p1, p2, :cond_a

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_a
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 144
    .line 145
    :goto_5
    if-ne p1, p2, :cond_b

    .line 146
    .line 147
    return-object p1

    .line 148
    :cond_b
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 149
    .line 150
    return-object p1

    .line 151
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string p2, "offerInternal returned "

    .line 154
    .line 155
    invoke-static {v0, p2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1
.end method

.method public final q()Lpc/x;
    .locals 4

    iget-object v0, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/j;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_0
    instance-of v3, v1, Lpc/x;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Lpc/x;

    instance-of v2, v2, Lpc/k;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->E()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->G()Lkotlinx/coroutines/internal/j;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    check-cast v1, Lpc/x;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->C()V

    goto :goto_0
.end method

.method public final s(Ljava/lang/Throwable;)Z
    .locals 7

    .line 1
    new-instance v0, Lpc/k;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lpc/k;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 7
    .line 8
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lpc/k;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    xor-int/2addr v3, v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/j;->u(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/i;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :goto_0
    if-eqz v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v0, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lpc/k;

    .line 38
    .line 39
    :goto_1
    invoke-static {v0}, Lpc/b;->g(Lpc/k;)V

    .line 40
    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lpc/b;->onCloseHandler:Ljava/lang/Object;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    sget-object v2, Lc5/y;->p:Lkotlinx/coroutines/internal/u;

    .line 49
    .line 50
    if-eq v0, v2, :cond_5

    .line 51
    .line 52
    sget-object v3, Lpc/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    :cond_3
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eq v6, v0, :cond_3

    .line 67
    .line 68
    :goto_2
    if-eqz v5, :cond_5

    .line 69
    .line 70
    invoke-static {v4, v0}, Lkotlin/jvm/internal/z;->c(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    check-cast v0, Lx9/l;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_5
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x7b

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 35
    .line 36
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-ne v2, v1, :cond_0

    .line 41
    .line 42
    const-string v1, "EmptyQueue"

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    instance-of v3, v2, Lpc/k;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    instance-of v3, v2, Lpc/s;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    const-string v3, "ReceiveQueued"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    instance-of v3, v2, Lpc/x;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string v3, "SendQueued"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const-string v3, "UNEXPECTED:"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eq v4, v2, :cond_6

    .line 79
    .line 80
    const-string v2, ",queueSize="

    .line 81
    .line 82
    invoke-static {v3, v2}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lkotlinx/coroutines/internal/j;

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    :goto_1
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_5

    .line 98
    .line 99
    instance-of v6, v3, Lkotlinx/coroutines/internal/j;

    .line 100
    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    instance-of v2, v4, Lpc/k;

    .line 118
    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ",closedForSend="

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    goto :goto_2

    .line 142
    :cond_6
    move-object v1, v3

    .line 143
    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const/16 v1, 0x7d

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lpc/b;->e()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method
