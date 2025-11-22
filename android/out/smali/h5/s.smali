.class public final Lh5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/g;
.implements Lh5/f;
.implements Lh5/d;
.implements Lh5/v;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lh5/b;Lh5/z;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh5/s;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/s;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/s;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh5/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lh5/g;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh5/s;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/s;->c:Ljava/lang/Object;

    iput-object p1, p0, Lh5/s;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/s;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lh5/s;->d:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0}, Lh5/z;->s()V

    return-void
.end method

.method public final b(Lh5/k;)V
    .locals 3

    .line 1
    iget v0, p0, Lh5/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lo3/n0;

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-direct {v0, v1, p0, p1}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lh5/s;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lh5/s;->c:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lh5/s;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lh5/g;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lh5/s;->b:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    new-instance v1, Lo3/n0;

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    invoke-direct {v1, v2, p0, p1}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lh5/s;->d:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0, p1}, Lh5/z;->q(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lh5/s;->d:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0, p1}, Lh5/z;->r(Ljava/lang/Object;)V

    return-void
.end method
