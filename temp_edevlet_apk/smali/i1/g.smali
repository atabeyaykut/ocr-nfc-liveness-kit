.class public final Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/g$a;,
        Li1/g$c;,
        Li1/g$b;
    }
.end annotation


# instance fields
.field public final a:Lu0/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/o;

.field public final e:Ly0/c;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Li1/g$a;

.field public j:Z

.field public k:Li1/g$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lv0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Li1/g$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Lu0/e;IILd1/b;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/bumptech/glide/b;->a:Ly0/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/bumptech/glide/n;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/b;

    .line 27
    .line 28
    iget-object v4, p1, Lcom/bumptech/glide/o;->b:Landroid/content/Context;

    .line 29
    .line 30
    const-class v5, Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-direct {v2, v3, p1, v5, v4}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/bumptech/glide/o;->l:Lm1/g;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/n;->v(Lm1/a;)Lcom/bumptech/glide/n;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v2, Lx0/l;->a:Lx0/l$b;

    .line 42
    .line 43
    new-instance v3, Lm1/g;

    .line 44
    .line 45
    invoke-direct {v3}, Lm1/g;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lm1/a;->e(Lx0/l;)Lm1/a;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lm1/g;

    .line 53
    .line 54
    invoke-virtual {v2}, Lm1/a;->t()Lm1/a;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lm1/g;

    .line 59
    .line 60
    invoke-virtual {v2}, Lm1/a;->q()Lm1/a;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lm1/g;

    .line 65
    .line 66
    invoke-virtual {v2, p3, p4}, Lm1/a;->i(II)Lm1/a;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/n;->v(Lm1/a;)Lcom/bumptech/glide/n;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance p3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p3, p0, Li1/g;->c:Ljava/util/ArrayList;

    .line 83
    .line 84
    iput-object v1, p0, Li1/g;->d:Lcom/bumptech/glide/o;

    .line 85
    .line 86
    new-instance p3, Landroid/os/Handler;

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    new-instance v1, Li1/g$c;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Li1/g$c;-><init>(Li1/g;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Li1/g;->e:Ly0/c;

    .line 101
    .line 102
    iput-object p3, p0, Li1/g;->b:Landroid/os/Handler;

    .line 103
    .line 104
    iput-object p1, p0, Li1/g;->h:Lcom/bumptech/glide/n;

    .line 105
    .line 106
    iput-object p2, p0, Li1/g;->a:Lu0/a;

    .line 107
    .line 108
    invoke-virtual {p0, p5, p6}, Li1/g;->c(Lv0/l;Landroid/graphics/Bitmap;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Li1/g;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Li1/g;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Li1/g;->n:Li1/g$a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Li1/g;->n:Li1/g$a;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Li1/g;->b(Li1/g$a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Li1/g;->g:Z

    .line 23
    .line 24
    iget-object v0, p0, Li1/g;->a:Lu0/a;

    .line 25
    .line 26
    invoke-interface {v0}, Lu0/a;->d()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    int-to-long v4, v1

    .line 35
    add-long/2addr v2, v4

    .line 36
    invoke-interface {v0}, Lu0/a;->b()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Li1/g$a;

    .line 40
    .line 41
    iget-object v4, p0, Li1/g;->b:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-interface {v0}, Lu0/a;->e()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-direct {v1, v4, v5, v2, v3}, Li1/g$a;-><init>(Landroid/os/Handler;IJ)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Li1/g;->k:Li1/g$a;

    .line 51
    .line 52
    iget-object v1, p0, Li1/g;->h:Lcom/bumptech/glide/n;

    .line 53
    .line 54
    new-instance v2, Lp1/b;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v2, v3}, Lp1/b;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lm1/g;

    .line 68
    .line 69
    invoke-direct {v3}, Lm1/g;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Lm1/a;->p(Lp1/b;)Lm1/a;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lm1/g;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/n;->v(Lm1/a;)Lcom/bumptech/glide/n;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/n;->A(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Li1/g;->k:Li1/g$a;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v0}, Lcom/bumptech/glide/n;->z(Ln1/g;Lm1/a;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Li1/g$a;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li1/g;->g:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Li1/g;->j:Z

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Li1/g;->b:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Li1/g;->f:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iput-object p1, p0, Li1/g;->n:Li1/g$a;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Li1/g$a;->g:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Li1/g;->l:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Li1/g;->e:Ly0/c;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Ly0/c;->d(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Li1/g;->l:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Li1/g;->i:Li1/g$a;

    .line 43
    .line 44
    iput-object p1, p0, Li1/g;->i:Li1/g$a;

    .line 45
    .line 46
    iget-object p1, p0, Li1/g;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    if-ltz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Li1/g$b;

    .line 61
    .line 62
    invoke-interface {v4}, Li1/g$b;->a()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0}, Li1/g;->a()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final c(Lv0/l;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li1/g;->m:Lv0/l;

    .line 5
    .line 6
    invoke-static {p2}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Li1/g;->l:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v0, p0, Li1/g;->h:Lcom/bumptech/glide/n;

    .line 12
    .line 13
    new-instance v1, Lm1/g;

    .line 14
    .line 15
    invoke-direct {v1}, Lm1/g;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p1, v2}, Lm1/a;->s(Lv0/l;Z)Lm1/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->v(Lm1/a;)Lcom/bumptech/glide/n;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Li1/g;->h:Lcom/bumptech/glide/n;

    .line 28
    .line 29
    invoke-static {p2}, Lq1/m;->c(Landroid/graphics/Bitmap;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Li1/g;->o:I

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Li1/g;->p:I

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Li1/g;->q:I

    .line 46
    .line 47
    return-void
.end method
