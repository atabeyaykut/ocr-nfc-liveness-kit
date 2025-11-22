.class public final Lh5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh5/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/q;

    invoke-direct {v0}, Lh5/q;-><init>()V

    iput-object v0, p0, Lh5/a;->a:Lh5/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/a;->a:Lh5/q;

    .line 2
    .line 3
    iget-object v0, v0, Lh5/q;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lh5/z;

    .line 6
    .line 7
    iget-object v1, v0, Lh5/z;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-boolean v2, v0, Lh5/z;->c:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Lh5/z;->c:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v0, Lh5/z;->e:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v1, v0, Lh5/z;->b:Lh5/w;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lh5/w;->b(Lh5/k;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method
