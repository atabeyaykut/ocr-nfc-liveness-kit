.class public abstract Lcom/airbnb/epoxy/n;
.super Lcom/airbnb/epoxy/e;
.source "SourceFile"


# instance fields
.field public final f:Lcom/airbnb/epoxy/a0;

.field public final g:Lcom/airbnb/epoxy/g0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/epoxy/e;-><init>()V

    new-instance v0, Lcom/airbnb/epoxy/a0;

    invoke-direct {v0}, Lcom/airbnb/epoxy/a0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/epoxy/n;->f:Lcom/airbnb/epoxy/a0;

    new-instance v0, Lcom/airbnb/epoxy/g0;

    invoke-direct {v0}, Lcom/airbnb/epoxy/g0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/epoxy/n;->g:Lcom/airbnb/epoxy/g0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/n;->g:Lcom/airbnb/epoxy/g0;

    return-object v0
.end method

.method public final b(I)Lcom/airbnb/epoxy/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/epoxy/u<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/n;->g:Lcom/airbnb/epoxy/g0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/u;

    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/epoxy/n;->f:Lcom/airbnb/epoxy/a0;

    :goto_0
    return-object p1
.end method
