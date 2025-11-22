.class public Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
.super Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/y;
.implements Log/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;",
        "Lcom/airbnb/epoxy/y<",
        "Lhe/c;",
        ">;",
        "Log/c;"
    }
.end annotation


# instance fields
.field private onModelBoundListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/i0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field

.field private onModelUnboundListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/k0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field

.field private onModelVisibilityChangedListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/l0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field

.field private onModelVisibilityStateChangedListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/m0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;-><init>()V

    return-void
.end method


# virtual methods
.method public addTo(Lcom/airbnb/epoxy/p;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->addWithDebugValidation(Lcom/airbnb/epoxy/p;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-eqz v1, :cond_3

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->listener:Lx9/l;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->listener:Lx9/l;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public handlePostBind(Lhe/c;I)V
    .locals 0

    const-string p1, "The model was changed during the bind call."

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/u;->validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic handlePostBind(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lhe/c;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->handlePostBind(Lhe/c;I)V

    return-void
.end method

.method public handlePreBind(Lcom/airbnb/epoxy/x;Lhe/c;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    invoke-virtual {p0, p1, p3}, Lcom/airbnb/epoxy/u;->validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic handlePreBind(Lcom/airbnb/epoxy/x;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lhe/c;

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->handlePreBind(Lcom/airbnb/epoxy/x;Lhe/c;I)V

    return-void
.end method

.method public hashCode()I
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

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->listener:Lx9/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    add-int/2addr v0, v10

    return v0
.end method

.method public bridge synthetic hide()Lcom/airbnb/epoxy/u;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->hide()Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object v0

    return-object v0
.end method

.method public hide()Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->hide()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic id(J)Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(J)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(JJ)Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(JJ)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(Ljava/lang/CharSequence;J)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id([Ljava/lang/Number;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(J)Log/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(J)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(JJ)Log/c;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(JJ)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;)Log/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;J)Log/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(Ljava/lang/CharSequence;J)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Log/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id([Ljava/lang/Number;)Log/c;
    .locals 0
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public id(J)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(JJ)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/epoxy/u;->id(JJ)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(Ljava/lang/CharSequence;J)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public varargs id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public varargs id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id([Ljava/lang/Number;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic layout(I)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->layout(I)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic layout(I)Log/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->layout(I)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public layout(I)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->layout(I)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic listener(Lx9/l;)Log/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->listener:Lx9/l;

    return-object p0
.end method

.method public listener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->listener:Lx9/l;

    return-object v0
.end method

.method public bridge synthetic onBind(Lcom/airbnb/epoxy/i0;)Log/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onBind(Lcom/airbnb/epoxy/i0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Lcom/airbnb/epoxy/i0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/i0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onUnbind(Lcom/airbnb/epoxy/k0;)Log/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onUnbind(Lcom/airbnb/epoxy/k0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public onUnbind(Lcom/airbnb/epoxy/k0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/k0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onVisibilityChanged(Lcom/airbnb/epoxy/l0;)Log/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onVisibilityChanged(Lcom/airbnb/epoxy/l0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public onVisibilityChanged(Lcom/airbnb/epoxy/l0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/l0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onVisibilityChanged(FFIILcom/airbnb/epoxy/s;)V
    .locals 0

    check-cast p5, Lhe/c;

    invoke-virtual/range {p0 .. p5}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onVisibilityChanged(FFIILhe/c;)V

    return-void
.end method

.method public onVisibilityChanged(FFIILhe/c;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/airbnb/epoxy/v;->onVisibilityChanged(FFIILcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public bridge synthetic onVisibilityChanged(FFIILjava/lang/Object;)V
    .locals 0

    check-cast p5, Lhe/c;

    invoke-virtual/range {p0 .. p5}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onVisibilityChanged(FFIILhe/c;)V

    return-void
.end method

.method public bridge synthetic onVisibilityStateChanged(Lcom/airbnb/epoxy/m0;)Log/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onVisibilityStateChanged(Lcom/airbnb/epoxy/m0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public onVisibilityStateChanged(Lcom/airbnb/epoxy/m0;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/m0<",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onVisibilityStateChanged(ILcom/airbnb/epoxy/s;)V
    .locals 0

    check-cast p2, Lhe/c;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onVisibilityStateChanged(ILhe/c;)V

    return-void
.end method

.method public onVisibilityStateChanged(ILhe/c;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/v;->onVisibilityStateChanged(ILcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public bridge synthetic onVisibilityStateChanged(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lhe/c;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->onVisibilityStateChanged(ILhe/c;)V

    return-void
.end method

.method public bridge synthetic reset()Lcom/airbnb/epoxy/u;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->reset()Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object v0

    return-object v0
.end method

.method public reset()Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->listener:Lx9/l;

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->reset()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Log/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public service()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-object v0
.end method

.method public service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-object p0
.end method

.method public bridge synthetic show()Lcom/airbnb/epoxy/u;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->show()Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic show(Z)Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->show(Z)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public show()Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->show()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public show(Z)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->show(Z)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Log/c;
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    move-result-object p1

    return-object p1
.end method

.method public spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchServiceListItemModel_{service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

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

.method public bridge synthetic unbind(Lcom/airbnb/epoxy/s;)V
    .locals 0

    check-cast p1, Lhe/c;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->unbind(Lhe/c;)V

    return-void
.end method

.method public unbind(Lhe/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/v;->unbind(Lcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lhe/c;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;->unbind(Lhe/c;)V

    return-void
.end method
