.class public final Lcom/bumptech/glide/n;
.super Lm1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lm1/a<",
        "Lcom/bumptech/glide/n<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public final D:Landroid/content/Context;

.field public final E:Lcom/bumptech/glide/o;

.field public final F:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final G:Lcom/bumptech/glide/h;

.field public H:Lcom/bumptech/glide/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public I:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public K:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public L:Lcom/bumptech/glide/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public M:Lcom/bumptech/glide/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public N:Z

.field public O:Z

.field public P:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm1/g;

    invoke-direct {v0}, Lm1/g;-><init>()V

    sget-object v1, Lx0/l;->b:Lx0/l$c;

    invoke-virtual {v0, v1}, Lm1/a;->e(Lx0/l;)Lm1/a;

    move-result-object v0

    check-cast v0, Lm1/g;

    invoke-virtual {v0}, Lm1/a;->k()Lm1/a;

    move-result-object v0

    check-cast v0, Lm1/g;

    invoke-virtual {v0}, Lm1/a;->q()Lm1/a;

    move-result-object v0

    check-cast v0, Lm1/g;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/o;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/n;->N:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/n;->E:Lcom/bumptech/glide/o;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/n;->F:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/n;->D:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p4, p2, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/b;

    .line 14
    .line 15
    iget-object p4, p4, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    .line 16
    .line 17
    iget-object p4, p4, Lcom/bumptech/glide/h;->f:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bumptech/glide/p;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/bumptech/glide/p;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-nez v0, :cond_2

    .line 67
    .line 68
    sget-object v0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/a;

    .line 69
    .line 70
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/n;->G:Lcom/bumptech/glide/h;

    .line 75
    .line 76
    iget-object p1, p2, Lcom/bumptech/glide/o;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Lm1/f;

    .line 93
    .line 94
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/n;->u(Lm1/f;)Lcom/bumptech/glide/n;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    monitor-enter p2

    .line 99
    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/o;->k:Lm1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    monitor-exit p2

    .line 102
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->v(Lm1/a;)Lcom/bumptech/glide/n;

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p2

    .line 108
    throw p1
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm1/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->A(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/n;->I:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/bumptech/glide/n;->O:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lm1/a;->l()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final B(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/i;
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/n;->D:Landroid/content/Context;

    iget-object v5, v0, Lcom/bumptech/glide/n;->I:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/n;->F:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    .line 1
    iget-object v3, v0, Lcom/bumptech/glide/n;->G:Lcom/bumptech/glide/h;

    iget-object v14, v3, Lcom/bumptech/glide/h;->g:Lx0/m;

    move-object/from16 v1, p4

    .line 2
    iget-object v15, v1, Lcom/bumptech/glide/p;->a:Lo1/e;

    .line 3
    new-instance v16, Lm1/i;

    move-object/from16 v1, v16

    move-object/from16 v4, p8

    move-object/from16 v7, p5

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v15}, Lm1/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lm1/a;IILcom/bumptech/glide/j;Ln1/g;Ljava/util/ArrayList;Lm1/e;Lx0/m;Lo1/e;)V

    return-object v16
.end method

.method public final C(Lg1/d;)Lcom/bumptech/glide/n;
    .locals 1
    .param p1    # Lg1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm1/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->C(Lg1/d;)Lcom/bumptech/glide/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/bumptech/glide/n;->N:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lm1/a;->l()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final b(Lm1/a;)Lm1/a;
    .locals 0
    .param p1    # Lm1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lm1/a;->b(Lm1/a;)Lm1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/n;

    return-object p1
.end method

.method public final bridge synthetic c()Lm1/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bumptech/glide/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/n;

    invoke-super {p0, p1}, Lm1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/n;->F:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bumptech/glide/n;->F:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    iget-object v1, p1, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/n;->I:Ljava/lang/Object;

    iget-object v1, p1, Lcom/bumptech/glide/n;->I:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    iget-object v1, p1, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    iget-object v1, p1, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/n;->N:Z

    iget-boolean v1, p1, Lcom/bumptech/glide/n;->N:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/n;->O:Z

    iget-boolean p1, p1, Lcom/bumptech/glide/n;->O:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lm1/a;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/n;->F:Ljava/lang/Class;

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/n;->I:Ljava/lang/Object;

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/n;->N:Z

    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/n;->O:Z

    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    move-result v0

    return v0
.end method

.method public final u(Lm1/f;)Lcom/bumptech/glide/n;
    .locals 1
    .param p1    # Lm1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/f<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm1/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->u(Lm1/f;)Lcom/bumptech/glide/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lm1/a;->l()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public final v(Lm1/a;)Lcom/bumptech/glide/n;
    .locals 0
    .param p1    # Lm1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/a<",
            "*>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lm1/a;->b(Lm1/a;)Lm1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/n;

    return-object p1
.end method

.method public final w(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/d;
    .locals 18
    .param p6    # Lm1/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    iget-object v0, v9, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    if-eqz v0, :cond_0

    new-instance v0, Lm1/b;

    move-object/from16 v1, p6

    invoke-direct {v0, v11, v1}, Lm1/b;-><init>(Ljava/lang/Object;Lm1/e;)V

    move-object v6, v0

    move-object v12, v6

    goto :goto_0

    :cond_0
    move-object/from16 v1, p6

    const/4 v0, 0x0

    move-object v12, v0

    move-object v6, v1

    .line 1
    :goto_0
    iget-object v0, v9, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    if-eqz v0, :cond_8

    iget-boolean v1, v9, Lcom/bumptech/glide/n;->P:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    iget-boolean v2, v0, Lcom/bumptech/glide/n;->N:Z

    if-eqz v2, :cond_1

    move-object/from16 v13, p4

    goto :goto_1

    :cond_1
    move-object v13, v1

    .line 2
    :goto_1
    iget v0, v0, Lm1/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, v9, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    .line 4
    iget-object v0, v0, Lm1/a;->d:Lcom/bumptech/glide/j;

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v14, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/j;

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown priority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v2, v9, Lm1/a;->d:Lcom/bumptech/glide/j;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/j;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/j;

    :goto_2
    move-object v15, v0

    .line 8
    iget-object v0, v9, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    .line 9
    iget v1, v0, Lm1/a;->l:I

    .line 10
    iget v0, v0, Lm1/a;->k:I

    .line 11
    invoke-static/range {p1 .. p2}, Lq1/m;->h(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    .line 12
    iget v3, v2, Lm1/a;->l:I

    .line 13
    iget v2, v2, Lm1/a;->k:I

    invoke-static {v3, v2}, Lq1/m;->h(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 14
    iget v0, v10, Lm1/a;->l:I

    .line 15
    iget v1, v10, Lm1/a;->k:I

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_3

    :cond_6
    move/from16 v17, v0

    move/from16 v16, v1

    .line 16
    :goto_3
    new-instance v8, Lm1/j;

    invoke-direct {v8, v11, v6}, Lm1/j;-><init>(Ljava/lang/Object;Lm1/e;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v8

    move-object/from16 v7, p7

    move-object/from16 p3, v8

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/n;->B(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/i;

    move-result-object v8

    iput-boolean v14, v9, Lcom/bumptech/glide/n;->P:Z

    iget-object v5, v9, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move-object v3, v15

    move-object v4, v13

    move-object/from16 v6, p3

    move-object v13, v8

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/n;->w(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/bumptech/glide/n;->P:Z

    move-object/from16 v1, p3

    .line 17
    iput-object v13, v1, Lm1/j;->c:Lm1/d;

    iput-object v0, v1, Lm1/j;->d:Lm1/d;

    move-object v13, v1

    goto :goto_4

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/n;->B(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/i;

    move-result-object v8

    move-object v13, v8

    :goto_4
    if-nez v12, :cond_9

    return-object v13

    .line 19
    :cond_9
    iget-object v0, v9, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    .line 20
    iget v1, v0, Lm1/a;->l:I

    .line 21
    iget v0, v0, Lm1/a;->k:I

    .line 22
    invoke-static/range {p1 .. p2}, Lq1/m;->h(II)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v9, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    .line 23
    iget v3, v2, Lm1/a;->l:I

    .line 24
    iget v2, v2, Lm1/a;->k:I

    invoke-static {v3, v2}, Lq1/m;->h(II)Z

    move-result v2

    if-nez v2, :cond_a

    .line 25
    iget v0, v10, Lm1/a;->l:I

    .line 26
    iget v1, v10, Lm1/a;->k:I

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_a
    move v2, v0

    .line 27
    :goto_5
    iget-object v5, v9, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    iget-object v4, v5, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    .line 28
    iget-object v3, v5, Lm1/a;->d:Lcom/bumptech/glide/j;

    move-object v0, v5

    move-object v6, v12

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 29
    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/n;->w(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/d;

    move-result-object v0

    .line 30
    iput-object v13, v12, Lm1/b;->c:Lm1/d;

    iput-object v0, v12, Lm1/b;->d:Lm1/d;

    return-object v12
.end method

.method public final x()Lcom/bumptech/glide/n;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/n;

    iget-object v1, v0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    invoke-virtual {v1}, Lcom/bumptech/glide/p;->b()Lcom/bumptech/glide/p;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    iget-object v1, v0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/n;->K:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/n;->L:Lcom/bumptech/glide/n;

    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/n;->M:Lcom/bumptech/glide/n;

    :cond_2
    return-object v0
.end method

.method public final z(Ln1/g;Lm1/a;)V
    .locals 10
    .param p1    # Ln1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/n;->O:Z

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    new-instance v9, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    iget-object v5, p0, Lcom/bumptech/glide/n;->H:Lcom/bumptech/glide/p;

    .line 15
    .line 16
    iget-object v4, p2, Lm1/a;->d:Lcom/bumptech/glide/j;

    .line 17
    .line 18
    iget v2, p2, Lm1/a;->l:I

    .line 19
    .line 20
    iget v3, p2, Lm1/a;->k:I

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    move-object v6, p2

    .line 24
    move-object v8, p1

    .line 25
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/n;->w(IILcom/bumptech/glide/j;Lcom/bumptech/glide/p;Lm1/a;Lm1/e;Ln1/g;Ljava/lang/Object;)Lm1/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1}, Ln1/g;->a()Lm1/d;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lm1/d;->b(Lm1/d;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-boolean p2, p2, Lm1/a;->j:Z

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Lm1/d;->j()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    if-nez p2, :cond_2

    .line 53
    .line 54
    invoke-static {v1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Lm1/d;->isRunning()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    invoke-interface {v1}, Lm1/d;->i()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object p2, p0, Lcom/bumptech/glide/n;->E:Lcom/bumptech/glide/o;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/o;->k(Ln1/g;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0}, Ln1/g;->j(Lm1/d;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/bumptech/glide/n;->E:Lcom/bumptech/glide/o;

    .line 76
    .line 77
    monitor-enter p2

    .line 78
    :try_start_0
    iget-object v1, p2, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/bumptech/glide/manager/x;->a:Ljava/util/Set;

    .line 81
    .line 82
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object p1, p2, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    .line 86
    .line 87
    iget-object v1, p1, Lcom/bumptech/glide/manager/r;->a:Ljava/util/Set;

    .line 88
    .line 89
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-boolean v1, p1, Lcom/bumptech/glide/manager/r;->c:Z

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Lm1/d;->i()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v0}, Lm1/d;->clear()V

    .line 101
    .line 102
    .line 103
    const-string v1, "RequestTracker"

    .line 104
    .line 105
    const/4 v2, 0x2

    .line 106
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    const-string v2, "Paused, delaying request"

    .line 113
    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object p1, p1, Lcom/bumptech/glide/manager/r;->b:Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    :goto_1
    monitor-exit p2

    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p2

    .line 126
    throw p1

    .line 127
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string p2, "You must call #load() before calling #into()"

    .line 130
    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method
