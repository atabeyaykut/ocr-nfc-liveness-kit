.class public final Lg0/k;
.super Lg0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/f<",
        "Lq0/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lq0/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/a<",
            "Lq0/d;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg0/f;-><init>(Ljava/util/List;)V

    new-instance p1, Lq0/d;

    invoke-direct {p1}, Lq0/d;-><init>()V

    iput-object p1, p0, Lg0/k;->i:Lq0/d;

    return-void
.end method


# virtual methods
.method public final g(Lq0/a;F)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p1, Lq0/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Lq0/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lq0/d;

    .line 10
    .line 11
    check-cast v1, Lq0/d;

    .line 12
    .line 13
    iget-object v2, p0, Lg0/a;->e:Lq0/c;

    .line 14
    .line 15
    if-eqz v2, :cond_0

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
    invoke-virtual {v2, v0, v1}, Lq0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lq0/d;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget p1, v0, Lq0/d;->a:F

    .line 35
    .line 36
    iget v2, v1, Lq0/d;->a:F

    .line 37
    .line 38
    sget-object v3, Lp0/f;->a:Landroid/graphics/PointF;

    .line 39
    .line 40
    invoke-static {v2, p1, p2, p1}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v0, v0, Lq0/d;->b:F

    .line 45
    .line 46
    iget v1, v1, Lq0/d;->b:F

    .line 47
    .line 48
    invoke-static {v1, v0, p2, v0}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iget-object v0, p0, Lg0/k;->i:Lq0/d;

    .line 53
    .line 54
    iput p1, v0, Lq0/d;->a:F

    .line 55
    .line 56
    iput p2, v0, Lq0/d;->b:F

    .line 57
    .line 58
    move-object p1, v0

    .line 59
    :goto_0
    return-object p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p2, "Missing values for keyframe."

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method
