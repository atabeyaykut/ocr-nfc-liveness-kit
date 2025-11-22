.class public final Lp4/g0;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp4/l0;


# direct methods
.method public constructor <init>(Lp4/l0;)V
    .locals 0

    iput-object p1, p0, Lp4/g0;->a:Lp4/l0;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lp4/g0;->a:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp4/g0;->a:Lp4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp4/l0;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lp4/l0;->d(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v3, -0x1

    .line 34
    if-eq v1, v3, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v0, v0, v1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lp4/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_1
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp4/g0;->a:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lp4/e0;

    invoke-direct {v1, v0}, Lp4/e0;-><init>(Lp4/l0;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp4/g0;->a:Lp4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp4/l0;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-virtual {v0}, Lp4/l0;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    iget v1, v0, Lp4/l0;->e:I

    .line 33
    .line 34
    and-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    shl-int v1, v3, v1

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    add-int/2addr v1, v4

    .line 41
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v8, v0, Lp4/l0;->a:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v9, v0, Lp4/l0;->b:[I

    .line 52
    .line 53
    iget-object v10, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v11, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 56
    .line 57
    move v7, v1

    .line 58
    invoke-static/range {v5 .. v11}, Lp4/m0;->c(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v4, :cond_2

    .line 63
    .line 64
    return v2

    .line 65
    :cond_2
    invoke-virtual {v0, p1, v1}, Lp4/l0;->b(II)V

    .line 66
    .line 67
    .line 68
    iget p1, v0, Lp4/l0;->f:I

    .line 69
    .line 70
    add-int/2addr p1, v4

    .line 71
    iput p1, v0, Lp4/l0;->f:I

    .line 72
    .line 73
    iget p1, v0, Lp4/l0;->e:I

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x20

    .line 76
    .line 77
    iput p1, v0, Lp4/l0;->e:I

    .line 78
    .line 79
    return v3

    .line 80
    :cond_3
    return v2
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lp4/g0;->a:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->size()I

    move-result v0

    return v0
.end method
