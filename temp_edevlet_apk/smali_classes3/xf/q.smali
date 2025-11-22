.class public final Lxf/q;
.super Lcom/airbnb/epoxy/u;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/u<",
        "Lxf/p;",
        ">;",
        "Lcom/airbnb/epoxy/y<",
        "Lxf/p;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/epoxy/u;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lxf/q;->a:I

    iput v0, p0, Lxf/q;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lxf/q;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public final addTo(Lcom/airbnb/epoxy/p;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->addWithDebugValidation(Lcom/airbnb/epoxy/p;)V

    return-void
.end method

.method public final bind(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lxf/p;

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget v0, p0, Lxf/q;->b:I

    invoke-virtual {p1, v0}, Lxf/p;->setShowAllTitle(I)V

    iget-object v0, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lxf/p;->setAllListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lxf/q;->a:I

    invoke-virtual {p1, v0}, Lxf/p;->setTitle(I)V

    return-void
.end method

.method public final bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V
    .locals 5

    check-cast p1, Lxf/p;

    .line 2
    instance-of v0, p2, Lxf/q;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget p2, p0, Lxf/q;->b:I

    invoke-virtual {p1, p2}, Lxf/p;->setShowAllTitle(I)V

    iget-object p2, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lxf/p;->setAllListener(Landroid/view/View$OnClickListener;)V

    iget p2, p0, Lxf/q;->a:I

    invoke-virtual {p1, p2}, Lxf/p;->setTitle(I)V

    goto :goto_2

    .line 4
    :cond_0
    check-cast p2, Lxf/q;

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget v0, p0, Lxf/q;->b:I

    iget v1, p2, Lxf/q;->b:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lxf/p;->setShowAllTitle(I)V

    :cond_1
    iget-object v0, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p2, Lxf/q;->c:Landroid/view/View$OnClickListener;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eq v3, v1, :cond_4

    invoke-virtual {p1, v0}, Lxf/p;->setAllListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget v0, p0, Lxf/q;->a:I

    iget p2, p2, Lxf/q;->a:I

    if-eq v0, p2, :cond_5

    invoke-virtual {p1, v0}, Lxf/p;->setTitle(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    new-instance v0, Lxf/p;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lxf/p;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxf/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lxf/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lxf/q;->a:I

    iget v3, p1, Lxf/q;->a:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lxf/q;->b:I

    iget v3, p1, Lxf/q;->b:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p1, Lxf/q;->c:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eq v1, p1, :cond_7

    return v2

    :cond_7
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
    .locals 1

    .line 1
    check-cast p1, Lxf/p;

    .line 2
    .line 3
    const-string v0, "The model was changed during the bind call."

    .line 4
    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/airbnb/epoxy/u;->validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p1, Lxf/p;->b:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object p1, p1, Lxf/p;->c:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final handlePreBind(Lcom/airbnb/epoxy/x;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lxf/p;

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
    .locals 11

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    const/4 v10, 0x0

    const/16 v3, 0x1f

    const/16 v5, 0x1f

    const/16 v7, 0x1f

    const/16 v9, 0x1f

    move v2, v10

    move v4, v10

    move v6, v10

    move v8, v10

    invoke-static/range {v0 .. v9}, Landroidx/browser/browseractions/b;->c(IIIIIIIIII)I

    move-result v0

    iget v1, p0, Lxf/q;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lxf/q;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v10, 0x1

    :cond_0
    add-int/2addr v0, v10

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
    check-cast v5, Lxf/p;

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
    check-cast p2, Lxf/p;

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

    const/4 v0, 0x0

    iput v0, p0, Lxf/q;->a:I

    iput v0, p0, Lxf/q;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->reset()Lcom/airbnb/epoxy/u;

    return-object p0
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

    const-string v1, "HeaderGridItemModelModel_{title_Int="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lxf/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showAllTitle_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxf/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxf/q;->c:Landroid/view/View$OnClickListener;

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
    .locals 1

    .line 1
    check-cast p1, Lxf/p;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->unbind(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lxf/p;->setAllListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
