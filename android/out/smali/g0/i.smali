.class public final Lg0/i;
.super Lg0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/f<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:[F

.field public final k:Landroid/graphics/PathMeasure;

.field public l:Lg0/h;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lq0/a<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg0/f;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lg0/i;->i:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lg0/i;->j:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lg0/i;->k:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public final g(Lq0/a;F)Ljava/lang/Object;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lg0/h;

    .line 3
    .line 4
    iget-object v1, v0, Lg0/h;->q:Landroid/graphics/Path;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lq0/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/graphics/PointF;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lg0/a;->e:Lq0/c;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lq0/a;->h:Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lq0/a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0}, Lg0/a;->e()F

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p1, v3, v2}, Lq0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/graphics/PointF;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lg0/i;->l:Lg0/h;

    .line 39
    .line 40
    iget-object v2, p0, Lg0/i;->k:Landroid/graphics/PathMeasure;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-eq p1, v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2, v1, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lg0/i;->l:Lg0/h;

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    mul-float p1, p1, p2

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    iget-object v0, p0, Lg0/i;->j:[F

    .line 58
    .line 59
    invoke-virtual {v2, p1, v0, p2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lg0/i;->i:Landroid/graphics/PointF;

    .line 63
    .line 64
    aget p2, v0, v3

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget v0, v0, v1

    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object p1
.end method
