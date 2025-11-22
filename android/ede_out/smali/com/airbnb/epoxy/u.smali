.class public abstract Lcom/airbnb/epoxy/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/u$c;,
        Lcom/airbnb/epoxy/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static idCounter:J = -0x1L


# instance fields
.field addedToAdapter:Z

.field controllerToStageTo:Lcom/airbnb/epoxy/p;

.field private currentlyInInterceptors:Z

.field private firstControllerAddedTo:Lcom/airbnb/epoxy/p;

.field private hasDefaultId:Z

.field private hashCodeWhenAdded:I

.field private id:J

.field private layout:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private shown:Z

.field private spanSizeOverride:Lcom/airbnb/epoxy/u$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-wide v0, Lcom/airbnb/epoxy/u;->idCounter:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    sput-wide v2, Lcom/airbnb/epoxy/u;->idCounter:J

    invoke-direct {p0, v0, v1}, Lcom/airbnb/epoxy/u;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/epoxy/u;->hasDefaultId:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/epoxy/u;->shown:Z

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    return-void
.end method

.method public static synthetic access$002(Lcom/airbnb/epoxy/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/epoxy/u;->currentlyInInterceptors:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/airbnb/epoxy/u;I)I
    .locals 0

    iput p1, p0, Lcom/airbnb/epoxy/u;->hashCodeWhenAdded:I

    return p1
.end method

.method private static getPosition(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/u;)I
    .locals 7
    .param p0    # Lcom/airbnb/epoxy/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/p;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/p;->getFirstIndexOfModelInBuildingList(Lcom/airbnb/epoxy/u;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->getAdapter()Lcom/airbnb/epoxy/q;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v0, p0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/airbnb/epoxy/u;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/airbnb/epoxy/u;->id()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->id()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    cmp-long v6, v2, v4

    .line 46
    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, -0x1

    .line 54
    :goto_1
    return v1
.end method


# virtual methods
.method public addIf(Lcom/airbnb/epoxy/u$b;Lcom/airbnb/epoxy/p;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/airbnb/epoxy/u$b;->a()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/u;->addIf(ZLcom/airbnb/epoxy/p;)V

    return-void
.end method

.method public addIf(ZLcom/airbnb/epoxy/p;)V
    .locals 0
    .param p2    # Lcom/airbnb/epoxy/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/epoxy/u;->controllerToStageTo:Lcom/airbnb/epoxy/p;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/p;->clearModelFromStaging(Lcom/airbnb/epoxy/u;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/epoxy/u;->controllerToStageTo:Lcom/airbnb/epoxy/p;

    :cond_1
    :goto_0
    return-void
.end method

.method public addTo(Lcom/airbnb/epoxy/p;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/p;->addInternal(Lcom/airbnb/epoxy/u;)V

    return-void
.end method

.method public final addWithDebugValidation(Lcom/airbnb/epoxy/p;)V
    .locals 3
    .param p1    # Lcom/airbnb/epoxy/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/p;->isModelAddedMultipleTimes(Lcom/airbnb/epoxy/u;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/epoxy/u;->firstControllerAddedTo:Lcom/airbnb/epoxy/p;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/airbnb/epoxy/u;->firstControllerAddedTo:Lcom/airbnb/epoxy/p;

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/airbnb/epoxy/u;->hashCodeWhenAdded:I

    new-instance v0, Lcom/airbnb/epoxy/u$a;

    invoke-direct {v0, p0}, Lcom/airbnb/epoxy/u$a;-><init>(Lcom/airbnb/epoxy/u;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/p;->addAfterInterceptorCallback(Lcom/airbnb/epoxy/p$f;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/epoxy/c0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This model was already added to the controller at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/p;->getFirstIndexOfModelInBuildingList(Lcom/airbnb/epoxy/u;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Controller cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
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

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
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

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    return-void
.end method

.method public buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->getLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/airbnb/epoxy/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/airbnb/epoxy/u;

    iget-wide v3, p0, Lcom/airbnb/epoxy/u;->id:J

    iget-wide v5, p1, Lcom/airbnb/epoxy/u;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->getViewType()I

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->getViewType()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/airbnb/epoxy/u;->shown:Z

    iget-boolean p1, p1, Lcom/airbnb/epoxy/u;->shown:Z

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getDefaultLayout()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public final getLayout()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    iget v0, p0, Lcom/airbnb/epoxy/u;->layout:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->getDefaultLayout()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSpanSize(III)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->getLayout()I

    move-result v0

    return v0
.end method

.method public hasDefaultId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/epoxy/u;->hasDefaultId:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/airbnb/epoxy/u;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->getViewType()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/airbnb/epoxy/u;->shown:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public hide()Lcom/airbnb/epoxy/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/u;->show(Z)Lcom/airbnb/epoxy/u;

    move-result-object v0

    return-object v0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lcom/airbnb/epoxy/u;->id:J

    return-wide v0
.end method

.method public id(J)Lcom/airbnb/epoxy/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/airbnb/epoxy/u;->addedToAdapter:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/epoxy/u;->firstControllerAddedTo:Lcom/airbnb/epoxy/p;

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/airbnb/epoxy/u;->id:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/epoxy/u;->hasDefaultId:Z

    iput-wide p1, p0, Lcom/airbnb/epoxy/u;->id:J

    return-object p0

    :cond_2
    new-instance p1, Lcom/airbnb/epoxy/c0;

    const-string p2, "Cannot change a model\'s id after it has been added to the adapter."

    invoke-direct {p1, p2}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public id(JJ)Lcom/airbnb/epoxy/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/airbnb/epoxy/b0;->a(J)J

    move-result-wide p1

    const-wide/16 v0, 0x1f

    mul-long p1, p1, v0

    invoke-static {p3, p4}, Lcom/airbnb/epoxy/b0;->a(J)J

    move-result-wide p3

    add-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    move-result-object p1

    return-object p1
.end method

.method public id(Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/airbnb/epoxy/b0;->b(Ljava/lang/CharSequence;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public id(Ljava/lang/CharSequence;J)Lcom/airbnb/epoxy/u;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "J)",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/airbnb/epoxy/b0;->b(Ljava/lang/CharSequence;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    mul-long v0, v0, v2

    invoke-static {p2, p3}, Lcom/airbnb/epoxy/b0;->a(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    return-object p0
.end method

.method public varargs id(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/airbnb/epoxy/u;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/airbnb/epoxy/b0;->b(Ljava/lang/CharSequence;)J

    move-result-wide v0

    if-eqz p2, :cond_0

    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    const-wide/16 v4, 0x1f

    mul-long v0, v0, v4

    invoke-static {v3}, Lcom/airbnb/epoxy/b0;->b(Ljava/lang/CharSequence;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    move-result-object p1

    return-object p1
.end method

.method public varargs id([Ljava/lang/Number;)Lcom/airbnb/epoxy/u;
    .locals 9
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Number;",
            ")",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v6, p1, v3

    const-wide/16 v7, 0x1f

    mul-long v4, v4, v7

    if-nez v6, :cond_0

    move-wide v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    int-to-long v6, v6

    :goto_1
    invoke-static {v6, v7}, Lcom/airbnb/epoxy/b0;->a(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-wide v0, v4

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/u;->id(J)Lcom/airbnb/epoxy/u;

    move-result-object p1

    return-object p1
.end method

.method public isDebugValidationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/epoxy/u;->firstControllerAddedTo:Lcom/airbnb/epoxy/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/epoxy/u;->shown:Z

    return v0
.end method

.method public layout(I)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput p1, p0, Lcom/airbnb/epoxy/u;->layout:I

    return-object p0
.end method

.method public onFailedToRecycleView(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final onMutation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->isDebugValidationEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/airbnb/epoxy/u;->currentlyInInterceptors:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/d0;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/airbnb/epoxy/u;->firstControllerAddedTo:Lcom/airbnb/epoxy/p;

    .line 15
    .line 16
    invoke-static {v1, p0}, Lcom/airbnb/epoxy/u;->getPosition(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/u;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-direct {v0, p0, v2, v1}, Lcom/airbnb/epoxy/d0;-><init>(Lcom/airbnb/epoxy/u;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/epoxy/u;->controllerToStageTo:Lcom/airbnb/epoxy/p;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/airbnb/epoxy/p;->setStagedModel(Lcom/airbnb/epoxy/u;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public onViewAttachedToWindow(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onVisibilityChanged(FFIILjava/lang/Object;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFIITT;)V"
        }
    .end annotation

    return-void
.end method

.method public onVisibilityStateChanged(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public preBind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public reset()Lcom/airbnb/epoxy/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/epoxy/u;->layout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/epoxy/u;->shown:Z

    return-object p0
.end method

.method public shouldSaveViewState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show()Lcom/airbnb/epoxy/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/u;->show(Z)Lcom/airbnb/epoxy/u;

    move-result-object v0

    return-object v0
.end method

.method public show(Z)Lcom/airbnb/epoxy/u;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->onMutation()V

    iput-boolean p1, p0, Lcom/airbnb/epoxy/u;->shown:Z

    return-object p0
.end method

.method public final spanSize(III)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/epoxy/u;->getSpanSize(III)I

    move-result p1

    return p1
.end method

.method public spanSizeOverride(Lcom/airbnb/epoxy/u$c;)Lcom/airbnb/epoxy/u;
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u$c;",
            ")",
            "Lcom/airbnb/epoxy/u<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "{id="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lcom/airbnb/epoxy/u;->id:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", viewType="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->getViewType()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", shown="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/airbnb/epoxy/u;->shown:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", addedToAdapter="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/airbnb/epoxy/u;->addedToAdapter:Z

    .line 55
    .line 56
    const/16 v2, 0x7d

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public unbind(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->isDebugValidationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/epoxy/u;->currentlyInInterceptors:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/airbnb/epoxy/u;->hashCodeWhenAdded:I

    invoke-virtual {p0}, Lcom/airbnb/epoxy/u;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/d0;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/epoxy/d0;-><init>(Lcom/airbnb/epoxy/u;Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
