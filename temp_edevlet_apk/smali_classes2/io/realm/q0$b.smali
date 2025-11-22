.class public final Lio/realm/q0$b;
.super Lio/realm/q0$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/q0<",
        "TE;>.a;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lio/realm/q0;


# direct methods
.method public constructor <init>(Lio/realm/q0;I)V
    .locals 3

    iput-object p1, p0, Lio/realm/q0$b;->e:Lio/realm/q0;

    invoke-direct {p0, p1}, Lio/realm/q0$a;-><init>(Lio/realm/q0;)V

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/realm/q0;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    iput p2, p0, Lio/realm/q0$a;->a:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting location must be a valid index: [0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/q0;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Index was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/q0$b;->e:Lio/realm/q0;

    iget-object v1, v0, Lio/realm/q0;->c:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->b()V

    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    :try_start_0
    iget v1, p0, Lio/realm/q0$a;->a:I

    invoke-virtual {v0, v1, p1}, Lio/realm/q0;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lio/realm/q0$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/realm/q0$a;->a:I

    invoke-static {v0}, Lio/realm/q0;->u(Lio/realm/q0;)I

    move-result p1

    iput p1, p0, Lio/realm/q0$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lio/realm/q0$a;->a:I

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

    iget v0, p0, Lio/realm/q0$a;->a:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/realm/q0$a;->a:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lio/realm/q0$b;->e:Lio/realm/q0;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput v0, p0, Lio/realm/q0$a;->a:I

    .line 15
    .line 16
    iput v0, p0, Lio/realm/q0$a;->b:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :catch_0
    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 23
    .line 24
    const-string v2, "Cannot access index less than zero. This was "

    .line 25
    .line 26
    const-string v3, ". Remember to check hasPrevious() before using previous()."

    .line 27
    .line 28
    invoke-static {v2, v0, v3}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lio/realm/q0$a;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/q0$b;->e:Lio/realm/q0;

    iget-object v1, v0, Lio/realm/q0;->c:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->b()V

    iget v1, p0, Lio/realm/q0$a;->b:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    :try_start_0
    iget v1, p0, Lio/realm/q0$a;->b:I

    invoke-virtual {v0, v1, p1}, Lio/realm/q0;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lio/realm/q0;->o(Lio/realm/q0;)I

    move-result p1

    iput p1, p0, Lio/realm/q0$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
