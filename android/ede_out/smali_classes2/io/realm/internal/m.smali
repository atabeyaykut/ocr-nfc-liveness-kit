.class public final Lio/realm/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/internal/m;->a:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lio/realm/internal/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lio/realm/internal/m;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    const-string v1, "10.17.0"

    .line 11
    .line 12
    new-instance v2, Lg2/e;

    .line 13
    .line 14
    invoke-direct {v2}, Lg2/e;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0, v1}, Lg2/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    sput-boolean p0, Lio/realm/internal/m;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0

    .line 27
    throw p0
.end method
