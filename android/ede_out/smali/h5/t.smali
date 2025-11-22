.class public final Lh5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/v;
.implements Lh5/g;
.implements Lh5/f;
.implements Lh5/d;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh5/x;Lh5/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh5/t;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/t;->c:Ljava/lang/Object;

    iput-object p1, p0, Lh5/t;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lh5/j;Lh5/z;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh5/t;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/t;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/t;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh5/t;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lh5/t;->d:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0}, Lh5/z;->s()V

    return-void
.end method

.method public final b(Lh5/k;)V
    .locals 2

    .line 1
    iget v0, p0, Lh5/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Lh5/k;->k()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lh5/t;->c:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p0, Lh5/t;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lh5/d;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p1, p0, Lh5/t;->b:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v0, Ll3/x;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1, p0}, Ll3/x;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :goto_1
    new-instance v0, Ll3/n;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Ll3/n;-><init>(Lh5/t;Lh5/k;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lh5/t;->b:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

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

    iget-object v0, p0, Lh5/t;->d:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0, p1}, Lh5/z;->q(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lh5/t;->d:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0, p1}, Lh5/z;->r(Ljava/lang/Object;)V

    return-void
.end method
