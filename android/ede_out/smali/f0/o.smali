.class public final Lf0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$a;
.implements Lf0/k;
.implements Lf0/m;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ld0/l;

.field public final f:Lg0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lg0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lg0/c;

.field public final i:Lf0/b;

.field public j:Z


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf0/o;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf0/o;->b:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Lf0/b;

    .line 19
    .line 20
    invoke-direct {v0}, Lf0/b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf0/o;->i:Lf0/b;

    .line 24
    .line 25
    iget-object v0, p3, Lk0/i;->a:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lf0/o;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v0, p3, Lk0/i;->e:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lf0/o;->d:Z

    .line 32
    .line 33
    iput-object p1, p0, Lf0/o;->e:Ld0/l;

    .line 34
    .line 35
    iget-object p1, p3, Lk0/i;->b:Lj0/m;

    .line 36
    .line 37
    invoke-interface {p1}, Lj0/m;->c()Lg0/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lf0/o;->f:Lg0/a;

    .line 42
    .line 43
    iget-object v0, p3, Lk0/i;->c:Lj0/m;

    .line 44
    .line 45
    invoke-interface {v0}, Lj0/m;->c()Lg0/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lf0/o;->g:Lg0/a;

    .line 50
    .line 51
    iget-object p3, p3, Lk0/i;->d:Lj0/b;

    .line 52
    .line 53
    invoke-virtual {p3}, Lj0/b;->c()Lg0/a;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    move-object v1, p3

    .line 58
    check-cast v1, Lg0/c;

    .line 59
    .line 60
    iput-object v1, p0, Lf0/o;->h:Lg0/c;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ll0/b;->e(Lg0/a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ll0/b;->e(Lg0/a;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf0/o;->j:Z

    iget-object v0, p0, Lf0/o;->e:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lf0/c;

    .line 16
    .line 17
    instance-of v1, v0, Lf0/s;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lf0/s;

    .line 22
    .line 23
    iget v1, v0, Lf0/s;->c:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lf0/o;->i:Lf0/b;

    .line 29
    .line 30
    iget-object v1, v1, Lf0/b;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lf0/s;->c(Lg0/a$a;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lp0/f;->d(Li0/e;ILjava/util/ArrayList;Li0/e;Lf0/k;)V

    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Ld0/q;->j:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lf0/o;->g:Lg0/a;

    goto :goto_0

    :cond_0
    sget-object v0, Ld0/q;->l:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lf0/o;->f:Lg0/a;

    goto :goto_0

    :cond_1
    sget-object v0, Ld0/q;->k:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lf0/o;->h:Lg0/c;

    :goto_0
    invoke-virtual {p2, p1}, Lg0/a;->k(Lq0/c;)V

    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lf0/o;->j:Z

    iget-object v2, v0, Lf0/o;->a:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lf0/o;->d:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, v0, Lf0/o;->j:Z

    return-object v2

    :cond_1
    iget-object v1, v0, Lf0/o;->g:Lg0/a;

    invoke-virtual {v1}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v5

    const/4 v6, 0x0

    iget-object v7, v0, Lf0/o;->h:Lg0/c;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lg0/c;->l()F

    move-result v7

    :goto_0
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpl-float v9, v7, v8

    if-lez v9, :cond_3

    move v7, v8

    :cond_3
    iget-object v8, v0, Lf0/o;->f:Lg0/a;

    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lf0/o;->b:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v12, v7, v6

    if-lez v12, :cond_4

    iget v13, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v4

    mul-float v14, v7, v5

    sub-float v15, v13, v14

    iget v3, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    sub-float v14, v3, v14

    invoke-virtual {v9, v15, v14, v13, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v9, v6, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_4
    iget v3, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v12, :cond_5

    iget v3, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    mul-float v13, v7, v5

    sub-float v14, v6, v13

    add-float/2addr v13, v3

    invoke-virtual {v9, v3, v14, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v9, v11, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_5
    iget v3, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v12, :cond_6

    iget v3, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    mul-float v13, v7, v5

    add-float v14, v3, v13

    add-float/2addr v13, v6

    invoke-virtual {v9, v3, v6, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v9, v3, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget v3, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v12, :cond_7

    iget v3, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    mul-float v7, v7, v5

    sub-float v4, v3, v7

    iget v5, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    add-float/2addr v7, v5

    invoke-virtual {v9, v4, v5, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v2, v9, v1, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lf0/o;->i:Lf0/b;

    invoke-virtual {v1, v2}, Lf0/b;->a(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf0/o;->j:Z

    return-object v2
.end method
