.class public final Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/snackbar/ContentViewCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u00012\u00020\u0002R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/google/android/material/snackbar/ContentViewCallback;",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "getTvMsg",
        "()Landroid/widget/TextView;",
        "setTvMsg",
        "(Landroid/widget/TextView;)V",
        "tvMsg",
        "b",
        "getTvAction",
        "setTvAction",
        "tvAction",
        "Landroid/widget/ImageView;",
        "c",
        "Landroid/widget/ImageView;",
        "getImLeft",
        "()Landroid/widget/ImageView;",
        "setImLeft",
        "(Landroid/widget/ImageView;)V",
        "imLeft",
        "d",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getLayRoot",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "setLayRoot",
        "(Landroidx/constraintlayout/widget/ConstraintLayout;)V",
        "layRoot",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d0036

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const p1, 0x7f0a0419

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.tv_message)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->a:Landroid/widget/TextView;

    const p1, 0x7f0a0417

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.tv_action)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->b:Landroid/widget/TextView;

    const p1, 0x7f0a01b8

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.im_action_left)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->c:Landroid/widget/ImageView;

    const p1, 0x7f0a03a1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.snack_constraint)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final animateContentIn(II)V
    .locals 4

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->c:Landroid/widget/ImageView;

    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateContentOut(II)V
    .locals 0

    return-void
.end method

.method public final getImLeft()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLayRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final getTvAction()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvMsg()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setImLeft(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public final setLayRoot(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public final setTvAction(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->b:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvMsg(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->a:Landroid/widget/TextView;

    return-void
.end method
