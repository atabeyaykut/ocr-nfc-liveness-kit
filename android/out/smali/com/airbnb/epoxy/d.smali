.class public final Lcom/airbnb/epoxy/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/d$a;,
        Lcom/airbnb/epoxy/d$b;,
        Lcom/airbnb/epoxy/d$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/epoxy/z;

.field public final b:Lcom/airbnb/epoxy/d$c;

.field public final c:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/airbnb/epoxy/d$b;

.field public volatile e:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field

.field public volatile f:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/airbnb/epoxy/d$c;Lcom/airbnb/epoxy/q$a;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/airbnb/epoxy/q$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/epoxy/d$b;

    invoke-direct {v0}, Lcom/airbnb/epoxy/d$b;-><init>()V

    iput-object v0, p0, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    new-instance v0, Lcom/airbnb/epoxy/z;

    invoke-direct {v0, p1}, Lcom/airbnb/epoxy/z;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/airbnb/epoxy/d;->a:Lcom/airbnb/epoxy/z;

    iput-object p2, p0, Lcom/airbnb/epoxy/d;->b:Lcom/airbnb/epoxy/d$c;

    iput-object p3, p0, Lcom/airbnb/epoxy/d;->c:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/airbnb/epoxy/d$b;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget v2, v0, Lcom/airbnb/epoxy/d$b;->a:I

    .line 9
    .line 10
    iput v2, v0, Lcom/airbnb/epoxy/d$b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    .line 16
    throw v1
.end method

.method public final declared-synchronized b(ILjava/util/List;)Z
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/d$b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/airbnb/epoxy/d;->e:Ljava/util/List;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
