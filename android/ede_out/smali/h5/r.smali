.class public final Lh5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
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

    iput v0, p0, Lh5/r;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/r;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/r;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh5/r;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lh5/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh5/r;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/r;->c:Ljava/lang/Object;

    iput-object p1, p0, Lh5/r;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/r;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lh5/k;)V
    .locals 3

    .line 1
    iget v0, p0, Lh5/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lo3/k0;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lo3/k0;-><init>(Lh5/v;Lh5/k;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lh5/r;->b:Ljava/util/concurrent/Executor;

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
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lh5/k;->k()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lh5/r;->c:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lh5/r;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lh5/f;

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v0, p0, Lh5/r;->b:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    new-instance v1, Lo3/k0;

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-direct {v1, p0, p1, v2}, Lo3/k0;-><init>(Lh5/v;Lh5/k;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_1
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
