.class public final Lg/k;
.super Lg/l;
.source "SourceFile"


# instance fields
.field public final a:Led/z;

.field public final b:Led/k;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/io/Closeable;

.field public final e:Lg/l$a;

.field public f:Z

.field public g:Led/d0;


# direct methods
.method public constructor <init>(Led/z;Led/k;Ljava/lang/String;Ljava/io/Closeable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg/k;->a:Led/z;

    .line 5
    .line 6
    iput-object p2, p0, Lg/k;->b:Led/k;

    .line 7
    .line 8
    iput-object p3, p0, Lg/k;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lg/k;->d:Ljava/io/Closeable;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lg/k;->e:Lg/l$a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lg/l$a;
    .locals 1

    iget-object v0, p0, Lg/k;->e:Lg/l$a;

    return-object v0
.end method

.method public final declared-synchronized b()Led/g;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lg/k;->f:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lg/k;->g:Led/d0;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lg/k;->b:Led/k;

    .line 13
    .line 14
    iget-object v1, p0, Lg/k;->a:Led/z;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Led/k;->l(Led/z;)Led/j0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Led/v;->b(Led/j0;)Led/d0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lg/k;->g:Led/d0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "closed"

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    monitor-exit p0

    .line 45
    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lg/k;->f:Z

    iget-object v0, p0, Lg/k;->g:Led/d0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lu/c;->a(Ljava/io/Closeable;)V

    :goto_0
    iget-object v0, p0, Lg/k;->d:Ljava/io/Closeable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lu/c;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
