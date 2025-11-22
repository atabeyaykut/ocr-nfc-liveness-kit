.class public abstract Lcom/airbnb/epoxy/v;
.super Lcom/airbnb/epoxy/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/epoxy/s;",
        ">",
        "Lcom/airbnb/epoxy/u<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/epoxy/u;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/epoxy/u;-><init>(J)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/airbnb/epoxy/s;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Lcom/airbnb/epoxy/s;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V

    return-void
.end method

.method public bind(Lcom/airbnb/epoxy/s;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/v;->bind(Lcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/v;->bind(Lcom/airbnb/epoxy/s;Lcom/airbnb/epoxy/u;)V

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/v;->bind(Lcom/airbnb/epoxy/s;Ljava/util/List;)V

    return-void
.end method

.method public abstract createNewHolder(Landroid/view/ViewParent;)Lcom/airbnb/epoxy/s;
    .param p1    # Landroid/view/ViewParent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewParent;",
            ")TT;"
        }
    .end annotation
.end method

.method public onFailedToRecycleView(Lcom/airbnb/epoxy/s;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->onFailedToRecycleView(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onFailedToRecycleView(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/v;->onFailedToRecycleView(Lcom/airbnb/epoxy/s;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Lcom/airbnb/epoxy/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->onViewAttachedToWindow(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/v;->onViewAttachedToWindow(Lcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/airbnb/epoxy/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->onViewDetachedFromWindow(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/v;->onViewDetachedFromWindow(Lcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public onVisibilityChanged(FFIILcom/airbnb/epoxy/s;)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/epoxy/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFIITT;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/airbnb/epoxy/u;->onVisibilityChanged(FFIILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onVisibilityChanged(FFIILjava/lang/Object;)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p5, Lcom/airbnb/epoxy/s;

    invoke-virtual/range {p0 .. p5}, Lcom/airbnb/epoxy/v;->onVisibilityChanged(FFIILcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public onVisibilityStateChanged(ILcom/airbnb/epoxy/s;)V
    .locals 0
    .param p2    # Lcom/airbnb/epoxy/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/u;->onVisibilityStateChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onVisibilityStateChanged(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/v;->onVisibilityStateChanged(ILcom/airbnb/epoxy/s;)V

    return-void
.end method

.method public unbind(Lcom/airbnb/epoxy/s;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/u;->unbind(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/airbnb/epoxy/s;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/v;->unbind(Lcom/airbnb/epoxy/s;)V

    return-void
.end method
