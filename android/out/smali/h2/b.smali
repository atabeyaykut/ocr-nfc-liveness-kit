.class public final Lh2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lk2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lk2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh2/b;->d:Ljava/lang/Object;

    new-instance v0, Lh2/b$a;

    invoke-direct {v0}, Lh2/b$a;-><init>()V

    new-instance v1, Ljava/util/PriorityQueue;

    const/16 v2, 0x78

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lh2/b;->b:Ljava/util/PriorityQueue;

    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lh2/b;->a:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lk2/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x6

    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lk2/a;

    .line 21
    .line 22
    iget-object v1, v1, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lh2/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lh2/b;->a:Ljava/util/PriorityQueue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lh2/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh2/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v1, v2

    .line 17
    const/16 v2, 0x78

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lk2/a;

    .line 36
    .line 37
    iget-object v1, v1, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    :goto_1
    iget-object v1, p0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v3, p0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    add-int/2addr v1, v3

    .line 56
    if-lt v1, v2, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lk2/a;

    .line 73
    .line 74
    iget-object v1, v1, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw v1
.end method
