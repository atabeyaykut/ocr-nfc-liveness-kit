.class public final Lqd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd/l$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final b:[Lqd/l$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lqd/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Lqd/l$a;

    sput-object v0, Lqd/l;->b:[Lqd/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lqd/l$a;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lqd/l$a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lqd/l$a;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lqd/l$a;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lqd/l$a;->c:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lqd/l$a;->d:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lqd/l$a;->e:Ljava/lang/Class;

    .line 31
    .line 32
    iput-boolean v2, p0, Lqd/l$a;->f:Z

    .line 33
    .line 34
    sget-object v1, Lqd/l;->b:[Lqd/l$a;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :goto_0
    const/4 v3, 0x4

    .line 38
    if-ge v2, v3, :cond_1

    .line 39
    .line 40
    :try_start_0
    sget-object v3, Lqd/l;->b:[Lqd/l$a;

    .line 41
    .line 42
    aget-object v4, v3, v2

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    aput-object p0, v3, v2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    monitor-exit v1

    .line 53
    return-object v0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public static b()Lqd/l$a;
    .locals 5

    sget-object v0, Lqd/l;->b:[Lqd/l$a;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :try_start_0
    sget-object v2, Lqd/l;->b:[Lqd/l$a;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    aput-object v4, v2, v1

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lqd/l$a;

    invoke-direct {v0}, Lqd/l$a;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
