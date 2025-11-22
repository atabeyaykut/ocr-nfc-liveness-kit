.class public Lcom/airbnb/epoxy/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/airbnb/epoxy/u<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lcom/airbnb/epoxy/g0;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/g0;)V
    .locals 1

    iput-object p1, p0, Lcom/airbnb/epoxy/g0$a;->d:Lcom/airbnb/epoxy/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    invoke-static {p1}, Lcom/airbnb/epoxy/g0;->h(Lcom/airbnb/epoxy/g0;)I

    move-result p1

    iput p1, p0, Lcom/airbnb/epoxy/g0$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$a;->d:Lcom/airbnb/epoxy/g0;

    invoke-static {v0}, Lcom/airbnb/epoxy/g0;->L(Lcom/airbnb/epoxy/g0;)I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/g0$a;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$a;->d:Lcom/airbnb/epoxy/g0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0$a;->a()V

    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    iput v0, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$a;->d:Lcom/airbnb/epoxy/g0;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/u;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$a;->d:Lcom/airbnb/epoxy/g0;

    iget v1, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0$a;->a()V

    :try_start_0
    iget v1, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/g0;->a0(I)Lcom/airbnb/epoxy/u;

    iget v1, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    iput v1, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    invoke-static {v0}, Lcom/airbnb/epoxy/g0;->I(Lcom/airbnb/epoxy/g0;)I

    move-result v0

    iput v0, p0, Lcom/airbnb/epoxy/g0$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
