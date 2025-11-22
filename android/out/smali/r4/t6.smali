.class public final Lr4/t6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lr4/t6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lr4/t6;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/t6;->a:Lr4/t6;

    if-nez v1, :cond_0

    new-instance v1, Lr4/t6;

    invoke-direct {v1}, Lr4/t6;-><init>()V

    sput-object v1, Lr4/t6;->a:Lr4/t6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
