.class public final Lpc/a$e;
.super Lpc/s;
.source "SourceFile"

# interfaces
.implements Lnc/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/s<",
        "TE;>;",
        "Lnc/k0;"
    }
.end annotation


# instance fields
.field public final d:Lpc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/a<",
            "TE;>;"
        }
    .end annotation
.end field

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
            "Ljava/lang/Object;",
            "Lp9/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I


# direct methods
.method public constructor <init>(ILx9/p;Lpc/a;Lkotlinx/coroutines/selects/c;)V
    .locals 0

    invoke-direct {p0}, Lpc/s;-><init>()V

    iput-object p3, p0, Lpc/a$e;->d:Lpc/a;

    iput-object p4, p0, Lpc/a$e;->e:Lkotlinx/coroutines/selects/c;

    iput-object p2, p0, Lpc/a$e;->f:Lx9/p;

    iput p1, p0, Lpc/a$e;->g:I

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Object;)Lx9/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lx9/l<",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/a$e;->d:Lpc/a;

    .line 2
    .line 3
    iget-object v0, v0, Lpc/b;->a:Lx9/l;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lpc/a$e;->e:Lkotlinx/coroutines/selects/c;

    .line 10
    .line 11
    invoke-interface {v1}, Lkotlinx/coroutines/selects/c;->r()Lp9/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lp9/d;->getContext()Lp9/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lkotlinx/coroutines/internal/n;

    .line 20
    .line 21
    invoke-direct {v2, v0, p1, v1}, Lkotlinx/coroutines/internal/n;-><init>(Lx9/l;Ljava/lang/Object;Lp9/f;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v2

    .line 25
    :goto_0
    return-object p1
.end method

.method public final K(Lpc/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/a$e;->e:Lkotlinx/coroutines/selects/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/selects/c;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lpc/a$e;->g:I

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lpc/a$e;->f:Lx9/p;

    .line 19
    .line 20
    iget-object p1, p1, Lpc/k;->d:Ljava/lang/Throwable;

    .line 21
    .line 22
    new-instance v2, Lpc/j$a;

    .line 23
    .line 24
    invoke-direct {v2, p1}, Lpc/j$a;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lpc/j;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lkotlinx/coroutines/selects/c;->r()Lp9/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_0
    invoke-static {p1, v0, v1}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {p1, v1, v2}, La2/b;->m(Lp9/d;Ljava/lang/Object;Lx9/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-virtual {p1}, Lpc/k;->O()Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {v0, p1}, Lkotlinx/coroutines/selects/c;->t(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;
    .locals 0

    iget-object p1, p0, Lpc/a$e;->e:Lkotlinx/coroutines/selects/c;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/u;

    return-object p1
.end method

.method public final dispose()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc/a$e;->d:Lpc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lpc/a$e;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lpc/j;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    iget-object v1, p0, Lpc/a$e;->e:Lkotlinx/coroutines/selects/c;

    .line 14
    .line 15
    invoke-interface {v1}, Lkotlinx/coroutines/selects/c;->r()Lp9/d;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, p1}, Lpc/a$e;->J(Ljava/lang/Object;)Lx9/l;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v2, p0, Lpc/a$e;->f:Lx9/p;

    .line 24
    .line 25
    :try_start_0
    invoke-static {v0, v1, v2}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v2, Ll9/m;->a:Ll9/m;

    .line 34
    .line 35
    invoke-static {v0, v2, p1}, La2/b;->m(Lp9/d;Ljava/lang/Object;Lx9/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v1, v0}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ReceiveSelect@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x5b

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lpc/a$e;->e:Lkotlinx/coroutines/selects/c;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ",receiveMode="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lpc/a$e;->g:I

    .line 31
    .line 32
    const/16 v2, 0x5d

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
