.class public final Lcom/airbnb/epoxy/g0$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/g0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Lcom/airbnb/epoxy/u<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/epoxy/g0$d;

.field public final b:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/g0$b;Lcom/airbnb/epoxy/g0$d;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    iput-object p2, p0, Lcom/airbnb/epoxy/g0$d$a;->a:Lcom/airbnb/epoxy/g0$d;

    iput p3, p0, Lcom/airbnb/epoxy/g0$d$a;->c:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/airbnb/epoxy/g0$d$a;->a:Lcom/airbnb/epoxy/g0$d;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/g0$d;->h(Z)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    .line 18
    .line 19
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/g0$d$a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    iget v2, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/u;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/g0$d$a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    iget v2, p0, Lcom/airbnb/epoxy/g0$d$a;->c:I

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/u;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/g0$d$a;->c:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->a:Lcom/airbnb/epoxy/g0$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/g0$d;->h(Z)V

    iget v0, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/epoxy/g0$d$a;->d:I

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/epoxy/g0$d$a;->b:Ljava/util/ListIterator;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
