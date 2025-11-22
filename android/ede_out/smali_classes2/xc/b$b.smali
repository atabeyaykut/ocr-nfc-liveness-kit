.class public final Lxc/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Led/o;

.field public b:Z

.field public final synthetic c:Lxc/b;


# direct methods
.method public constructor <init>(Lxc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lxc/b$b;->c:Lxc/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Led/o;

    .line 7
    .line 8
    iget-object p1, p1, Lxc/b;->g:Led/f;

    .line 9
    .line 10
    invoke-interface {p1}, Led/h0;->h()Led/k0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Led/o;-><init>(Led/k0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lxc/b$b;->a:Led/o;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final M(Led/e;J)V
    .locals 3

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lxc/b$b;->b:Z

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, p2, v0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lxc/b$b;->c:Lxc/b;

    .line 20
    .line 21
    iget-object v1, v0, Lxc/b;->g:Led/f;

    .line 22
    .line 23
    invoke-interface {v1, p2, p3}, Led/f;->U(J)Led/f;

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lxc/b;->g:Led/f;

    .line 27
    .line 28
    const-string v2, "\r\n"

    .line 29
    .line 30
    invoke-interface {v1, v2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lxc/b;->g:Led/f;

    .line 34
    .line 35
    invoke-interface {v1, p1, p2, p3}, Led/h0;->M(Led/e;J)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lxc/b;->g:Led/f;

    .line 39
    .line 40
    invoke-interface {p1, v2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "closed"

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lxc/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lxc/b$b;->b:Z

    .line 10
    .line 11
    iget-object v0, p0, Lxc/b$b;->c:Lxc/b;

    .line 12
    .line 13
    iget-object v0, v0, Lxc/b;->g:Led/f;

    .line 14
    .line 15
    const-string v1, "0\r\n\r\n"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lxc/b$b;->c:Lxc/b;

    .line 21
    .line 22
    iget-object v1, p0, Lxc/b$b;->a:Led/o;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lxc/b;->i(Lxc/b;Led/o;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lxc/b$b;->c:Lxc/b;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    iput v1, v0, Lxc/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lxc/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lxc/b$b;->c:Lxc/b;

    .line 9
    .line 10
    iget-object v0, v0, Lxc/b;->g:Led/f;

    .line 11
    .line 12
    invoke-interface {v0}, Led/f;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public final h()Led/k0;
    .locals 1

    iget-object v0, p0, Lxc/b$b;->a:Led/o;

    return-object v0
.end method
