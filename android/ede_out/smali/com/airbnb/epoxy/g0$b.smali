.class public final Lcom/airbnb/epoxy/g0$b;
.super Lcom/airbnb/epoxy/g0$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/g0$a;",
        "Ljava/util/ListIterator<",
        "Lcom/airbnb/epoxy/u<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/airbnb/epoxy/g0;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/g0;I)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/g0$b;->e:Lcom/airbnb/epoxy/g0;

    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/g0$a;-><init>(Lcom/airbnb/epoxy/g0;)V

    iput p2, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/epoxy/g0$b;->e:Lcom/airbnb/epoxy/g0;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0$a;->a()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/airbnb/epoxy/g0;->U(Lcom/airbnb/epoxy/u;I)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    .line 19
    .line 20
    invoke-static {v0}, Lcom/airbnb/epoxy/g0;->M(Lcom/airbnb/epoxy/g0;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/airbnb/epoxy/g0$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0$a;->a()V

    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iput v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    iput v0, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$b;->e:Lcom/airbnb/epoxy/g0;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/u;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    iget v0, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0$a;->a()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/epoxy/g0$b;->e:Lcom/airbnb/epoxy/g0;

    .line 11
    .line 12
    iget v1, p0, Lcom/airbnb/epoxy/g0$a;->b:I

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/airbnb/epoxy/g0;->b0(Lcom/airbnb/epoxy/u;I)Lcom/airbnb/epoxy/u;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
