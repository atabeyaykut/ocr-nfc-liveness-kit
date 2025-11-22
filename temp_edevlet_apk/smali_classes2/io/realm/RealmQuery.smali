.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/internal/Table;

.field public final b:Lio/realm/g0;

.field public final c:Lio/realm/internal/TableQuery;

.field public final d:Lio/realm/x0;

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Lio/realm/g0;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/g0;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 5
    .line 6
    iput-object p2, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    .line 7
    .line 8
    const-class v0, Lio/realm/s0;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Lio/realm/RealmQuery;->f:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lio/realm/g0;->j:Lio/realm/u;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lio/realm/z0;->b(Ljava/lang/Class;)Lio/realm/x0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lio/realm/RealmQuery;->d:Lio/realm/x0;

    .line 27
    .line 28
    iget-object p1, p1, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 29
    .line 30
    iput-object p1, p0, Lio/realm/RealmQuery;->a:Lio/realm/internal/Table;

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/realm/internal/Table;->y()Lio/realm/internal/TableQuery;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 40
    .line 41
    const-string p2, "Queries on primitive lists are not yet supported"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 7
    .line 8
    iget-object v0, v0, Lio/realm/z0;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 9
    .line 10
    new-instance v1, Lio/realm/h0;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lio/realm/z;

    .line 15
    .line 16
    invoke-direct {p1}, Lio/realm/z;-><init>()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lio/realm/f;

    .line 21
    .line 22
    invoke-direct {v2, p1}, Lio/realm/f;-><init>(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v2

    .line 26
    :goto_0
    invoke-direct {v1, p1}, Lio/realm/h0;-><init>(Lio/realm/k0;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 30
    .line 31
    const-string v2, "isFavorite"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v2, v1}, Lio/realm/internal/TableQuery;->a(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/h0;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final b(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 7
    .line 8
    iget-object v0, v0, Lio/realm/z0;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 9
    .line 10
    new-instance v1, Lio/realm/h0;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lio/realm/z;

    .line 15
    .line 16
    invoke-direct {p1}, Lio/realm/z;-><init>()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lio/realm/w;

    .line 21
    .line 22
    invoke-direct {v2, p1}, Lio/realm/w;-><init>(Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v2

    .line 26
    :goto_0
    invoke-direct {v1, p1}, Lio/realm/h0;-><init>(Lio/realm/k0;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 30
    .line 31
    invoke-virtual {p1, v0, p2, v1}, Lio/realm/internal/TableQuery;->a(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/h0;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/realm/h0;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    new-instance p2, Lio/realm/z;

    .line 11
    .line 12
    invoke-direct {p2}, Lio/realm/z;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Lio/realm/c1;

    .line 17
    .line 18
    invoke-direct {v2, p2}, Lio/realm/c1;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object p2, v2

    .line 22
    :goto_0
    invoke-direct {v1, p2}, Lio/realm/h0;-><init>(Lio/realm/k0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 26
    .line 27
    .line 28
    iget-object p2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 29
    .line 30
    iget-object p2, p2, Lio/realm/z0;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 31
    .line 32
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 33
    .line 34
    invoke-virtual {v0, p2, p1, v1}, Lio/realm/internal/TableQuery;->a(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/h0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final d()Lio/realm/y0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/y0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/realm/a;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 10
    .line 11
    sget v2, Lio/realm/internal/OsResults;->h:I

    .line 12
    .line 13
    iget-object v2, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 14
    .line 15
    invoke-virtual {v2}, Lio/realm/internal/TableQuery;->j()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v5, v2, Lio/realm/internal/TableQuery;->b:J

    .line 23
    .line 24
    invoke-static {v3, v4, v5, v6}, Lio/realm/internal/OsResults;->nativeCreateResults(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    new-instance v5, Lio/realm/internal/OsResults;

    .line 29
    .line 30
    iget-object v2, v2, Lio/realm/internal/TableQuery;->a:Lio/realm/internal/Table;

    .line 31
    .line 32
    invoke-direct {v5, v1, v2, v3, v4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lio/realm/y0;

    .line 36
    .line 37
    iget-object v2, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-direct {v1, v0, v5, v2}, Lio/realm/y0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lio/realm/d0;->a:Lio/realm/a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v1, Lio/realm/d0;->d:Lio/realm/internal/OsResults;

    .line 48
    .line 49
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->e()V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public final e()Lio/realm/s0;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/realm/a;->a()V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lio/realm/RealmQuery;->f:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    iget-object v1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->b()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-gez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/a;->f(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/s0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    return-object v2
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "LIMIT(6)"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v1}, Lio/realm/internal/TableQuery;->h(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/Number;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/realm/a;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/realm/RealmQuery;->d:Lio/realm/x0;

    .line 10
    .line 11
    iget-object v0, v0, Lio/realm/x0;->c:Lio/realm/internal/c;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lio/realm/internal/c;->e(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-ltz v4, :cond_4

    .line 22
    .line 23
    sget-object v2, Lio/realm/RealmQuery$a;->a:[I

    .line 24
    .line 25
    iget-object v3, p0, Lio/realm/RealmQuery;->a:Lio/realm/internal/Table;

    .line 26
    .line 27
    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    aget v2, v2, v3

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    iget-object v4, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 39
    .line 40
    if-eq v2, v3, :cond_3

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    if-eq v2, v5, :cond_2

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    if-eq v2, v6, :cond_1

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    if-ne v2, v6, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4, v0, v1}, Lio/realm/internal/TableQuery;->c(J)Lorg/bson/types/Decimal128;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    new-array v2, v5, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    aput-object p1, v2, v4

    .line 64
    .line 65
    const-string p1, "int, float or double"

    .line 66
    .line 67
    aput-object p1, v2, v3

    .line 68
    .line 69
    const-string p1, "Field \'%s\': type mismatch - %s expected."

    .line 70
    .line 71
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    invoke-virtual {v4, v0, v1}, Lio/realm/internal/TableQuery;->d(J)Ljava/lang/Double;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_2
    invoke-virtual {v4, v0, v1}, Lio/realm/internal/TableQuery;->e(J)Ljava/lang/Float;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_3
    invoke-virtual {v4, v0, v1}, Lio/realm/internal/TableQuery;->f(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v1, "Field does not exist: "

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    new-array p1, v1, [I

    .line 16
    .line 17
    aput v1, p1, v3

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 23
    .line 24
    iget-object v0, v0, Lio/realm/z0;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 25
    .line 26
    iget-object v4, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v6, "SORT("

    .line 34
    .line 35
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    aget-object v2, v2, v3

    .line 39
    .line 40
    const-string v6, " "

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v7, "\\ "

    .line 47
    .line 48
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    aget p1, p1, v3

    .line 59
    .line 60
    if-ne p1, v1, :cond_1

    .line 61
    .line 62
    const-string p1, "ASC"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-string p1, "DESC"

    .line 66
    .line 67
    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ")"

    .line 71
    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v4, v0, p1}, Lio/realm/internal/TableQuery;->h(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
