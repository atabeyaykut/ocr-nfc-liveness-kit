.class public abstract Lcom/airbnb/epoxy/TypedEpoxyController;
.super Lcom/airbnb/epoxy/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/epoxy/p;"
    }
.end annotation


# instance fields
.field private allowModelBuildRequests:Z

.field private currentData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/epoxy/p;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final buildModels()V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->currentData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/TypedEpoxyController;->buildModels(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call `buildModels` directly. Call `setData` instead to trigger a model refresh with new data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract buildModels(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final getCurrentData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->currentData:Ljava/lang/Object;

    return-object v0
.end method

.method public moveModel(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->allowModelBuildRequests:Z

    invoke-super {p0, p1, p2}, Lcom/airbnb/epoxy/p;->moveModel(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->allowModelBuildRequests:Z

    return-void
.end method

.method public requestDelayedModelBuild(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->allowModelBuildRequests:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/p;->requestDelayedModelBuild(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestModelBuild()V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->allowModelBuildRequests:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/airbnb/epoxy/p;->requestModelBuild()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->currentData:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->allowModelBuildRequests:Z

    invoke-virtual {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;->requestModelBuild()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/epoxy/TypedEpoxyController;->allowModelBuildRequests:Z

    return-void
.end method
