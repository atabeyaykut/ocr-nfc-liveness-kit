.class public abstract Lio/realm/internal/OsResults$b;
.super Lio/realm/internal/OsResults$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/OsResults$a<",
        "TT;>;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILio/realm/internal/OsResults;)V
    .locals 5

    invoke-direct {p0, p2}, Lio/realm/internal/OsResults$a;-><init>(Lio/realm/internal/OsResults;)V

    if-ltz p1, :cond_0

    int-to-long v0, p1

    iget-object p2, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    invoke-virtual {p2}, Lio/realm/internal/OsResults;->f()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/realm/internal/OsResults$a;->b:I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting location must be a valid index: [0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]. Yours was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Adding an element is not supported. Use Realm.createObject() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    .line 5
    .line 6
    iget-object v1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/OsResults$a;->b(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lio/realm/internal/OsResults$a;->b:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Lio/realm/internal/OsResults$a;->b:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Cannot access index less than zero. This was "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lio/realm/internal/OsResults$a;->b:I

    .line 29
    .line 30
    const-string v3, ". Remember to check hasPrevious() before using previous()."

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Replacing an element is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
