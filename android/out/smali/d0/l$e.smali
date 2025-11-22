.class public final Ld0/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;)V
    .locals 0

    iput-object p1, p0, Ld0/l$e;->a:Ld0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld0/l$e;->a:Ld0/l;

    .line 2
    .line 3
    iget-object v0, p1, Ld0/l;->n:Ll0/c;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Ld0/l;->c:Lp0/d;

    .line 8
    .line 9
    iget-object v1, p1, Lp0/d;->k:Ld0/f;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p1, Lp0/d;->f:F

    .line 16
    .line 17
    iget v2, v1, Ld0/f;->k:F

    .line 18
    .line 19
    sub-float/2addr p1, v2

    .line 20
    iget v1, v1, Ld0/f;->l:F

    .line 21
    .line 22
    sub-float/2addr v1, v2

    .line 23
    div-float/2addr p1, v1

    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Ll0/c;->p(F)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
