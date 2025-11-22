.class public final Lv7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:Lv7/g;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv7/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo4/a;

    invoke-direct {v0, p1}, Lo4/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lv7/g;->a:Lo4/a;

    return-void
.end method

.method public static a()Lv7/g;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lv7/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv7/g;->c:Lv7/g;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lv7/g;

    invoke-direct {v2, v1}, Lv7/g;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lv7/g;->c:Lv7/g;

    :cond_0
    sget-object v1, Lv7/g;->c:Lv7/g;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Ljava/util/concurrent/Callable;)Lh5/z;
    .locals 2
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lh5/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lh5/l;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lv7/p;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lv7/p;-><init>(Ljava/util/concurrent/Callable;Lh5/l;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lv7/q;->a:Lv7/q;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lv7/q;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lh5/l;->a:Lh5/z;

    .line 17
    .line 18
    return-object p0
.end method
