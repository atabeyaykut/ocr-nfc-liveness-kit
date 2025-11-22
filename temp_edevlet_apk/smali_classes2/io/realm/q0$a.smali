.class public Lio/realm/q0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lio/realm/q0;


# direct methods
.method public constructor <init>(Lio/realm/q0;)V
    .locals 1

    iput-object p1, p0, Lio/realm/q0$a;->d:Lio/realm/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/realm/q0$a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lio/realm/q0$a;->b:I

    invoke-static {p1}, Lio/realm/q0;->h(Lio/realm/q0;)I

    move-result p1

    iput p1, p0, Lio/realm/q0$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lio/realm/q0$a;->d:Lio/realm/q0;

    invoke-static {v0}, Lio/realm/q0;->m(Lio/realm/q0;)I

    move-result v0

    iget v1, p0, Lio/realm/q0$a;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/q0$a;->d:Lio/realm/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/q0;->w()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lio/realm/q0$a;->a:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/realm/q0;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v1, v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/q0$a;->d:Lio/realm/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/q0;->w()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lio/realm/q0$a;->a:I

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput v1, p0, Lio/realm/q0$a;->b:I

    .line 16
    .line 17
    add-int/lit8 v3, v1, 0x1

    .line 18
    .line 19
    iput v3, p0, Lio/realm/q0$a;->a:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return-object v2

    .line 22
    :catch_0
    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/util/NoSuchElementException;

    .line 26
    .line 27
    const-string v3, "Cannot access index "

    .line 28
    .line 29
    const-string v4, " when size is "

    .line 30
    .line 31
    invoke-static {v3, v1, v4}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0}, Lio/realm/q0;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ". Remember to check hasNext() before using next()."

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v2
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q0$a;->d:Lio/realm/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/q0;->w()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lio/realm/q0$a;->b:I

    .line 7
    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/realm/q0$a;->a()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget v1, p0, Lio/realm/q0$a;->b:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lio/realm/q0;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lio/realm/q0$a;->b:I

    .line 19
    .line 20
    iget v2, p0, Lio/realm/q0$a;->a:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    iput v2, p0, Lio/realm/q0$a;->a:I

    .line 27
    .line 28
    :cond_0
    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lio/realm/q0$a;->b:I

    .line 30
    .line 31
    invoke-static {v0}, Lio/realm/q0;->l(Lio/realm/q0;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lio/realm/q0$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "Cannot call remove() twice. Must call next() in between."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method
