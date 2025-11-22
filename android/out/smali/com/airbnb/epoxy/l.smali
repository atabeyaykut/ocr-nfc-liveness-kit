.class public final Lcom/airbnb/epoxy/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/airbnb/epoxy/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/u<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/airbnb/epoxy/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/u;

    iput-object p1, p0, Lcom/airbnb/epoxy/l;->a:Lcom/airbnb/epoxy/u;

    iput-object v2, p0, Lcom/airbnb/epoxy/l;->b:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    iput-object v2, p0, Lcom/airbnb/epoxy/l;->a:Lcom/airbnb/epoxy/u;

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/epoxy/l;->b:Landroidx/collection/LongSparseArray;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/u;

    iget-object v1, p0, Lcom/airbnb/epoxy/l;->b:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Models must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
