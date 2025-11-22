.class public final Lf0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/e;
.implements Lf0/m;
.implements Lf0/j;
.implements Lg0/a$a;
.implements Lf0/k;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Ld0/l;

.field public final d:Ll0/b;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lg0/c;

.field public final h:Lg0/c;

.field public final i:Lg0/o;

.field public j:Lf0/d;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf0/p;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf0/p;->b:Landroid/graphics/Path;

    .line 17
    .line 18
    iput-object p1, p0, Lf0/p;->c:Ld0/l;

    .line 19
    .line 20
    iput-object p2, p0, Lf0/p;->d:Ll0/b;

    .line 21
    .line 22
    iget-object p1, p3, Lk0/j;->a:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lf0/p;->e:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean p1, p3, Lk0/j;->e:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lf0/p;->f:Z

    .line 29
    .line 30
    iget-object p1, p3, Lk0/j;->b:Lj0/b;

    .line 31
    .line 32
    invoke-virtual {p1}, Lj0/b;->c()Lg0/a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Lg0/c;

    .line 38
    .line 39
    iput-object v0, p0, Lf0/p;->g:Lg0/c;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p3, Lk0/j;->c:Lj0/b;

    .line 48
    .line 49
    invoke-virtual {p1}, Lj0/b;->c()Lg0/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Lg0/c;

    .line 55
    .line 56
    iput-object v0, p0, Lf0/p;->h:Lg0/c;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p3, Lk0/j;->d:Lj0/l;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p3, Lg0/o;

    .line 70
    .line 71
    invoke-direct {p3, p1}, Lg0/o;-><init>(Lj0/l;)V

    .line 72
    .line 73
    .line 74
    iput-object p3, p0, Lf0/p;->i:Lg0/o;

    .line 75
    .line 76
    invoke-virtual {p3, p2}, Lg0/o;->a(Ll0/b;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p0}, Lg0/o;->b(Lg0/a$a;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lf0/p;->c:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lf0/p;->j:Lf0/d;

    invoke-virtual {v0, p1, p2}, Lf0/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lp0/f;->d(Li0/e;ILjava/util/ArrayList;Li0/e;Lf0/k;)V

    return-void
.end method

.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, Lf0/p;->j:Lf0/d;

    invoke-virtual {v0, p1, p2, p3}, Lf0/d;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final e(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lf0/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lf0/p;->j:Lf0/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lf0/d;

    iget-object v2, p0, Lf0/p;->c:Ld0/l;

    iget-object v3, p0, Lf0/p;->d:Ll0/b;

    const-string v4, "Repeater"

    iget-boolean v5, p0, Lf0/p;->f:Z

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lf0/d;-><init>(Ld0/l;Ll0/b;Ljava/lang/String;ZLjava/util/ArrayList;Lj0/l;)V

    iput-object p1, p0, Lf0/p;->j:Lf0/d;

    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lf0/p;->i:Lg0/o;

    invoke-virtual {v0, p1, p2}, Lg0/o;->c(Lq0/c;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ld0/q;->s:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lf0/p;->g:Lg0/c;

    goto :goto_0

    :cond_1
    sget-object v0, Ld0/q;->t:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lf0/p;->h:Lg0/c;

    :goto_0
    invoke-virtual {p2, p1}, Lg0/a;->k(Lq0/c;)V

    :cond_2
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf0/p;->g:Lg0/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lf0/p;->h:Lg0/c;

    .line 14
    .line 15
    invoke-virtual {v1}, Lg0/a;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lf0/p;->i:Lg0/o;

    .line 26
    .line 27
    iget-object v3, v2, Lg0/o;->m:Lg0/a;

    .line 28
    .line 29
    invoke-virtual {v3}, Lg0/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Float;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/high16 v4, 0x42c80000    # 100.0f

    .line 40
    .line 41
    div-float/2addr v3, v4

    .line 42
    iget-object v5, v2, Lg0/o;->n:Lg0/a;

    .line 43
    .line 44
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/Float;

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    div-float/2addr v5, v4

    .line 55
    float-to-int v4, v0

    .line 56
    :goto_0
    add-int/lit8 v4, v4, -0x1

    .line 57
    .line 58
    if-ltz v4, :cond_0

    .line 59
    .line 60
    iget-object v6, p0, Lf0/p;->a:Landroid/graphics/Matrix;

    .line 61
    .line 62
    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 63
    .line 64
    .line 65
    int-to-float v7, v4

    .line 66
    add-float v8, v7, v1

    .line 67
    .line 68
    invoke-virtual {v2, v8}, Lg0/o;->e(F)Landroid/graphics/Matrix;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 73
    .line 74
    .line 75
    int-to-float v8, p3

    .line 76
    div-float/2addr v7, v0

    .line 77
    sget-object v9, Lp0/f;->a:Landroid/graphics/PointF;

    .line 78
    .line 79
    sub-float v9, v5, v3

    .line 80
    .line 81
    mul-float v9, v9, v7

    .line 82
    .line 83
    add-float/2addr v9, v3

    .line 84
    mul-float v9, v9, v8

    .line 85
    .line 86
    iget-object v7, p0, Lf0/p;->j:Lf0/d;

    .line 87
    .line 88
    float-to-int v8, v9

    .line 89
    invoke-virtual {v7, p1, v6, v8}, Lf0/d;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lf0/p;->j:Lf0/d;

    invoke-virtual {v0}, Lf0/d;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lf0/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lf0/p;->g:Lg0/c;

    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lf0/p;->h:Lg0/c;

    invoke-virtual {v3}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v2, v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget-object v4, p0, Lf0/p;->a:Landroid/graphics/Matrix;

    int-to-float v5, v2

    add-float/2addr v5, v3

    iget-object v6, p0, Lf0/p;->i:Lg0/o;

    invoke-virtual {v6, v5}, Lg0/o;->e(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
