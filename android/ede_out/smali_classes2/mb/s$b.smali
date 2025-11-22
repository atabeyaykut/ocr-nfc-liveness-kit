.class public final Lmb/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lmb/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lmb/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lmb/o;


# direct methods
.method public constructor <init>(Lmb/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmb/s$b;->a:Ljava/util/Stack;

    .line 10
    .line 11
    :goto_0
    instance-of v0, p1, Lmb/s;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lmb/s;

    .line 16
    .line 17
    iget-object v0, p0, Lmb/s$b;->a:Ljava/util/Stack;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lmb/s;->c:Lmb/c;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    check-cast p1, Lmb/o;

    .line 26
    .line 27
    iput-object p1, p0, Lmb/s$b;->b:Lmb/o;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lmb/o;
    .locals 4

    .line 1
    iget-object v0, p0, Lmb/s$b;->b:Lmb/o;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    :cond_0
    iget-object v1, p0, Lmb/s$b;->a:Ljava/util/Stack;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lmb/s;

    .line 20
    .line 21
    iget-object v2, v2, Lmb/s;->d:Lmb/c;

    .line 22
    .line 23
    :goto_0
    instance-of v3, v2, Lmb/s;

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    check-cast v2, Lmb/s;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v2, v2, Lmb/s;->c:Lmb/c;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v1, v2

    .line 36
    check-cast v1, Lmb/o;

    .line 37
    .line 38
    iget-object v2, v1, Lmb/o;->b:[B

    .line 39
    .line 40
    array-length v2, v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-nez v2, :cond_0

    .line 47
    .line 48
    :goto_2
    iput-object v1, p0, Lmb/s$b;->b:Lmb/o;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lmb/s$b;->b:Lmb/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmb/s$b;->a()Lmb/o;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
