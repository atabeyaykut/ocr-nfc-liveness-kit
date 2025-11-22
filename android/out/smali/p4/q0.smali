.class public final Lp4/q0;
.super Lp4/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lp4/n0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp4/n0;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lp4/q0;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lp4/q0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lp4/q0;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lp4/q0;->c(I)V

    iget-object v0, p0, Lp4/q0;->a:[Ljava/lang/Object;

    iget v1, p0, Lp4/q0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lp4/q0;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lp4/q0;->b:I

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    invoke-virtual {p0, v1}, Lp4/q0;->c(I)V

    .line 13
    .line 14
    .line 15
    instance-of v0, p1, Lp4/o0;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    check-cast p1, Lp4/o0;

    .line 21
    .line 22
    iget-object v0, p0, Lp4/q0;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v1, p0, Lp4/q0;->b:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lp4/o0;->h([Ljava/lang/Object;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lp4/q0;->b:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lp4/q0;->a(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lp4/q0;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-ge v1, p1, :cond_2

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    add-int v1, p1, p1

    :cond_0
    if-gez v1, :cond_1

    const v1, 0x7fffffff

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lp4/q0;->a:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lp4/q0;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lp4/q0;->a:[Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lp4/q0;->c:Z

    :cond_3
    return-void
.end method

.method public final d()Lp4/d1;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp4/q0;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lp4/q0;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lp4/q0;->b:I

    .line 7
    .line 8
    sget-object v2, Lp4/u0;->b:Lp4/r0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lp4/d1;->e:Lp4/d1;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lp4/d1;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lp4/d1;-><init>([Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    move-object v0, v2

    .line 21
    :goto_0
    return-object v0
.end method
