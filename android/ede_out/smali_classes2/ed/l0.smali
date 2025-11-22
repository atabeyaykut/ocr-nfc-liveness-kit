.class public final Led/l0;
.super Led/k;
.source "SourceFile"


# static fields
.field public static final e:Led/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final b:Led/z;

.field public final c:Led/k;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Led/z;",
            "Lfd/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Led/z;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    invoke-static {v1, v0}, Led/z$a;->a(Ljava/lang/String;Z)Led/z;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Led/l0;->e:Led/z;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Led/z;Led/t;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Led/k;-><init>()V

    iput-object p1, p0, Led/l0;->b:Led/z;

    iput-object p2, p0, Led/l0;->c:Led/k;

    iput-object p3, p0, Led/l0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Led/z;)Led/h0;
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip file systems are read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Led/z;Led/z;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Led/z;)V
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip file systems are read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Led/z;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip file systems are read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Led/z;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Led/z;",
            ")",
            "Ljava/util/List<",
            "Led/z;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Led/l0;->e:Led/z;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, v1}, Lfd/l;->b(Led/z;Led/z;Z)Led/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Led/l0;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lfd/f;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object p1, v0, Lfd/f;->h:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v1, "not a directory: "

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final i(Led/z;)Led/j;
    .locals 11

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Led/l0;->e:Led/z;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, v1}, Lfd/l;->b(Led/z;Led/z;Z)Led/z;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Led/l0;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lfd/f;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v9, Led/j;

    .line 29
    .line 30
    iget-boolean v3, p1, Lfd/f;->b:Z

    .line 31
    .line 32
    xor-int/lit8 v2, v3, 0x1

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    move-object v5, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-wide v5, p1, Lfd/f;->d:J

    .line 40
    .line 41
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v5, v1

    .line 46
    :goto_0
    const/4 v6, 0x0

    .line 47
    iget-object v7, p1, Lfd/f;->f:Ljava/lang/Long;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v1, v9

    .line 51
    invoke-direct/range {v1 .. v8}, Led/j;-><init>(ZZLed/z;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v1, -0x1

    .line 55
    .line 56
    iget-wide v3, p1, Lfd/f;->g:J

    .line 57
    .line 58
    cmp-long p1, v3, v1

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    return-object v9

    .line 63
    :cond_2
    iget-object p1, p0, Led/l0;->c:Led/k;

    .line 64
    .line 65
    iget-object v1, p0, Led/l0;->b:Led/z;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Led/k;->j(Led/z;)Led/i;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :try_start_0
    invoke-virtual {p1, v3, v4}, Led/i;->d(J)Led/i$a;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Led/v;->b(Led/j0;)Led/d0;

    .line 76
    .line 77
    .line 78
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    move-object v10, v1

    .line 82
    move-object v1, v0

    .line 83
    move-object v0, v10

    .line 84
    :goto_1
    if-nez p1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Led/i;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    move-object v0, p1

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-static {v0, p1}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    if-nez v0, :cond_5

    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v9}, Lfd/j;->e(Led/d0;Led/j;)Led/j;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_5
    throw v0
.end method

.method public final j(Led/z;)Led/i;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Led/z;)Led/h0;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip file systems are read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Led/z;)Led/j0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Led/l0;->e:Led/z;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, v1}, Lfd/l;->b(Led/z;Led/z;Z)Led/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Led/l0;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lfd/f;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    iget-object p1, p0, Led/l0;->c:Led/k;

    .line 27
    .line 28
    iget-object v2, p0, Led/l0;->b:Led/z;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Led/k;->j(Led/z;)Led/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-wide v3, v0, Lfd/f;->g:J

    .line 36
    .line 37
    invoke-virtual {p1, v3, v4}, Led/i;->d(J)Led/i$a;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Led/v;->b(Led/j0;)Led/d0;

    .line 42
    .line 43
    .line 44
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    move-object v4, v3

    .line 46
    move-object v3, v2

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v3

    .line 49
    move-object v4, v2

    .line 50
    :goto_0
    if-nez p1, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Led/i;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    move-object v3, p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {v3, p1}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    if-nez v3, :cond_3

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v2}, Lfd/j;->e(Led/d0;Led/j;)Led/j;

    .line 71
    .line 72
    .line 73
    iget p1, v0, Lfd/f;->e:I

    .line 74
    .line 75
    iget-wide v2, v0, Lfd/f;->d:J

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    new-instance p1, Lfd/b;

    .line 80
    .line 81
    invoke-direct {p1, v4, v2, v3, v1}, Lfd/b;-><init>(Led/j0;JZ)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    new-instance p1, Led/q;

    .line 86
    .line 87
    new-instance v5, Lfd/b;

    .line 88
    .line 89
    iget-wide v6, v0, Lfd/f;->c:J

    .line 90
    .line 91
    invoke-direct {v5, v4, v6, v7, v1}, Lfd/b;-><init>(Led/j0;JZ)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/util/zip/Inflater;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 97
    .line 98
    .line 99
    invoke-static {v5}, Led/v;->b(Led/j0;)Led/d0;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {p1, v1, v0}, Led/q;-><init>(Led/d0;Ljava/util/zip/Inflater;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lfd/b;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-direct {v0, p1, v2, v3, v1}, Lfd/b;-><init>(Led/j0;JZ)V

    .line 110
    .line 111
    .line 112
    move-object p1, v0

    .line 113
    :goto_2
    return-object p1

    .line 114
    :cond_3
    throw v3

    .line 115
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 116
    .line 117
    const-string v1, "no such file: "

    .line 118
    .line 119
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method
