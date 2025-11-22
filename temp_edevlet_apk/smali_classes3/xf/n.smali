.class public final Lxf/n;
.super Lcom/airbnb/epoxy/u;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/u<",
        "Lxf/m;",
        ">;",
        "Lcom/airbnb/epoxy/y<",
        "Lxf/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/BitSet;

.field public b:F

.field public c:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public d:Lcom/airbnb/epoxy/g$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/airbnb/epoxy/u;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lxf/n;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput v0, p0, Lxf/n;->b:F

    const/4 v0, -0x1

    iput v0, p0, Lxf/n;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    return-void
.end method


# virtual methods
.method public final a(Lxf/m;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget-object v0, p0, Lxf/n;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/g;->setPaddingRes(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    invoke-virtual {p1, v1}, Lcom/airbnb/epoxy/g;->setPadding(Lcom/airbnb/epoxy/g$b;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, p0, Lxf/n;->c:I

    invoke-virtual {p1, v1}, Lcom/airbnb/epoxy/g;->setPaddingDp(I)V

    :goto_1
    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/g;->setHasFixedSize(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/g;->setInitialPrefetchItemCount(I)V

    goto :goto_3

    :cond_4
    :goto_2
    iget v0, p0, Lxf/n;->b:F

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/g;->setNumViewsToShowOnScreen(F)V

    :goto_3
    iget-object v0, p0, Lxf/n;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/g;->setModels(Ljava/util/List;)V

    return-void
.end method

.method public final addTo(Lcom/airbnb/epoxy/p;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->addWithDebugValidation(Lcom/airbnb/epoxy/p;)V

    iget-object p1, p0, Lxf/n;->a:Ljava/util/BitSet;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)Lxf/n;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lxf/m;

    invoke-virtual {p0, p1}, Lxf/n;->a(Lxf/m;)V

    return-void
.end method

.method public final bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V
    .locals 5

    check-cast p1, Lxf/m;

    .line 1
    instance-of v0, p2, Lxf/n;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lxf/n;->a(Lxf/m;)V

    goto/16 :goto_6

    :cond_0
    check-cast p2, Lxf/n;

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget-object v0, p0, Lxf/n;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Lxf/n;->c:I

    iget v2, p2, Lxf/n;->c:I

    if-eq v1, v2, :cond_7

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p2, Lxf/n;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    if-eqz v1, :cond_3

    iget-object v2, p2, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/g$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    if-eqz v1, :cond_7

    :cond_4
    :goto_0
    iget-object v1, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    invoke-virtual {p1, v1}, Lcom/airbnb/epoxy/g;->setPadding(Lcom/airbnb/epoxy/g$b;)V

    goto :goto_2

    :cond_5
    iget-object v4, p2, Lxf/n;->a:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p2, Lxf/n;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget v1, p0, Lxf/n;->c:I

    :goto_1
    invoke-virtual {p1, v1}, Lcom/airbnb/epoxy/g;->setPaddingDp(I)V

    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, p2, Lxf/n;->b:F

    iget v1, p0, Lxf/n;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_8
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p2, Lxf/n;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_3
    iget v0, p0, Lxf/n;->b:F

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/g;->setNumViewsToShowOnScreen(F)V

    :cond_b
    :goto_4
    iget-object v0, p0, Lxf/n;->e:Ljava/util/List;

    iget-object p2, p2, Lxf/n;->e:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    :goto_5
    iget-object p2, p0, Lxf/n;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/g;->setModels(Ljava/util/List;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public final buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    new-instance v0, Lxf/m;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lxf/m;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxf/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lxf/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lxf/n;->b:F

    iget v3, p0, Lxf/n;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lxf/n;->c:I

    iget v3, p1, Lxf/n;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    invoke-virtual {v1, v3}, Lcom/airbnb/epoxy/g$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    if-eqz v1, :cond_6

    :goto_0
    return v2

    :cond_6
    iget-object v1, p0, Lxf/n;->e:Ljava/util/List;

    iget-object p1, p1, Lxf/n;->e:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    :goto_1
    return v2

    :cond_8
    return v0
.end method

.method public final getDefaultLayout()I
    .locals 2
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSpanSize(III)I
    .locals 0

    return p1
.end method

.method public final getViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final handlePostBind(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lxf/m;

    .line 2
    .line 3
    const-string p1, "The model was changed during the bind call."

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/u;->validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final handlePreBind(Lcom/airbnb/epoxy/x;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lxf/m;

    .line 2
    .line 3
    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 4
    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/airbnb/epoxy/u;->validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final hashCode()I
    .locals 4

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lxf/n;->b:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lxf/n;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/airbnb/epoxy/g$b;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lxf/n;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final hide()Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->hide()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final id(J)Lcom/airbnb/epoxy/u;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final id(JJ)Lcom/airbnb/epoxy/u;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/epoxy/u;->id(JJ)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final id([Ljava/lang/Number;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id([Ljava/lang/Number;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final layout(I)Lcom/airbnb/epoxy/u;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onVisibilityChanged(FFIILjava/lang/Object;)V
    .locals 6

    .line 1
    move-object v5, p5

    .line 2
    check-cast v5, Lxf/m;

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-super/range {v0 .. v5}, Lcom/airbnb/epoxy/u;->onVisibilityChanged(FFIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onVisibilityStateChanged(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lxf/m;

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->onVisibilityStateChanged(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final reset()Lcom/airbnb/epoxy/u;
    .locals 1

    iget-object v0, p0, Lxf/n;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lxf/n;->b:F

    const/4 v0, -0x1

    iput v0, p0, Lxf/n;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    iput-object v0, p0, Lxf/n;->e:Ljava/util/List;

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->reset()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final shouldSaveViewState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final show()Lcom/airbnb/epoxy/u;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/airbnb/epoxy/u;->show()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final show(Z)Lcom/airbnb/epoxy/u;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->show(Z)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridCarouselModel_{hasFixedSize_Boolean=false, numViewsToShowOnScreen_Float="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lxf/n;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", initialPrefetchItemCount_Int=0, paddingRes_Int=0, paddingDp_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxf/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", padding_Padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", models_List="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxf/n;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unbind(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lxf/m;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->unbind(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/airbnb/epoxy/g;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
