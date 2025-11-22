.class public Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
.super Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/y;
.implements Lkg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;",
        "Lcom/airbnb/epoxy/y<",
        "Lhe/c;",
        ">;",
        "Lkg/c;"
    }
.end annotation


# instance fields
.field private onModelBoundListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/i0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field

.field private onModelUnboundListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/k0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field

.field private onModelVisibilityChangedListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/l0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field

.field private onModelVisibilityStateChangedListener_epoxyGeneratedModel:Lcom/airbnb/epoxy/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/m0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;-><init>()V

    return-void
.end method


# virtual methods
.method public addTo(Lcom/airbnb/epoxy/p;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->addWithDebugValidation(Lcom/airbnb/epoxy/p;)V

    return-void
.end method

.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic context(Landroid/content/Context;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->context(Landroid/content/Context;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public context(Landroid/content/Context;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v1, :cond_3

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    invoke-virtual {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    if-eqz v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    :goto_2
    return v2

    :cond_8
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

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->handlePostBind(Lhe/c;I)V

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

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->handlePreBind(Lcom/airbnb/epoxy/x;Lhe/c;I)V

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

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_2
    add-int/2addr v0, v10

    return v0
.end method

.method public bridge synthetic hide()Lcom/airbnb/epoxy/u;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->hide()Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object v0

    return-object v0
.end method

.method public hide()Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->hide()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic id(J)Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(J)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(JJ)Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(JJ)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(Ljava/lang/CharSequence;J)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

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

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id([Ljava/lang/Number;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(J)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(J)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(JJ)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(JJ)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;)Lkg/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;J)Lkg/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(Ljava/lang/CharSequence;J)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lkg/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic id([Ljava/lang/Number;)Lkg/c;
    .locals 0
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public id(J)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(JJ)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/epoxy/u;->id(JJ)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(Ljava/lang/CharSequence;J)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/epoxy/u;->id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public varargs id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
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

.method public varargs id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
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

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->layout(I)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic layout(I)Lkg/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->layout(I)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public layout(I)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->layout(I)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic listener(Lx9/a;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->listener(Lx9/a;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lx9/a;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/a<",
            "Ll9/m;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    return-object p0
.end method

.method public listener()Lx9/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/a<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    return-object v0
.end method

.method public bridge synthetic onBind(Lcom/airbnb/epoxy/i0;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onBind(Lcom/airbnb/epoxy/i0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Lcom/airbnb/epoxy/i0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/i0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onUnbind(Lcom/airbnb/epoxy/k0;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onUnbind(Lcom/airbnb/epoxy/k0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public onUnbind(Lcom/airbnb/epoxy/k0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/k0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onVisibilityChanged(Lcom/airbnb/epoxy/l0;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onVisibilityChanged(Lcom/airbnb/epoxy/l0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public onVisibilityChanged(Lcom/airbnb/epoxy/l0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/l0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onVisibilityChanged(FFIILcom/airbnb/epoxy/s;)V
    .locals 0

    check-cast p5, Lhe/c;

    invoke-virtual/range {p0 .. p5}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onVisibilityChanged(FFIILhe/c;)V

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

    invoke-virtual/range {p0 .. p5}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onVisibilityChanged(FFIILhe/c;)V

    return-void
.end method

.method public bridge synthetic onVisibilityStateChanged(Lcom/airbnb/epoxy/m0;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onVisibilityStateChanged(Lcom/airbnb/epoxy/m0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public onVisibilityStateChanged(Lcom/airbnb/epoxy/m0;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/m0<",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;",
            "Lhe/c;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    return-object p0
.end method

.method public bridge synthetic onVisibilityStateChanged(ILcom/airbnb/epoxy/s;)V
    .locals 0

    check-cast p2, Lhe/c;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onVisibilityStateChanged(ILhe/c;)V

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

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->onVisibilityStateChanged(ILhe/c;)V

    return-void
.end method

.method public bridge synthetic profileContactCardData(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->profileContactCardData(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public profileContactCardData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    return-object v0
.end method

.method public profileContactCardData(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    return-object p0
.end method

.method public bridge synthetic reset()Lcom/airbnb/epoxy/u;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->reset()Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object v0

    return-object v0
.end method

.method public reset()Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->reset()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public bridge synthetic show()Lcom/airbnb/epoxy/u;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->show()Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic show(Z)Lcom/airbnb/epoxy/u;
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->show(Z)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public show()Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/epoxy/u;->show()Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public show(Z)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
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

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Lkg/c;
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    move-result-object p1

    return-object p1
.end method

.method public spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;
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

    const-string v1, "ProfileContactModel_{profileContactCardData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->unbind(Lhe/c;)V

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

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;->unbind(Lhe/c;)V

    return-void
.end method
