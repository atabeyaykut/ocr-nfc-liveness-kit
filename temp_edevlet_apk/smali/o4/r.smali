.class public final Lo4/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lo4/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a(Lo4/i;)Lo4/m;
    .locals 3

    const-class v0, Lo4/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo4/r;->a:Lo4/q;

    if-nez v1, :cond_0

    new-instance v1, Lo4/q;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo4/q;-><init>(I)V

    sput-object v1, Lo4/r;->a:Lo4/q;

    :cond_0
    sget-object v1, Lo4/r;->a:Lo4/q;

    invoke-virtual {v1, p0}, Lv7/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo4/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
