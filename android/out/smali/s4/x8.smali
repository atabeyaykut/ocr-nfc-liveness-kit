.class public final Ls4/x8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Ls4/r0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ls4/w8;

.field public final d:Lv7/l;

.field public final e:Lh5/z;

.field public final f:Lh5/z;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv7/l;Ls4/t8;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/x8;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/x8;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls4/x8;->a:Ljava/lang/String;

    invoke-static {p1}, Lv7/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls4/x8;->b:Ljava/lang/String;

    iput-object p2, p0, Ls4/x8;->d:Lv7/l;

    iput-object p3, p0, Ls4/x8;->c:Ls4/w8;

    iput-object p4, p0, Ls4/x8;->g:Ljava/lang/String;

    invoke-static {}, Lv7/g;->a()Lv7/g;

    move-result-object p1

    new-instance p3, Ls4/v8;

    invoke-direct {p3, p4}, Ls4/v8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lv7/g;->b(Ljava/util/concurrent/Callable;)Lh5/z;

    move-result-object p1

    iput-object p1, p0, Ls4/x8;->e:Lh5/z;

    invoke-static {}, Lv7/g;->a()Lv7/g;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/gms/internal/measurement/a;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p2}, Lcom/google/android/gms/internal/measurement/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lv7/g;->b(Ljava/util/concurrent/Callable;)Lh5/z;

    move-result-object p1

    iput-object p1, p0, Ls4/x8;->f:Lh5/z;

    return-void
.end method

.method public static a(Ljava/util/List;D)J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;D)J"
        }
    .end annotation

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final b(Ls4/a9;Ls4/z6;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lv7/g;->b:Ljava/lang/Object;

    sget-object v0, Lv7/q;->a:Lv7/q;

    new-instance v1, Ls4/u8;

    invoke-direct {v1, p0, p1, p2, p3}, Ls4/u8;-><init>(Ls4/x8;Ls4/a9;Ls4/z6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lv7/q;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ls4/x8;->e:Lh5/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh5/z;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lh5/z;->i()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lr3/n;->c:Lr3/n;

    .line 17
    .line 18
    iget-object v1, p0, Ls4/x8;->g:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lr3/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final d(Ls4/z6;J)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ls4/x8;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
