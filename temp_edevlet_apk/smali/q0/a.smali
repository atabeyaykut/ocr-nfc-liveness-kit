.class public Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ld0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:F

.field public h:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Landroid/graphics/PointF;

.field public p:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/f;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lq0/a;->i:F

    iput v0, p0, Lq0/a;->j:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lq0/a;->k:I

    iput v0, p0, Lq0/a;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lq0/a;->m:F

    iput v0, p0, Lq0/a;->n:F

    const/4 v0, 0x0

    iput-object v0, p0, Lq0/a;->o:Landroid/graphics/PointF;

    iput-object v0, p0, Lq0/a;->p:Landroid/graphics/PointF;

    iput-object p1, p0, Lq0/a;->a:Ld0/f;

    iput-object p2, p0, Lq0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lq0/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lq0/a;->d:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lq0/a;->e:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lq0/a;->f:Landroid/view/animation/Interpolator;

    iput p5, p0, Lq0/a;->g:F

    iput-object p6, p0, Lq0/a;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lq0/a;->i:F

    iput v0, p0, Lq0/a;->j:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lq0/a;->k:I

    iput v0, p0, Lq0/a;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lq0/a;->m:F

    iput v0, p0, Lq0/a;->n:F

    const/4 v0, 0x0

    iput-object v0, p0, Lq0/a;->o:Landroid/graphics/PointF;

    iput-object v0, p0, Lq0/a;->p:Landroid/graphics/PointF;

    iput-object p1, p0, Lq0/a;->a:Ld0/f;

    iput-object p2, p0, Lq0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lq0/a;->c:Ljava/lang/Object;

    iput-object v0, p0, Lq0/a;->d:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lq0/a;->e:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lq0/a;->f:Landroid/view/animation/Interpolator;

    iput p6, p0, Lq0/a;->g:F

    iput-object v0, p0, Lq0/a;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/f;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lq0/a;->i:F

    iput v0, p0, Lq0/a;->j:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lq0/a;->k:I

    iput v0, p0, Lq0/a;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lq0/a;->m:F

    iput v0, p0, Lq0/a;->n:F

    const/4 v0, 0x0

    iput-object v0, p0, Lq0/a;->o:Landroid/graphics/PointF;

    iput-object v0, p0, Lq0/a;->p:Landroid/graphics/PointF;

    iput-object p1, p0, Lq0/a;->a:Ld0/f;

    iput-object p2, p0, Lq0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lq0/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lq0/a;->d:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lq0/a;->e:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lq0/a;->f:Landroid/view/animation/Interpolator;

    iput p7, p0, Lq0/a;->g:F

    iput-object p8, p0, Lq0/a;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lq0/a;->i:F

    iput v0, p0, Lq0/a;->j:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lq0/a;->k:I

    iput v0, p0, Lq0/a;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lq0/a;->m:F

    iput v0, p0, Lq0/a;->n:F

    const/4 v1, 0x0

    iput-object v1, p0, Lq0/a;->o:Landroid/graphics/PointF;

    iput-object v1, p0, Lq0/a;->p:Landroid/graphics/PointF;

    iput-object v1, p0, Lq0/a;->a:Ld0/f;

    iput-object p1, p0, Lq0/a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lq0/a;->c:Ljava/lang/Object;

    iput-object v1, p0, Lq0/a;->d:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lq0/a;->e:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lq0/a;->f:Landroid/view/animation/Interpolator;

    iput v0, p0, Lq0/a;->g:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lq0/a;->h:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget-object v1, p0, Lq0/a;->a:Ld0/f;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v2, p0, Lq0/a;->n:F

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    cmpl-float v2, v2, v3

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lq0/a;->h:Ljava/lang/Float;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iput v0, p0, Lq0/a;->n:F

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lq0/a;->b()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Lq0/a;->h:Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v3, p0, Lq0/a;->g:F

    .line 33
    .line 34
    sub-float/2addr v2, v3

    .line 35
    iget v3, v1, Ld0/f;->l:F

    .line 36
    .line 37
    iget v1, v1, Ld0/f;->k:F

    .line 38
    .line 39
    sub-float/2addr v3, v1

    .line 40
    div-float/2addr v2, v3

    .line 41
    add-float/2addr v2, v0

    .line 42
    iput v2, p0, Lq0/a;->n:F

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget v0, p0, Lq0/a;->n:F

    .line 45
    .line 46
    return v0
.end method

.method public final b()F
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/a;->a:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lq0/a;->m:F

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    cmpl-float v1, v1, v2

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget v1, v0, Ld0/f;->k:F

    .line 15
    .line 16
    iget v2, p0, Lq0/a;->g:F

    .line 17
    .line 18
    sub-float/2addr v2, v1

    .line 19
    iget v0, v0, Ld0/f;->l:F

    .line 20
    .line 21
    sub-float/2addr v0, v1

    .line 22
    div-float/2addr v2, v0

    .line 23
    iput v2, p0, Lq0/a;->m:F

    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lq0/a;->m:F

    .line 26
    .line 27
    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lq0/a;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq0/a;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq0/a;->f:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyframe{startValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lq0/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq0/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq0/a;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq0/a;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq0/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
