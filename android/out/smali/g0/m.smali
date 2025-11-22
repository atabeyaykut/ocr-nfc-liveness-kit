.class public final Lg0/m;
.super Lg0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/a<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:Landroid/graphics/PointF;

.field public final k:Lg0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lg0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lq0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lq0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg0/c;Lg0/c;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lg0/a;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/graphics/PointF;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lg0/m;->i:Landroid/graphics/PointF;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/PointF;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lg0/m;->j:Landroid/graphics/PointF;

    .line 21
    .line 22
    iput-object p1, p0, Lg0/m;->k:Lg0/a;

    .line 23
    .line 24
    iput-object p2, p0, Lg0/m;->l:Lg0/a;

    .line 25
    .line 26
    iget p1, p0, Lg0/a;->d:F

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lg0/m;->j(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg0/m;->l(F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Lq0/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p2}, Lg0/m;->l(F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final j(F)V
    .locals 2

    iget-object v0, p0, Lg0/m;->k:Lg0/a;

    invoke-virtual {v0, p1}, Lg0/a;->j(F)V

    iget-object v1, p0, Lg0/m;->l:Lg0/a;

    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    invoke-virtual {v0}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lg0/m;->i:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lg0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/a$a;

    invoke-interface {v0}, Lg0/a$a;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(F)Landroid/graphics/PointF;
    .locals 4

    iget-object p1, p0, Lg0/m;->m:Lq0/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg0/m;->k:Lg0/a;

    invoke-virtual {p1}, Lg0/a;->b()Lq0/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lg0/a;->d()F

    iget-object p1, v1, Lq0/a;->h:Ljava/lang/Float;

    iget-object v2, p0, Lg0/m;->m:Lq0/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    :goto_0
    iget-object p1, v1, Lq0/a;->b:Ljava/lang/Object;

    iget-object v1, v1, Lq0/a;->c:Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Lq0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Lg0/m;->n:Lq0/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg0/m;->l:Lg0/a;

    invoke-virtual {v1}, Lg0/a;->b()Lq0/a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lg0/a;->d()F

    iget-object v0, v2, Lq0/a;->h:Ljava/lang/Float;

    iget-object v1, p0, Lg0/m;->n:Lq0/c;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    :goto_2
    iget-object v0, v2, Lq0/a;->b:Ljava/lang/Object;

    iget-object v2, v2, Lq0/a;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lq0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    :cond_3
    iget-object v1, p0, Lg0/m;->i:Landroid/graphics/PointF;

    iget-object v2, p0, Lg0/m;->j:Landroid/graphics/PointF;

    if-nez p1, :cond_4

    iget p1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget p1, v2, Landroid/graphics/PointF;->x:F

    if-nez v0, :cond_5

    iget v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    invoke-virtual {v2, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object v2
.end method
