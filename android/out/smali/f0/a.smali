.class public abstract Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$a;
.implements Lf0/k;
.implements Lf0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/PathMeasure;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public final e:Ld0/l;

.field public final f:Ll0/b;

.field public final g:Ljava/util/ArrayList;

.field public final h:[F

.field public final i:Le0/a;

.field public final j:Lg0/c;

.field public final k:Lg0/e;

.field public final l:Ljava/util/ArrayList;

.field public final m:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLj0/d;Lj0/b;Ljava/util/List;Lj0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/l;",
            "Ll0/b;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lj0/d;",
            "Lj0/b;",
            "Ljava/util/List<",
            "Lj0/b;",
            ">;",
            "Lj0/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lf0/a;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf0/a;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf0/a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lf0/a;->d:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/a;->g:Ljava/util/ArrayList;

    new-instance v0, Le0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le0/a;-><init>(I)V

    iput-object v0, p0, Lf0/a;->i:Le0/a;

    iput-object p1, p0, Lf0/a;->e:Ld0/l;

    iput-object p2, p0, Lf0/a;->f:Ll0/b;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lj0/d;->c()Lg0/a;

    move-result-object p1

    check-cast p1, Lg0/e;

    iput-object p1, p0, Lf0/a;->k:Lg0/e;

    invoke-virtual {p7}, Lj0/b;->c()Lg0/a;

    move-result-object p1

    check-cast p1, Lg0/c;

    iput-object p1, p0, Lf0/a;->j:Lg0/c;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p9}, Lj0/b;->c()Lg0/a;

    move-result-object p1

    :goto_0
    check-cast p1, Lg0/c;

    iput-object p1, p0, Lf0/a;->m:Lg0/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lf0/a;->l:Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lf0/a;->h:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    iget-object p4, p0, Lf0/a;->l:Ljava/util/ArrayList;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lj0/b;

    invoke-virtual {p5}, Lj0/b;->c()Lg0/a;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lf0/a;->k:Lg0/e;

    invoke-virtual {p2, p3}, Ll0/b;->e(Lg0/a;)V

    iget-object p3, p0, Lf0/a;->j:Lg0/c;

    invoke-virtual {p2, p3}, Ll0/b;->e(Lg0/a;)V

    const/4 p3, 0x0

    :goto_2
    iget-object p4, p0, Lf0/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lf0/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg0/a;

    invoke-virtual {p2, p4}, Ll0/b;->e(Lg0/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lf0/a;->m:Lg0/c;

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Ll0/b;->e(Lg0/a;)V

    :cond_3
    iget-object p2, p0, Lf0/a;->k:Lg0/e;

    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    iget-object p2, p0, Lf0/a;->j:Lg0/c;

    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lf0/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg0/a;

    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lf0/a;->m:Lg0/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lf0/a;->e:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :goto_0
    const/4 v3, 0x2

    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lf0/c;

    .line 19
    .line 20
    instance-of v5, v4, Lf0/s;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    check-cast v4, Lf0/s;

    .line 25
    .line 26
    iget v5, v4, Lf0/s;->c:I

    .line 27
    .line 28
    if-ne v5, v3, :cond_0

    .line 29
    .line 30
    move-object v2, v4

    .line 31
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Lf0/s;->c(Lg0/a$a;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    iget-object v0, p0, Lf0/a;->g:Ljava/util/ArrayList;

    .line 46
    .line 47
    if-ltz p1, :cond_7

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lf0/c;

    .line 54
    .line 55
    instance-of v5, v4, Lf0/s;

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    move-object v5, v4

    .line 60
    check-cast v5, Lf0/s;

    .line 61
    .line 62
    iget v6, v5, Lf0/s;->c:I

    .line 63
    .line 64
    if-ne v6, v3, :cond_4

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    new-instance v0, Lf0/a$a;

    .line 72
    .line 73
    invoke-direct {v0, v5}, Lf0/a$a;-><init>(Lf0/s;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p0}, Lf0/s;->c(Lg0/a$a;)V

    .line 77
    .line 78
    .line 79
    move-object v1, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    instance-of v0, v4, Lf0/m;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    new-instance v1, Lf0/a$a;

    .line 88
    .line 89
    invoke-direct {v1, v2}, Lf0/a$a;-><init>(Lf0/s;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-object v0, v1, Lf0/a$a;->a:Ljava/util/ArrayList;

    .line 93
    .line 94
    check-cast v4, Lf0/m;

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_6
    :goto_2
    goto :goto_1

    .line 100
    :cond_7
    if-eqz v1, :cond_8

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_8
    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lp0/f;->d(Li0/e;ILjava/util/ArrayList;Li0/e;Lf0/k;)V

    return-void
.end method

.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 1
    iget-object p3, p0, Lf0/a;->b:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lf0/a;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lf0/a$a;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_1
    iget-object v4, v2, Lf0/a$a;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v4, v2, Lf0/a$a;->a:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lf0/m;

    .line 38
    .line 39
    invoke-interface {v4}, Lf0/m;->getPath()Landroid/graphics/Path;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p2, p0, Lf0/a;->d:Landroid/graphics/RectF;

    .line 53
    .line 54
    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, Lf0/a;->j:Lg0/c;

    .line 58
    .line 59
    invoke-virtual {p3}, Lg0/c;->l()F

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 64
    .line 65
    const/high16 v1, 0x40000000    # 2.0f

    .line 66
    .line 67
    div-float/2addr p3, v1

    .line 68
    sub-float/2addr v0, p3

    .line 69
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 70
    .line 71
    sub-float/2addr v1, p3

    .line 72
    iget v2, p2, Landroid/graphics/RectF;->right:F

    .line 73
    .line 74
    add-float/2addr v2, p3

    .line 75
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    .line 76
    .line 77
    add-float/2addr v3, p3

    .line 78
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 82
    .line 83
    .line 84
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 85
    .line 86
    const/high16 p3, 0x3f800000    # 1.0f

    .line 87
    .line 88
    sub-float/2addr p2, p3

    .line 89
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    sub-float/2addr v0, p3

    .line 92
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 93
    .line 94
    add-float/2addr v1, p3

    .line 95
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 96
    .line 97
    add-float/2addr v2, p3

    .line 98
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ld0/c;->a()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public f(Lq0/c;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    sget-object v0, Ld0/q;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lf0/a;->k:Lg0/e;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Ld0/q;->q:Ljava/lang/Float;

    .line 9
    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lf0/a;->j:Lg0/c;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p2, p1}, Lg0/a;->k(Lq0/c;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v0, Ld0/q;->E:Landroid/graphics/ColorFilter;

    .line 19
    .line 20
    if-ne p2, v0, :cond_4

    .line 21
    .line 22
    iget-object p2, p0, Lf0/a;->n:Lg0/p;

    .line 23
    .line 24
    iget-object v0, p0, Lf0/a;->f:Ll0/b;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    const/4 p2, 0x0

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    iput-object p2, p0, Lf0/a;->n:Lg0/p;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    new-instance v1, Lg0/p;

    .line 38
    .line 39
    invoke-direct {v1, p1, p2}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lf0/a;->n:Lg0/p;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lf0/a;->n:Lg0/p;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_1
    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lp0/g;->d:Lp0/g$d;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v7, 0x2

    const v8, 0x471212bb

    aput v8, v3, v7

    const v8, 0x471a973c

    const/4 v9, 0x3

    aput v8, v3, v9

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v3, v4

    aget v7, v3, v7

    cmpl-float v7, v8, v7

    if-eqz v7, :cond_1

    aget v7, v3, v6

    aget v3, v3, v9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 2
    invoke-static {}, Ld0/c;->a()V

    return-void

    :cond_2
    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v3, v7

    .line 3
    iget-object v8, v0, Lf0/a;->k:Lg0/e;

    invoke-virtual {v8}, Lg0/a;->b()Lq0/a;

    move-result-object v9

    .line 4
    invoke-virtual {v8}, Lg0/a;->d()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lg0/e;->l(Lq0/a;F)I

    move-result v8

    int-to-float v8, v8

    mul-float v3, v3, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    mul-float v3, v3, v7

    float-to-int v3, v3

    .line 5
    sget-object v7, Lp0/f;->a:Landroid/graphics/PointF;

    const/16 v7, 0xff

    .line 6
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7
    iget-object v7, v0, Lf0/a;->i:Le0/a;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lf0/a;->j:Lg0/c;

    invoke-virtual {v3}, Lg0/c;->l()F

    move-result v3

    invoke-static/range {p2 .. p2}, Lp0/g;->d(Landroid/graphics/Matrix;)F

    move-result v9

    mul-float v9, v9, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    invoke-static {}, Ld0/c;->a()V

    return-void

    .line 8
    :cond_3
    iget-object v3, v0, Lf0/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    invoke-static/range {p2 .. p2}, Lp0/g;->d(Landroid/graphics/Matrix;)F

    move-result v9

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v0, Lf0/a;->h:[F

    if-ge v11, v12, :cond_7

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg0/a;

    invoke-virtual {v12}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v13, v11

    rem-int/lit8 v14, v11, 0x2

    if-nez v14, :cond_5

    cmpg-float v12, v12, v10

    if-gez v12, :cond_6

    aput v10, v13, v11

    goto :goto_3

    :cond_5
    const v14, 0x3dcccccd    # 0.1f

    cmpg-float v12, v12, v14

    if-gez v12, :cond_6

    aput v14, v13, v11

    :cond_6
    :goto_3
    aget v12, v13, v11

    mul-float v12, v12, v9

    aput v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lf0/a;->m:Lg0/c;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, v9

    :goto_4
    new-instance v9, Landroid/graphics/DashPathEffect;

    invoke-direct {v9, v13, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_5
    invoke-static {}, Ld0/c;->a()V

    .line 9
    iget-object v3, v0, Lf0/a;->n:Lg0/p;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lg0/p;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_9
    const/4 v3, 0x0

    :goto_6
    iget-object v9, v0, Lf0/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_16

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf0/a$a;

    .line 10
    iget-object v11, v9, Lf0/a$a;->b:Lf0/s;

    .line 11
    iget-object v12, v0, Lf0/a;->b:Landroid/graphics/Path;

    iget-object v13, v9, Lf0/a$a;->a:Ljava/util/ArrayList;

    if-eqz v11, :cond_14

    .line 12
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_7
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_a

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf0/m;

    invoke-interface {v14}, Lf0/m;->getPath()Landroid/graphics/Path;

    move-result-object v14

    invoke-virtual {v12, v14, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_7

    :cond_a
    iget-object v11, v0, Lf0/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v11, v12, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    :goto_8
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v14

    add-float/2addr v12, v14

    goto :goto_8

    .line 13
    :cond_b
    iget-object v9, v9, Lf0/a$a;->b:Lf0/s;

    iget-object v14, v9, Lf0/s;->f:Lg0/c;

    .line 14
    invoke-virtual {v14}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float v14, v14, v12

    const/high16 v15, 0x43b40000    # 360.0f

    div-float/2addr v14, v15

    .line 15
    iget-object v15, v9, Lf0/s;->d:Lg0/c;

    .line 16
    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    mul-float v15, v15, v12

    div-float/2addr v15, v8

    add-float/2addr v15, v14

    .line 17
    iget-object v9, v9, Lf0/s;->e:Lg0/c;

    .line 18
    invoke-virtual {v9}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float v9, v9, v12

    div-float/2addr v9, v8

    add-float/2addr v9, v14

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/16 v16, 0x0

    :goto_9
    if-ltz v14, :cond_13

    iget-object v8, v0, Lf0/a;->c:Landroid/graphics/Path;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lf0/m;

    invoke-interface/range {v17 .. v17}, Lf0/m;->getPath()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v8, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v8, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    cmpl-float v17, v9, v12

    if-lez v17, :cond_d

    sub-float v17, v9, v12

    add-float v18, v16, v6

    cmpg-float v18, v17, v18

    if-gez v18, :cond_d

    cmpg-float v18, v16, v17

    if-gez v18, :cond_d

    cmpl-float v18, v15, v12

    if-lez v18, :cond_c

    sub-float v18, v15, v12

    div-float v18, v18, v6

    move/from16 v4, v18

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    div-float v0, v17, v6

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_c

    :cond_d
    add-float v0, v16, v6

    cmpg-float v4, v0, v15

    if-ltz v4, :cond_12

    cmpl-float v4, v16, v9

    if-lez v4, :cond_e

    goto :goto_e

    :cond_e
    cmpg-float v4, v0, v9

    if-gtz v4, :cond_f

    cmpg-float v4, v15, v16

    if-gez v4, :cond_f

    goto :goto_d

    :cond_f
    cmpg-float v4, v15, v16

    if-gez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_b

    :cond_10
    sub-float v4, v15, v16

    div-float/2addr v4, v6

    :goto_b
    cmpl-float v0, v9, v0

    if-lez v0, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_11
    sub-float v0, v9, v16

    div-float/2addr v0, v6

    :goto_c
    invoke-static {v8, v4, v0, v5}, Lp0/g;->a(Landroid/graphics/Path;FFF)V

    :goto_d
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12
    :goto_e
    add-float v16, v16, v6

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    goto :goto_9

    :cond_13
    invoke-static {}, Ld0/c;->a()V

    const/4 v4, 0x1

    goto :goto_10

    .line 19
    :cond_14
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_f
    if-ltz v0, :cond_15

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf0/m;

    invoke-interface {v6}, Lf0/m;->getPath()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v12, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_15
    invoke-static {}, Ld0/c;->a()V

    invoke-virtual {v1, v12, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Ld0/c;->a()V

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    goto/16 :goto_6

    :cond_16
    invoke-static {}, Ld0/c;->a()V

    return-void
.end method
