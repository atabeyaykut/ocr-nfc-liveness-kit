.class public final Lqd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/ArrayList;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lqd/m;

.field public c:Lqd/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqd/g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lqd/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd/g;->a:Ljava/lang/Object;

    iput-object p2, p0, Lqd/g;->b:Lqd/m;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lqd/m;)Lqd/g;
    .locals 2

    sget-object v0, Lqd/g;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd/g;

    iput-object p0, v1, Lqd/g;->a:Ljava/lang/Object;

    iput-object p1, v1, Lqd/g;->b:Lqd/m;

    const/4 p0, 0x0

    iput-object p0, v1, Lqd/g;->c:Lqd/g;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lqd/g;

    invoke-direct {v0, p0, p1}, Lqd/g;-><init>(Ljava/lang/Object;Lqd/m;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
