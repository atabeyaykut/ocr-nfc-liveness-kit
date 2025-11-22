.class public final Lxf/y;
.super Lcom/airbnb/epoxy/u;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/u<",
        "Lxf/x;",
        ">;",
        "Lcom/airbnb/epoxy/y<",
        "Lxf/x;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/epoxy/u;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lxf/y;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lxf/y;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-object p1, p0, Lxf/y;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final addTo(Lcom/airbnb/epoxy/p;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->addWithDebugValidation(Lcom/airbnb/epoxy/p;)V

    return-void
.end method

.method public final b()Lxf/y;
    .locals 1

    .line 1
    const-string v0, "nameSurname"

    .line 2
    .line 3
    invoke-super {p0, v0}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final bind(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lxf/x;

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget-object v0, p0, Lxf/y;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lxf/x;->setContent(Ljava/lang/String;)V

    iget v0, p0, Lxf/y;->a:I

    invoke-virtual {p1, v0}, Lxf/x;->setTitle(I)V

    return-void
.end method

.method public final bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V
    .locals 2

    check-cast p1, Lxf/x;

    .line 2
    instance-of v0, p2, Lxf/y;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget-object p2, p0, Lxf/y;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lxf/x;->setContent(Ljava/lang/String;)V

    iget p2, p0, Lxf/y;->a:I

    invoke-virtual {p1, p2}, Lxf/x;->setTitle(I)V

    goto :goto_1

    .line 4
    :cond_0
    check-cast p2, Lxf/y;

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    iget-object v0, p0, Lxf/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lxf/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lxf/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lxf/y;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lxf/x;->setContent(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lxf/y;->a:I

    iget p2, p2, Lxf/y;->a:I

    if-eq v0, p2, :cond_3

    invoke-virtual {p1, v0}, Lxf/x;->setTitle(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    new-instance v0, Lxf/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lxf/x;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final c()Lxf/y;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    const v0, 0x7f130289

    iput v0, p0, Lxf/y;->a:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxf/y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lxf/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lxf/y;->a:I

    iget v3, p1, Lxf/y;->a:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lxf/y;->b:Ljava/lang/String;

    iget-object p1, p1, Lxf/y;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_0
    return v2

    :cond_5
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
    check-cast p1, Lxf/x;

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
    check-cast p2, Lxf/x;

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

    iget v1, p0, Lxf/y;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lxf/y;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

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
    check-cast v5, Lxf/x;

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
    check-cast p2, Lxf/x;

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

    iput v0, p0, Lxf/y;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/y;->b:Ljava/lang/String;

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

    const-string v1, "NameSurnameMergeModelModel_{title_Int="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lxf/y;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxf/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    check-cast p1, Lxf/x;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->unbind(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
