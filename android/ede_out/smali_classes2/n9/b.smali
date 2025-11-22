.class public final Ln9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ly9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln9/b$a;,
        Ln9/b$d;,
        Ln9/b$e;,
        Ln9/b$f;,
        Ln9/b$b;,
        Ln9/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ly9/a;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public c:[I

.field public d:[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public j:Ln9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln9/d<",
            "TK;>;"
        }
    .end annotation
.end field

.field public k:Ln9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln9/e<",
            "TV;>;"
        }
    .end annotation
.end field

.field public l:Ln9/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln9/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln9/b$a;

    invoke-direct {v0}, Ln9/b$a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Lc5/w;->b(I)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-array v3, v2, [I

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v0, p0, Ln9/b;->c:[I

    .line 26
    .line 27
    iput-object v3, p0, Ln9/b;->d:[I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p0, Ln9/b;->e:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Ln9/b;->f:I

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p0, Ln9/b;->g:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln9/b;->b()V

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Ln9/b;->g(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Ln9/b;->e:I

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    iget-object v2, p0, Ln9/b;->d:[I

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    iget-object v3, p0, Ln9/b;->d:[I

    .line 22
    .line 23
    aget v4, v3, v0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-gtz v4, :cond_3

    .line 27
    .line 28
    iget v1, p0, Ln9/b;->f:I

    .line 29
    .line 30
    iget-object v4, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 31
    .line 32
    array-length v6, v4

    .line 33
    if-lt v1, v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Ln9/b;->e(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v6, v1, 0x1

    .line 40
    .line 41
    iput v6, p0, Ln9/b;->f:I

    .line 42
    .line 43
    aput-object p1, v4, v1

    .line 44
    .line 45
    iget-object p1, p0, Ln9/b;->c:[I

    .line 46
    .line 47
    aput v0, p1, v1

    .line 48
    .line 49
    aput v6, v3, v0

    .line 50
    .line 51
    iget p1, p0, Ln9/b;->h:I

    .line 52
    .line 53
    add-int/2addr p1, v5

    .line 54
    iput p1, p0, Ln9/b;->h:I

    .line 55
    .line 56
    iget p1, p0, Ln9/b;->e:I

    .line 57
    .line 58
    if-le v2, p1, :cond_2

    .line 59
    .line 60
    iput v2, p0, Ln9/b;->e:I

    .line 61
    .line 62
    :cond_2
    return v1

    .line 63
    :cond_3
    iget-object v3, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 64
    .line 65
    add-int/lit8 v6, v4, -0x1

    .line 66
    .line 67
    aget-object v3, v3, v6

    .line 68
    .line 69
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    neg-int p1, v4

    .line 76
    return p1

    .line 77
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    if-le v2, v1, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Ln9/b;->d:[I

    .line 82
    .line 83
    array-length v0, v0

    .line 84
    mul-int/lit8 v0, v0, 0x2

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ln9/b;->i(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    add-int/lit8 v3, v0, -0x1

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Ln9/b;->d:[I

    .line 95
    .line 96
    array-length v0, v0

    .line 97
    sub-int/2addr v0, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_6
    move v0, v3

    .line 100
    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Ln9/b;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Ln9/b;->d(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final clear()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ln9/b;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lca/d;

    .line 5
    .line 6
    iget v1, p0, Ln9/b;->f:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v3, v1}, Lca/d;-><init>(II)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lca/c;

    .line 15
    .line 16
    iget v4, v0, Lca/b;->c:I

    .line 17
    .line 18
    iget v0, v0, Lca/b;->b:I

    .line 19
    .line 20
    invoke-direct {v1, v3, v0, v4}, Lca/c;-><init>(III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-boolean v0, v1, Lca/c;->c:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lca/c;->nextInt()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v4, p0, Ln9/b;->c:[I

    .line 32
    .line 33
    aget v5, v4, v0

    .line 34
    .line 35
    if-ltz v5, :cond_0

    .line 36
    .line 37
    iget-object v6, p0, Ln9/b;->d:[I

    .line 38
    .line 39
    aput v3, v6, v5

    .line 40
    .line 41
    aput v2, v4, v0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 45
    .line 46
    iget v1, p0, Ln9/b;->f:I

    .line 47
    .line 48
    invoke-static {v0, v3, v1}, Lc5/w;->C([Ljava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget v1, p0, Ln9/b;->f:I

    .line 56
    .line 57
    invoke-static {v0, v3, v1}, Lc5/w;->C([Ljava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput v3, p0, Ln9/b;->h:I

    .line 61
    .line 62
    iput v3, p0, Ln9/b;->f:I

    .line 63
    .line 64
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ln9/b;->f(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Ln9/b;->f:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Ln9/b;->c:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Ln9/b;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :cond_1
    if-ltz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln9/b;->f(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Ln9/b;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget v0, p0, Ln9/b;->f:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    if-ltz p1, :cond_5

    .line 5
    .line 6
    iget-object v1, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-le p1, v2, :cond_3

    .line 10
    .line 11
    array-length v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    if-le p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "copyOf(this, newSize)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    iput-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v0, p0, Ln9/b;->c:[I

    .line 47
    .line 48
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Ln9/b;->c:[I

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    if-ge p1, v0, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    :cond_2
    mul-int/lit8 p1, p1, 0x3

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-object v0, p0, Ln9/b;->d:[I

    .line 68
    .line 69
    array-length v0, v0

    .line 70
    if-le p1, v0, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    add-int/2addr v0, p1

    .line 74
    iget p1, p0, Ln9/b;->h:I

    .line 75
    .line 76
    sub-int/2addr v0, p1

    .line 77
    array-length p1, v1

    .line 78
    if-le v0, p1, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Ln9/b;->d:[I

    .line 81
    .line 82
    array-length p1, p1

    .line 83
    :goto_2
    invoke-virtual {p0, p1}, Ln9/b;->i(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void

    .line 87
    :cond_5
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1
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

    iget-object v0, p0, Ln9/b;->l:Ln9/c;

    if-nez v0, :cond_0

    new-instance v0, Ln9/c;

    invoke-direct {v0, p0}, Ln9/c;-><init>(Ln9/b;)V

    iput-object v0, p0, Ln9/b;->l:Ln9/c;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, p0, :cond_2

    .line 3
    .line 4
    instance-of v1, p1, Ljava/util/Map;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    iget v1, p0, Ln9/b;->h:I

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ln9/b;->c(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :cond_2
    :goto_1
    return v0
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln9/b;->g(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Ln9/b;->e:I

    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Ln9/b;->d:[I

    .line 8
    .line 9
    aget v2, v2, v0

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    if-lez v2, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    aget-object v4, v4, v2

    .line 22
    .line 23
    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    add-int/2addr v1, v3

    .line 31
    if-gez v1, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Ln9/b;->d:[I

    .line 39
    .line 40
    array-length v0, v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move v0, v2

    .line 45
    goto :goto_0
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int p1, p1, v0

    iget v0, p0, Ln9/b;->g:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ln9/b;->f(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    new-instance v0, Ln9/b$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ln9/b$b;-><init>(Ln9/b;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ln9/b$d;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_3

    .line 13
    .line 14
    iget v3, v0, Ln9/b$d;->b:I

    .line 15
    .line 16
    iget-object v4, v0, Ln9/b$d;->a:Ln9/b;

    .line 17
    .line 18
    iget v5, v4, Ln9/b;->f:I

    .line 19
    .line 20
    if-ge v3, v5, :cond_2

    .line 21
    .line 22
    add-int/lit8 v5, v3, 0x1

    .line 23
    .line 24
    iput v5, v0, Ln9/b$d;->b:I

    .line 25
    .line 26
    iput v3, v0, Ln9/b$d;->c:I

    .line 27
    .line 28
    iget-object v5, v4, Ln9/b;->a:[Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v3, v5, v3

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    :goto_1
    iget-object v4, v4, Ln9/b;->b:[Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v5, v0, Ln9/b$d;->c:I

    .line 46
    .line 47
    aget-object v4, v4, v5

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const/4 v4, 0x0

    .line 57
    :goto_2
    xor-int/2addr v3, v4

    .line 58
    invoke-virtual {v0}, Ln9/b$d;->a()V

    .line 59
    .line 60
    .line 61
    add-int/2addr v2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    return v2
.end method

.method public final i(I)V
    .locals 7

    .line 1
    iget v0, p0, Ln9/b;->f:I

    .line 2
    .line 3
    iget v1, p0, Ln9/b;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-le v0, v1, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    iget v4, p0, Ln9/b;->f:I

    .line 13
    .line 14
    if-ge v1, v4, :cond_2

    .line 15
    .line 16
    iget-object v4, p0, Ln9/b;->c:[I

    .line 17
    .line 18
    aget v4, v4, v1

    .line 19
    .line 20
    if-ltz v4, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v5, v4, v1

    .line 25
    .line 26
    aput-object v5, v4, v3

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    aget-object v4, v0, v1

    .line 31
    .line 32
    aput-object v4, v0, v3

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v1, v3, v4}, Lc5/w;->C([Ljava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v1, p0, Ln9/b;->f:I

    .line 47
    .line 48
    invoke-static {v0, v3, v1}, Lc5/w;->C([Ljava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iput v3, p0, Ln9/b;->f:I

    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Ln9/b;->d:[I

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    const/4 v3, 0x1

    .line 57
    if-eq p1, v1, :cond_5

    .line 58
    .line 59
    new-array v0, p1, [I

    .line 60
    .line 61
    iput-object v0, p0, Ln9/b;->d:[I

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    add-int/2addr p1, v3

    .line 68
    iput p1, p0, Ln9/b;->g:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    array-length p1, v0

    .line 72
    const-string v1, "<this>"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v2, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 78
    .line 79
    .line 80
    :goto_1
    const/4 p1, 0x0

    .line 81
    :goto_2
    iget v0, p0, Ln9/b;->f:I

    .line 82
    .line 83
    if-ge p1, v0, :cond_a

    .line 84
    .line 85
    add-int/lit8 v0, p1, 0x1

    .line 86
    .line 87
    iget-object v1, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 88
    .line 89
    aget-object v1, v1, p1

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Ln9/b;->g(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget v4, p0, Ln9/b;->e:I

    .line 96
    .line 97
    :goto_3
    iget-object v5, p0, Ln9/b;->d:[I

    .line 98
    .line 99
    aget v6, v5, v1

    .line 100
    .line 101
    if-nez v6, :cond_6

    .line 102
    .line 103
    aput v0, v5, v1

    .line 104
    .line 105
    iget-object v4, p0, Ln9/b;->c:[I

    .line 106
    .line 107
    aput v1, v4, p1

    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 112
    .line 113
    if-gez v4, :cond_8

    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    :goto_4
    if-eqz p1, :cond_7

    .line 117
    .line 118
    move p1, v0

    .line 119
    goto :goto_2

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_8
    add-int/lit8 v6, v1, -0x1

    .line 129
    .line 130
    if-nez v1, :cond_9

    .line 131
    .line 132
    array-length v1, v5

    .line 133
    sub-int/2addr v1, v3

    .line 134
    goto :goto_3

    .line 135
    :cond_9
    move v1, v6

    .line 136
    goto :goto_3

    .line 137
    :cond_a
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Ln9/b;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object v1, v0, p1

    .line 10
    .line 11
    iget-object v0, p0, Ln9/b;->c:[I

    .line 12
    .line 13
    aget v0, v0, p1

    .line 14
    .line 15
    iget v1, p0, Ln9/b;->e:I

    .line 16
    .line 17
    mul-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    iget-object v2, p0, Ln9/b;->d:[I

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    div-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    if-le v1, v2, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    move v3, v1

    .line 29
    const/4 v4, 0x0

    .line 30
    move v1, v0

    .line 31
    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Ln9/b;->d:[I

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    add-int/2addr v0, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v0, v5

    .line 42
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    iget v5, p0, Ln9/b;->e:I

    .line 45
    .line 46
    if-le v4, v5, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Ln9/b;->d:[I

    .line 49
    .line 50
    aput v2, v0, v1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    iget-object v5, p0, Ln9/b;->d:[I

    .line 54
    .line 55
    aget v7, v5, v0

    .line 56
    .line 57
    if-nez v7, :cond_4

    .line 58
    .line 59
    aput v2, v5, v1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    if-gez v7, :cond_5

    .line 63
    .line 64
    aput v6, v5, v1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    iget-object v5, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 68
    .line 69
    add-int/lit8 v8, v7, -0x1

    .line 70
    .line 71
    aget-object v5, v5, v8

    .line 72
    .line 73
    invoke-virtual {p0, v5}, Ln9/b;->g(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    sub-int/2addr v5, v0

    .line 78
    iget-object v9, p0, Ln9/b;->d:[I

    .line 79
    .line 80
    array-length v10, v9

    .line 81
    add-int/2addr v10, v6

    .line 82
    and-int/2addr v5, v10

    .line 83
    if-lt v5, v4, :cond_6

    .line 84
    .line 85
    aput v7, v9, v1

    .line 86
    .line 87
    iget-object v4, p0, Ln9/b;->c:[I

    .line 88
    .line 89
    aput v1, v4, v8

    .line 90
    .line 91
    :goto_1
    move v1, v0

    .line 92
    const/4 v4, 0x0

    .line 93
    :cond_6
    add-int/2addr v3, v6

    .line 94
    if-gez v3, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Ln9/b;->d:[I

    .line 97
    .line 98
    aput v6, v0, v1

    .line 99
    .line 100
    :goto_2
    iget-object v0, p0, Ln9/b;->c:[I

    .line 101
    .line 102
    aput v6, v0, p1

    .line 103
    .line 104
    iget p1, p0, Ln9/b;->h:I

    .line 105
    .line 106
    add-int/2addr p1, v6

    .line 107
    iput p1, p0, Ln9/b;->h:I

    .line 108
    .line 109
    return-void
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

    iget-object v0, p0, Ln9/b;->j:Ln9/d;

    if-nez v0, :cond_0

    new-instance v0, Ln9/d;

    invoke-direct {v0, p0}, Ln9/d;-><init>(Ln9/b;)V

    iput-object v0, p0, Ln9/b;->j:Ln9/d;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln9/b;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ln9/b;->a(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    invoke-static {v0}, Lc5/w;->b(I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    :goto_0
    if-gez p1, :cond_1

    .line 23
    .line 24
    neg-int p1, p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    aget-object v1, v0, p1

    .line 28
    .line 29
    aput-object p2, v0, p1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    aput-object p2, v0, p1

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ln9/b;->b()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Ln9/b;->e(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Ln9/b;->a(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, p0, Ln9/b;->a:[Ljava/lang/Object;

    .line 57
    .line 58
    array-length v2, v2

    .line 59
    invoke-static {v2}, Lc5/w;->b(I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 64
    .line 65
    :goto_1
    if-ltz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    aput-object v0, v2, v1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    neg-int v1, v1

    .line 75
    add-int/lit8 v1, v1, -0x1

    .line 76
    .line 77
    aget-object v3, v2, v1

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_1

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    aput-object v0, v2, v1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    :goto_2
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln9/b;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ln9/b;->f(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ln9/b;->j(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x0

    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object v1, p0, Ln9/b;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    aget-object v2, v1, p1

    .line 25
    .line 26
    aput-object v0, v1, p1

    .line 27
    .line 28
    return-object v2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Ln9/b;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget v1, p0, Ln9/b;->h:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x3

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "{"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v1, Ln9/b$b;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Ln9/b$b;-><init>(Ln9/b;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {v1}, Ln9/b$d;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    const-string v3, ", "

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v3, v1, Ln9/b$d;->b:I

    .line 37
    .line 38
    iget-object v4, v1, Ln9/b$d;->a:Ln9/b;

    .line 39
    .line 40
    iget v5, v4, Ln9/b;->f:I

    .line 41
    .line 42
    if-ge v3, v5, :cond_3

    .line 43
    .line 44
    add-int/lit8 v5, v3, 0x1

    .line 45
    .line 46
    iput v5, v1, Ln9/b$d;->b:I

    .line 47
    .line 48
    iput v3, v1, Ln9/b$d;->c:I

    .line 49
    .line 50
    iget-object v5, v4, Ln9/b;->a:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v3, v5, v3

    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const-string v6, "(this Map)"

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :goto_1
    const/16 v3, 0x3d

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, v4, Ln9/b;->b:[Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget v5, v1, Ln9/b$d;->c:I

    .line 80
    .line 81
    aget-object v3, v3, v5

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {v1}, Ln9/b$d;->a()V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_4
    const-string v1, "}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "sb.toString()"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ln9/b;->k:Ln9/e;

    if-nez v0, :cond_0

    new-instance v0, Ln9/e;

    invoke-direct {v0, p0}, Ln9/e;-><init>(Ln9/b;)V

    iput-object v0, p0, Ln9/b;->k:Ln9/e;

    :cond_0
    return-object v0
.end method
