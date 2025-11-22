.class public final Lp4/l0;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public transient a:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient b:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient c:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient d:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient e:I

.field public transient f:I

.field public transient g:Lp4/i0;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient h:Lp4/g0;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient j:Lp4/k0;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp4/l0;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x3fffffff    # 1.9999999f

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lp4/l0;->e:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lp4/l0;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(II)V
    .locals 7

    invoke-virtual {p0}, Lp4/l0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    iget-object v3, p0, Lp4/l0;->c:[Ljava/lang/Object;

    aget-object v4, v3, v0

    aput-object v4, v3, p1

    iget-object v5, p0, Lp4/l0;->d:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    aput-object v2, v3, v0

    aput-object v2, v5, v0

    iget-object v2, p0, Lp4/l0;->b:[I

    aget v3, v2, v0

    aput v3, v2, p1

    aput v1, v2, v0

    invoke-static {v4}, Lp4/da;->a(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    iget-object v2, p0, Lp4/l0;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Lp4/m0;->d(ILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eq v2, v0, :cond_1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    iget-object v1, p0, Lp4/l0;->b:[I

    aget v3, v1, v2

    and-int v4, v3, p2

    if-eq v4, v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    not-int v0, p2

    and-int/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    aput p1, v1, v2

    return-void

    :cond_1
    iget-object p2, p0, Lp4/l0;->a:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1, p2}, Lp4/m0;->f(IILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object p2, p0, Lp4/l0;->c:[Ljava/lang/Object;

    aput-object v2, p2, p1

    iget-object p2, p0, Lp4/l0;->d:[Ljava/lang/Object;

    aput-object v2, p2, p1

    iget-object p2, p0, Lp4/l0;->b:[I

    aput v1, p2, p1

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lp4/l0;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp4/l0;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lp4/l0;->e:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Lp4/l0;->e:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lp4/l0;->a()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lp4/l0;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const v4, 0x3fffffff    # 1.9999999f

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, p0, Lp4/l0;->e:I

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lp4/l0;->a:Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 47
    .line 48
    iget v3, p0, Lp4/l0;->f:I

    .line 49
    .line 50
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 54
    .line 55
    iget v3, p0, Lp4/l0;->f:I

    .line 56
    .line 57
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lp4/l0;->a:Ljava/lang/Object;

    .line 61
    .line 62
    instance-of v1, v0, [B

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    check-cast v0, [B

    .line 67
    .line 68
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    instance-of v1, v0, [S

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    check-cast v0, [S

    .line 77
    .line 78
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    check-cast v0, [I

    .line 83
    .line 84
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object v0, p0, Lp4/l0;->b:[I

    .line 88
    .line 89
    iget v1, p0, Lp4/l0;->f:I

    .line 90
    .line 91
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iput v2, p0, Lp4/l0;->f:I

    .line 95
    .line 96
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lp4/l0;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lp4/l0;->f:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lp4/l0;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lp4/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lp4/l0;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p1}, Lp4/da;->a(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lp4/l0;->e:I

    .line 14
    .line 15
    and-int/lit8 v2, v2, 0x1f

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    shl-int v2, v3, v2

    .line 19
    .line 20
    add-int/2addr v2, v1

    .line 21
    iget-object v3, p0, Lp4/l0;->a:Ljava/lang/Object;

    .line 22
    .line 23
    and-int v4, v0, v2

    .line 24
    .line 25
    invoke-static {v4, v3}, Lp4/m0;->d(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    not-int v4, v2

    .line 32
    and-int/2addr v0, v4

    .line 33
    :cond_1
    add-int/2addr v3, v1

    .line 34
    iget-object v5, p0, Lp4/l0;->b:[I

    .line 35
    .line 36
    aget v5, v5, v3

    .line 37
    .line 38
    and-int v6, v5, v4

    .line 39
    .line 40
    if-ne v6, v0, :cond_3

    .line 41
    .line 42
    iget-object v6, p0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v6, v6, v3

    .line 45
    .line 46
    invoke-static {p1, v6}, Lp4/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v3

    .line 54
    :cond_3
    :goto_0
    and-int v3, v5, v2

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    :cond_4
    return v1
.end method

.method public final e(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Lp4/m0;->e(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    and-int/2addr p3, p2

    .line 10
    add-int/lit8 p4, p4, 0x1

    .line 11
    .line 12
    invoke-static {p3, p4, v0}, Lp4/m0;->f(IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lp4/l0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p4, p0, Lp4/l0;->b:[I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-gt v1, p1, :cond_2

    .line 21
    .line 22
    invoke-static {v1, p3}, Lp4/m0;->d(ILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_1
    if-eqz v2, :cond_1

    .line 27
    .line 28
    add-int/lit8 v3, v2, -0x1

    .line 29
    .line 30
    aget v4, p4, v3

    .line 31
    .line 32
    not-int v5, p1

    .line 33
    and-int/2addr v5, v4

    .line 34
    or-int/2addr v5, v1

    .line 35
    and-int v6, v5, p2

    .line 36
    .line 37
    invoke-static {v6, v0}, Lp4/m0;->d(ILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-static {v6, v2, v0}, Lp4/m0;->f(IILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    not-int v2, p2

    .line 45
    and-int/2addr v2, v5

    .line 46
    and-int v5, v7, p2

    .line 47
    .line 48
    or-int/2addr v2, v5

    .line 49
    aput v2, p4, v3

    .line 50
    .line 51
    and-int v2, v4, p1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iput-object v0, p0, Lp4/l0;->a:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget p3, p0, Lp4/l0;->e:I

    .line 64
    .line 65
    and-int/lit8 p3, p3, -0x20

    .line 66
    .line 67
    rsub-int/lit8 p1, p1, 0x20

    .line 68
    .line 69
    and-int/lit8 p1, p1, 0x1f

    .line 70
    .line 71
    or-int/2addr p1, p3

    .line 72
    iput p1, p0, Lp4/l0;->e:I

    .line 73
    .line 74
    return p2
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lp4/l0;->h:Lp4/g0;

    if-nez v0, :cond_0

    new-instance v0, Lp4/g0;

    invoke-direct {v0, p0}, Lp4/g0;-><init>(Lp4/l0;)V

    iput-object v0, p0, Lp4/l0;->h:Lp4/g0;

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp4/l0;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lp4/l0;->k:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    iget v0, p0, Lp4/l0;->e:I

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    shl-int v0, v2, v0

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    add-int/2addr v0, v2

    .line 19
    const/4 v4, 0x0

    .line 20
    iget-object v6, p0, Lp4/l0;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v7, p0, Lp4/l0;->b:[I

    .line 23
    .line 24
    iget-object v8, p0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    move-object v3, p1

    .line 28
    move v5, v0

    .line 29
    invoke-static/range {v3 .. v9}, Lp4/m0;->c(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    iget-object v1, p0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v1, v1, p1

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lp4/l0;->b(II)V

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lp4/l0;->f:I

    .line 44
    .line 45
    add-int/2addr p1, v2

    .line 46
    iput p1, p0, Lp4/l0;->f:I

    .line 47
    .line 48
    iget p1, p0, Lp4/l0;->e:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x20

    .line 51
    .line 52
    iput p1, p0, Lp4/l0;->e:I

    .line 53
    .line 54
    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lp4/l0;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lp4/l0;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lp4/l0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lp4/l0;->g:Lp4/i0;

    if-nez v0, :cond_0

    new-instance v0, Lp4/i0;

    invoke-direct {v0, p0}, Lp4/i0;-><init>(Lp4/l0;)V

    iput-object v0, p0, Lp4/l0;->g:Lp4/i0;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lp4/l0;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lp4/l0;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget v3, v0, Lp4/l0;->e:I

    .line 21
    .line 22
    add-int/lit8 v5, v3, 0x1

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    int-to-double v7, v6

    .line 34
    double-to-int v7, v7

    .line 35
    if-le v5, v7, :cond_0

    .line 36
    .line 37
    add-int/2addr v6, v6

    .line 38
    if-gtz v6, :cond_0

    .line 39
    .line 40
    const/high16 v6, 0x40000000    # 2.0f

    .line 41
    .line 42
    :cond_0
    const/4 v5, 0x4

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {v5}, Lp4/m0;->e(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iput-object v6, v0, Lp4/l0;->a:Ljava/lang/Object;

    .line 52
    .line 53
    add-int/2addr v5, v4

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iget v6, v0, Lp4/l0;->e:I

    .line 59
    .line 60
    and-int/lit8 v6, v6, -0x20

    .line 61
    .line 62
    rsub-int/lit8 v5, v5, 0x20

    .line 63
    .line 64
    and-int/lit8 v5, v5, 0x1f

    .line 65
    .line 66
    or-int/2addr v5, v6

    .line 67
    iput v5, v0, Lp4/l0;->e:I

    .line 68
    .line 69
    new-array v5, v3, [I

    .line 70
    .line 71
    iput-object v5, v0, Lp4/l0;->b:[I

    .line 72
    .line 73
    new-array v5, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    iput-object v5, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 76
    .line 77
    new-array v3, v3, [Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v3, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v2, "Arrays already allocated"

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lp4/l0;->a()Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    return-object v1

    .line 101
    :cond_3
    iget-object v3, v0, Lp4/l0;->b:[I

    .line 102
    .line 103
    iget-object v5, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 104
    .line 105
    iget-object v6, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 106
    .line 107
    iget v7, v0, Lp4/l0;->f:I

    .line 108
    .line 109
    add-int/lit8 v8, v7, 0x1

    .line 110
    .line 111
    invoke-static/range {p1 .. p1}, Lp4/da;->a(Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    iget v10, v0, Lp4/l0;->e:I

    .line 116
    .line 117
    and-int/lit8 v10, v10, 0x1f

    .line 118
    .line 119
    const/4 v11, 0x1

    .line 120
    shl-int v10, v11, v10

    .line 121
    .line 122
    add-int/2addr v10, v4

    .line 123
    and-int v12, v9, v10

    .line 124
    .line 125
    iget-object v13, v0, Lp4/l0;->a:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v12, v13}, Lp4/m0;->d(ILjava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-nez v13, :cond_5

    .line 132
    .line 133
    if-le v8, v10, :cond_4

    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_4
    iget-object v3, v0, Lp4/l0;->a:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v12, v8, v3}, Lp4/m0;->f(IILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_5
    not-int v12, v10

    .line 145
    and-int v15, v9, v12

    .line 146
    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    :goto_1
    add-int/2addr v13, v4

    .line 152
    aget v18, v3, v13

    .line 153
    .line 154
    and-int v14, v18, v12

    .line 155
    .line 156
    if-ne v14, v15, :cond_7

    .line 157
    .line 158
    aget-object v4, v5, v13

    .line 159
    .line 160
    invoke-static {v1, v4}, Lp4/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_6

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    aget-object v1, v6, v13

    .line 168
    .line 169
    aput-object v2, v6, v13

    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_7
    :goto_2
    and-int v4, v18, v10

    .line 173
    .line 174
    move-object/from16 v18, v5

    .line 175
    .line 176
    add-int/lit8 v5, v17, 0x1

    .line 177
    .line 178
    if-nez v4, :cond_e

    .line 179
    .line 180
    const/16 v4, 0x9

    .line 181
    .line 182
    if-lt v5, v4, :cond_b

    .line 183
    .line 184
    iget v3, v0, Lp4/l0;->e:I

    .line 185
    .line 186
    and-int/lit8 v3, v3, 0x1f

    .line 187
    .line 188
    shl-int v3, v11, v3

    .line 189
    .line 190
    const/4 v13, -0x1

    .line 191
    add-int/2addr v3, v13

    .line 192
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    add-int/2addr v3, v11

    .line 195
    const/high16 v5, 0x3f800000    # 1.0f

    .line 196
    .line 197
    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Lp4/l0;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_9

    .line 205
    .line 206
    :cond_8
    const/16 v16, -0x1

    .line 207
    .line 208
    :cond_9
    :goto_3
    if-ltz v16, :cond_a

    .line 209
    .line 210
    iget-object v3, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 211
    .line 212
    aget-object v3, v3, v16

    .line 213
    .line 214
    iget-object v5, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 215
    .line 216
    aget-object v5, v5, v16

    .line 217
    .line 218
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    add-int/lit8 v3, v16, 0x1

    .line 222
    .line 223
    iget v5, v0, Lp4/l0;->f:I

    .line 224
    .line 225
    if-ge v3, v5, :cond_8

    .line 226
    .line 227
    move/from16 v16, v3

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_a
    iput-object v4, v0, Lp4/l0;->a:Ljava/lang/Object;

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    iput-object v3, v0, Lp4/l0;->b:[I

    .line 234
    .line 235
    iput-object v3, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 236
    .line 237
    iput-object v3, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 238
    .line 239
    iget v3, v0, Lp4/l0;->e:I

    .line 240
    .line 241
    add-int/lit8 v3, v3, 0x20

    .line 242
    .line 243
    iput v3, v0, Lp4/l0;->e:I

    .line 244
    .line 245
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    return-object v1

    .line 250
    :cond_b
    if-le v8, v10, :cond_c

    .line 251
    .line 252
    :goto_4
    invoke-static {v10}, Lp4/m0;->a(I)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v0, v10, v3, v9, v7}, Lp4/l0;->e(IIII)I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    goto :goto_5

    .line 261
    :cond_c
    and-int v4, v8, v10

    .line 262
    .line 263
    or-int/2addr v4, v14

    .line 264
    aput v4, v3, v13

    .line 265
    .line 266
    :goto_5
    iget-object v3, v0, Lp4/l0;->b:[I

    .line 267
    .line 268
    array-length v3, v3

    .line 269
    if-le v8, v3, :cond_d

    .line 270
    .line 271
    ushr-int/lit8 v4, v3, 0x1

    .line 272
    .line 273
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    add-int/2addr v4, v3

    .line 278
    or-int/2addr v4, v11

    .line 279
    const v5, 0x3fffffff    # 1.9999999f

    .line 280
    .line 281
    .line 282
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eq v4, v3, :cond_d

    .line 287
    .line 288
    iget-object v3, v0, Lp4/l0;->b:[I

    .line 289
    .line 290
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    iput-object v3, v0, Lp4/l0;->b:[I

    .line 295
    .line 296
    iget-object v3, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 297
    .line 298
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iput-object v3, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 303
    .line 304
    iget-object v3, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    iput-object v3, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 311
    .line 312
    :cond_d
    iget-object v3, v0, Lp4/l0;->b:[I

    .line 313
    .line 314
    not-int v4, v10

    .line 315
    and-int/2addr v4, v9

    .line 316
    aput v4, v3, v7

    .line 317
    .line 318
    iget-object v3, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 319
    .line 320
    aput-object v1, v3, v7

    .line 321
    .line 322
    iget-object v1, v0, Lp4/l0;->d:[Ljava/lang/Object;

    .line 323
    .line 324
    aput-object v2, v1, v7

    .line 325
    .line 326
    iput v8, v0, Lp4/l0;->f:I

    .line 327
    .line 328
    iget v1, v0, Lp4/l0;->e:I

    .line 329
    .line 330
    add-int/lit8 v1, v1, 0x20

    .line 331
    .line 332
    iput v1, v0, Lp4/l0;->e:I

    .line 333
    .line 334
    const/4 v14, 0x0

    .line 335
    return-object v14

    .line 336
    :cond_e
    move v13, v4

    .line 337
    move/from16 v17, v5

    .line 338
    .line 339
    move-object/from16 v5, v18

    .line 340
    .line 341
    const/4 v4, -0x1

    .line 342
    goto/16 :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lp4/l0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lp4/l0;->k:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lp4/l0;->f:I

    :goto_0
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lp4/l0;->j:Lp4/k0;

    if-nez v0, :cond_0

    new-instance v0, Lp4/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp4/k0;-><init>(Ljava/util/AbstractMap;I)V

    iput-object v0, p0, Lp4/l0;->j:Lp4/k0;

    :cond_0
    return-object v0
.end method
