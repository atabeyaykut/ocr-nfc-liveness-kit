.class public final Lg0/j;
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/a<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg0/f;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lg0/j;->i:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final g(Lq0/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p2, p2}, Lg0/j;->l(Lq0/a;FFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic h(Lq0/a;FFF)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lg0/j;->l(Lq0/a;FFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lq0/a;FFF)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a<",
            "Landroid/graphics/PointF;",
            ">;FFF)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lq0/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lq0/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p2, Landroid/graphics/PointF;

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    iget-object v1, p0, Lg0/a;->e:Lq0/c;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lq0/a;->h:Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lg0/a;->e()F

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2, v0}, Lq0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/graphics/PointF;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lg0/j;->i:Landroid/graphics/PointF;

    .line 35
    .line 36
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 37
    .line 38
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 39
    .line 40
    invoke-static {v2, v1, p3, v1}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 45
    .line 46
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 47
    .line 48
    sub-float/2addr v0, p2

    .line 49
    mul-float v0, v0, p4

    .line 50
    .line 51
    add-float/2addr v0, p2

    .line 52
    invoke-virtual {p1, p3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "Missing values for keyframe."

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method
