.class public Lcom/google/android/gms/vision/clearcut/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/vision/d;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/vision/d;->p()Lcom/google/android/gms/internal/vision/d$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast v2, Lcom/google/android/gms/internal/vision/d;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/d;->o(Lcom/google/android/gms/internal/vision/d;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/vision/clearcut/LogUtils;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast v1, Lcom/google/android/gms/internal/vision/d;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/d;->s(Lcom/google/android/gms/internal/vision/d;Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->k()Lcom/google/android/gms/internal/vision/i1;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/d;

    return-object p0
.end method

.method public static zza(JILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/vision/h4;)Lcom/google/android/gms/internal/vision/r;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/q;",
            ">;",
            "Lcom/google/android/gms/internal/vision/h4;",
            ")",
            "Lcom/google/android/gms/internal/vision/r;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/vision/l;->q()Lcom/google/android/gms/internal/vision/l$a;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/vision/i;->s()Lcom/google/android/gms/internal/vision/i$b;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast v1, Lcom/google/android/gms/internal/vision/i;

    invoke-static {v1, p4}, Lcom/google/android/gms/internal/vision/i;->q(Lcom/google/android/gms/internal/vision/i;Ljava/lang/String;)V

    .line 8
    iget-boolean p4, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_1
    iget-object p4, v0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p4, Lcom/google/android/gms/internal/vision/i;

    invoke-static {p4, p0, p1}, Lcom/google/android/gms/internal/vision/i;->o(Lcom/google/android/gms/internal/vision/i;J)V

    int-to-long p0, p2

    .line 9
    iget-boolean p2, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_2
    iget-object p2, v0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p2, Lcom/google/android/gms/internal/vision/i;

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/vision/i;->u(Lcom/google/android/gms/internal/vision/i;J)V

    .line 10
    iget-boolean p0, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_3
    iget-object p0, v0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p0, Lcom/google/android/gms/internal/vision/i;

    invoke-static {p0, p5}, Lcom/google/android/gms/internal/vision/i;->p(Lcom/google/android/gms/internal/vision/i;Ljava/lang/Iterable;)V

    .line 11
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->k()Lcom/google/android/gms/internal/vision/i1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/i;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-boolean p1, p3, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p3, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_4
    iget-object p1, p3, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p1, Lcom/google/android/gms/internal/vision/l;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/l;->p(Lcom/google/android/gms/internal/vision/l;Ljava/util/ArrayList;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/vision/m;->p()Lcom/google/android/gms/internal/vision/m$b;

    move-result-object p0

    iget p1, p6, Lcom/google/android/gms/internal/vision/h4;->b:I

    int-to-long p1, p1

    .line 15
    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p4, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p4, Lcom/google/android/gms/internal/vision/m;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/m;->s(Lcom/google/android/gms/internal/vision/m;J)V

    .line 17
    iget p1, p6, Lcom/google/android/gms/internal/vision/h4;->a:I

    int-to-long p1, p1

    .line 18
    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_6
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p4, Lcom/google/android/gms/internal/vision/m;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/m;->o(Lcom/google/android/gms/internal/vision/m;J)V

    .line 19
    iget p1, p6, Lcom/google/android/gms/internal/vision/h4;->c:I

    int-to-long p1, p1

    .line 20
    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_7
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p4, Lcom/google/android/gms/internal/vision/m;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/m;->t(Lcom/google/android/gms/internal/vision/m;J)V

    .line 21
    iget-boolean p1, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p1, Lcom/google/android/gms/internal/vision/m;

    iget-wide p4, p6, Lcom/google/android/gms/internal/vision/h4;->d:J

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/vision/m;->u(Lcom/google/android/gms/internal/vision/m;J)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->k()Lcom/google/android/gms/internal/vision/i1;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/m;

    .line 23
    iget-boolean p1, p3, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p3, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_9
    iget-object p1, p3, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p1, Lcom/google/android/gms/internal/vision/l;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/l;->o(Lcom/google/android/gms/internal/vision/l;Lcom/google/android/gms/internal/vision/m;)V

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/i1$b;->k()Lcom/google/android/gms/internal/vision/i1;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/l;

    invoke-static {}, Lcom/google/android/gms/internal/vision/r;->p()Lcom/google/android/gms/internal/vision/r$a;

    move-result-object p1

    .line 25
    iget-boolean p2, p1, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz p2, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    iput-boolean v2, p1, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_a
    iget-object p2, p1, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    check-cast p2, Lcom/google/android/gms/internal/vision/r;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/vision/r;->o(Lcom/google/android/gms/internal/vision/r;Lcom/google/android/gms/internal/vision/l;)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i1$b;->k()Lcom/google/android/gms/internal/vision/i1;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/r;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ly3/b;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object p0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Unable to find calling package info for %s"

    invoke-static {v1, p0, v2}, Li5/a;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
