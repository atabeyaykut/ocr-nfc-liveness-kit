.class public final Ln9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ly9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Ly9/a;"
    }
.end annotation


# instance fields
.field public final a:Ln9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln9/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ln9/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln9/a<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln9/a$a;->a:Ln9/a;

    iput p2, p0, Ln9/a$a;->b:I

    const/4 p1, -0x1

    iput p1, p0, Ln9/a$a;->c:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Ln9/a$a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln9/a$a;->b:I

    iget-object v1, p0, Ln9/a$a;->a:Ln9/a;

    invoke-virtual {v1, v0, p1}, Ln9/a;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Ln9/a$a;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ln9/a$a;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ln9/a$a;->a:Ln9/a;

    .line 4
    .line 5
    iget v1, v1, Ln9/a;->c:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Ln9/a$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ln9/a$a;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ln9/a$a;->a:Ln9/a;

    .line 4
    .line 5
    iget v2, v1, Ln9/a;->c:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Ln9/a$a;->b:I

    .line 12
    .line 13
    iput v0, p0, Ln9/a$a;->c:I

    .line 14
    .line 15
    iget-object v2, v1, Ln9/a;->a:[Ljava/lang/Object;

    .line 16
    .line 17
    iget v1, v1, Ln9/a;->b:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    aget-object v0, v2, v1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Ln9/a$a;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ln9/a$a;->b:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Ln9/a$a;->b:I

    .line 8
    .line 9
    iput v0, p0, Ln9/a$a;->c:I

    .line 10
    .line 11
    iget-object v1, p0, Ln9/a$a;->a:Ln9/a;

    .line 12
    .line 13
    iget-object v2, v1, Ln9/a;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v1, v1, Ln9/a;->b:I

    .line 16
    .line 17
    add-int/2addr v1, v0

    .line 18
    aget-object v0, v2, v1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Ln9/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget v0, p0, Ln9/a$a;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Ln9/a$a;->a:Ln9/a;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ln9/a;->m(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Ln9/a$a;->c:I

    .line 17
    .line 18
    iput v0, p0, Ln9/a$a;->b:I

    .line 19
    .line 20
    iput v1, p0, Ln9/a$a;->c:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Call next() or previous() before removing element from the iterator."

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Ln9/a$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Ln9/a$a;->a:Ln9/a;

    invoke-virtual {v1, v0, p1}, Ln9/a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
