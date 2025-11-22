.class public final Lc5/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lc5/h4;


# direct methods
.method public constructor <init>(Lc5/h4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/e4;->b:Lc5/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/e4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lc5/e4;->b:Lc5/h4;

    .line 3
    .line 4
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast p1, Lc5/i4;

    .line 7
    .line 8
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 9
    .line 10
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 14
    .line 15
    iget-object v0, p0, Lc5/e4;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method
