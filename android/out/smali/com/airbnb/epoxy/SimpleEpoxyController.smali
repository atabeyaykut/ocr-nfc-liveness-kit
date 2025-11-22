.class public Lcom/airbnb/epoxy/SimpleEpoxyController;
.super Lcom/airbnb/epoxy/p;
.source "SourceFile"


# instance fields
.field private currentModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field

.field private insideSetModels:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildModels()V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/epoxy/SimpleEpoxyController;->currentModels:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/p;->add(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/c0;

    const-string v1, "You cannot call `buildModels` directly. Call `setModels` instead."

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requestModelBuild()V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/epoxy/SimpleEpoxyController;->insideSetModels:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/airbnb/epoxy/p;->requestModelBuild()V

    return-void

    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/c0;

    const-string v1, "You cannot call `requestModelBuild` directly. Call `setModels` instead."

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/epoxy/SimpleEpoxyController;->currentModels:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/epoxy/SimpleEpoxyController;->insideSetModels:Z

    invoke-virtual {p0}, Lcom/airbnb/epoxy/SimpleEpoxyController;->requestModelBuild()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/epoxy/SimpleEpoxyController;->insideSetModels:Z

    return-void
.end method
