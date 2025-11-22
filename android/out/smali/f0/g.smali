.class public final Lf0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/e;
.implements Lg0/a$a;
.implements Lf0/k;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Le0/a;

.field public final c:Ll0/b;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/ArrayList;

.field public final g:Lg0/b;

.field public final h:Lg0/e;

.field public i:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/l;)V
    .locals 3

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
    iput-object v0, p0, Lf0/g;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v1, Le0/a;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, Le0/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lf0/g;->b:Le0/a;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lf0/g;->f:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object p2, p0, Lf0/g;->c:Ll0/b;

    .line 27
    .line 28
    iget-object v1, p3, Lk0/l;->c:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lf0/g;->d:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v1, p3, Lk0/l;->f:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lf0/g;->e:Z

    .line 35
    .line 36
    iput-object p1, p0, Lf0/g;->j:Ld0/l;

    .line 37
    .line 38
    iget-object p1, p3, Lk0/l;->d:Lj0/a;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object v1, p3, Lk0/l;->e:Lj0/d;

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p3, p3, Lk0/l;->b:Landroid/graphics/Path$FillType;

    .line 48
    .line 49
    invoke-virtual {v0, p3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lj0/a;->c()Lg0/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    move-object p3, p1

    .line 57
    check-cast p3, Lg0/b;

    .line 58
    .line 59
    iput-object p3, p0, Lf0/g;->g:Lg0/b;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lj0/d;->c()Lg0/a;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    move-object p3, p1

    .line 72
    check-cast p3, Lg0/e;

    .line 73
    .line 74
    iput-object p3, p0, Lf0/g;->h:Lg0/e;

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lf0/g;->g:Lg0/b;

    .line 85
    .line 86
    iput-object p1, p0, Lf0/g;->h:Lg0/e;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lf0/g;->j:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/c;

    instance-of v1, v0, Lf0/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf0/g;->f:Ljava/util/ArrayList;

    check-cast v0, Lf0/m;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lp0/f;->d(Li0/e;ILjava/util/ArrayList;Li0/e;Lf0/k;)V

    return-void
.end method

.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, Lf0/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lf0/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf0/m;

    invoke-interface {v2}, Lf0/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ld0/q;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lf0/g;->g:Lg0/b;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Ld0/q;->d:Ljava/lang/Integer;

    .line 9
    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lf0/g;->h:Lg0/e;

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
    iget-object p2, p0, Lf0/g;->i:Lg0/p;

    .line 23
    .line 24
    iget-object v0, p0, Lf0/g;->c:Ll0/b;

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
    iput-object p2, p0, Lf0/g;->i:Lg0/p;

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
    iput-object v1, p0, Lf0/g;->i:Lg0/p;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lf0/g;->i:Lg0/p;

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

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf0/g;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lf0/g;->g:Lg0/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lg0/a;->b()Lq0/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lg0/a;->d()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lg0/b;->l(Lq0/a;F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lf0/g;->b:Le0/a;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    .line 24
    .line 25
    int-to-float p3, p3

    .line 26
    const/high16 v0, 0x437f0000    # 255.0f

    .line 27
    .line 28
    div-float/2addr p3, v0

    .line 29
    iget-object v2, p0, Lf0/g;->h:Lg0/e;

    .line 30
    .line 31
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    mul-float p3, p3, v2

    .line 43
    .line 44
    const/high16 v2, 0x42c80000    # 100.0f

    .line 45
    .line 46
    div-float/2addr p3, v2

    .line 47
    mul-float p3, p3, v0

    .line 48
    .line 49
    float-to-int p3, p3

    .line 50
    sget-object v0, Lp0/f;->a:Landroid/graphics/PointF;

    .line 51
    .line 52
    const/16 v0, 0xff

    .line 53
    .line 54
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lf0/g;->i:Lg0/p;

    .line 67
    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p3}, Lg0/p;->f()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 75
    .line 76
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object p3, p0, Lf0/g;->a:Landroid/graphics/Path;

    .line 80
    .line 81
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object v2, p0, Lf0/g;->f:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ge v0, v3, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lf0/m;

    .line 97
    .line 98
    invoke-interface {v2}, Lf0/m;->getPath()Landroid/graphics/Path;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ld0/c;->a()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/g;->d:Ljava/lang/String;

    return-object v0
.end method
