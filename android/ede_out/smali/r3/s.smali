.class public final Lr3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lr3/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final c:Lr3/t;


# instance fields
.field public a:Lr3/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lr3/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lr3/t;-><init>(IZZII)V

    sput-object v6, Lr3/s;->c:Lr3/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lr3/s;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lr3/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr3/s;->b:Lr3/s;

    if-nez v1, :cond_0

    new-instance v1, Lr3/s;

    invoke-direct {v1}, Lr3/s;-><init>()V

    sput-object v1, Lr3/s;->b:Lr3/s;

    :cond_0
    sget-object v1, Lr3/s;->b:Lr3/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
