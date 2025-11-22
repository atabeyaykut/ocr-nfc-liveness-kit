.class public final Lgb/u$b;
.super Lmb/h$a;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$a<",
        "Lgb/u;",
        "Lgb/u$b;",
        ">;",
        "Lmb/q;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lgb/u$c;

.field public f:I

.field public g:I

.field public h:Lgb/u$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h$a;-><init>()V

    sget-object v0, Lgb/u$c;->c:Lgb/u$c;

    iput-object v0, p0, Lgb/u$b;->e:Lgb/u$c;

    sget-object v0, Lgb/u$d;->b:Lgb/u$d;

    iput-object v0, p0, Lgb/u$b;->h:Lgb/u$d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic E(Lmb/d;Lmb/f;)Lmb/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/u$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/u$b;->k()Lgb/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/u;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lc0/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lc0/a;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lgb/u$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/u$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/u$b;->k()Lgb/u;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/u$b;->l(Lgb/u;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic h(Lmb/d;Lmb/f;)Lmb/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/u$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/u$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/u$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/u$b;->k()Lgb/u;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/u$b;->l(Lgb/u;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/u;

    invoke-virtual {p0, p1}, Lgb/u$b;->l(Lgb/u;)V

    return-object p0
.end method

.method public final k()Lgb/u;
    .locals 5

    .line 1
    new-instance v0, Lgb/u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/u;-><init>(Lmb/h$a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/u$b;->b:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lgb/u$b;->c:I

    .line 16
    .line 17
    iput v2, v0, Lgb/u;->c:I

    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x2

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v2, v4, :cond_1

    .line 23
    .line 24
    or-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    :cond_1
    iget v2, p0, Lgb/u$b;->d:I

    .line 27
    .line 28
    iput v2, v0, Lgb/u;->d:I

    .line 29
    .line 30
    and-int/lit8 v2, v1, 0x4

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne v2, v4, :cond_2

    .line 34
    .line 35
    or-int/lit8 v3, v3, 0x4

    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lgb/u$b;->e:Lgb/u$c;

    .line 38
    .line 39
    iput-object v2, v0, Lgb/u;->e:Lgb/u$c;

    .line 40
    .line 41
    and-int/lit8 v2, v1, 0x8

    .line 42
    .line 43
    const/16 v4, 0x8

    .line 44
    .line 45
    if-ne v2, v4, :cond_3

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x8

    .line 48
    .line 49
    :cond_3
    iget v2, p0, Lgb/u$b;->f:I

    .line 50
    .line 51
    iput v2, v0, Lgb/u;->f:I

    .line 52
    .line 53
    and-int/lit8 v2, v1, 0x10

    .line 54
    .line 55
    const/16 v4, 0x10

    .line 56
    .line 57
    if-ne v2, v4, :cond_4

    .line 58
    .line 59
    or-int/lit8 v3, v3, 0x10

    .line 60
    .line 61
    :cond_4
    iget v2, p0, Lgb/u$b;->g:I

    .line 62
    .line 63
    iput v2, v0, Lgb/u;->g:I

    .line 64
    .line 65
    const/16 v2, 0x20

    .line 66
    .line 67
    and-int/2addr v1, v2

    .line 68
    if-ne v1, v2, :cond_5

    .line 69
    .line 70
    or-int/lit8 v3, v3, 0x20

    .line 71
    .line 72
    :cond_5
    iget-object v1, p0, Lgb/u$b;->h:Lgb/u$d;

    .line 73
    .line 74
    iput-object v1, v0, Lgb/u;->h:Lgb/u$d;

    .line 75
    .line 76
    iput v3, v0, Lgb/u;->b:I

    .line 77
    .line 78
    return-object v0
.end method

.method public final l(Lgb/u;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/u;->l:Lgb/u;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/u;->b:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget v1, p1, Lgb/u;->c:I

    .line 20
    .line 21
    iget v4, p0, Lgb/u$b;->b:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/u$b;->b:I

    .line 25
    .line 26
    iput v1, p0, Lgb/u$b;->c:I

    .line 27
    .line 28
    :cond_2
    and-int/lit8 v1, v0, 0x2

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-ne v1, v4, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget v1, p1, Lgb/u;->d:I

    .line 39
    .line 40
    iget v5, p0, Lgb/u$b;->b:I

    .line 41
    .line 42
    or-int/2addr v4, v5

    .line 43
    iput v4, p0, Lgb/u$b;->b:I

    .line 44
    .line 45
    iput v1, p0, Lgb/u$b;->d:I

    .line 46
    .line 47
    :cond_4
    const/4 v1, 0x4

    .line 48
    and-int/2addr v0, v1

    .line 49
    if-ne v0, v1, :cond_5

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_5
    const/4 v0, 0x0

    .line 54
    :goto_2
    if-eqz v0, :cond_6

    .line 55
    .line 56
    iget-object v0, p1, Lgb/u;->e:Lgb/u$c;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v4, p0, Lgb/u$b;->b:I

    .line 62
    .line 63
    or-int/2addr v1, v4

    .line 64
    iput v1, p0, Lgb/u$b;->b:I

    .line 65
    .line 66
    iput-object v0, p0, Lgb/u$b;->e:Lgb/u$c;

    .line 67
    .line 68
    :cond_6
    iget v0, p1, Lgb/u;->b:I

    .line 69
    .line 70
    and-int/lit8 v1, v0, 0x8

    .line 71
    .line 72
    const/16 v4, 0x8

    .line 73
    .line 74
    if-ne v1, v4, :cond_7

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_7
    const/4 v1, 0x0

    .line 79
    :goto_3
    if-eqz v1, :cond_8

    .line 80
    .line 81
    iget v1, p1, Lgb/u;->f:I

    .line 82
    .line 83
    iget v5, p0, Lgb/u$b;->b:I

    .line 84
    .line 85
    or-int/2addr v4, v5

    .line 86
    iput v4, p0, Lgb/u$b;->b:I

    .line 87
    .line 88
    iput v1, p0, Lgb/u$b;->f:I

    .line 89
    .line 90
    :cond_8
    and-int/lit8 v1, v0, 0x10

    .line 91
    .line 92
    const/16 v4, 0x10

    .line 93
    .line 94
    if-ne v1, v4, :cond_9

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    goto :goto_4

    .line 98
    :cond_9
    const/4 v1, 0x0

    .line 99
    :goto_4
    if-eqz v1, :cond_a

    .line 100
    .line 101
    iget v1, p1, Lgb/u;->g:I

    .line 102
    .line 103
    iget v5, p0, Lgb/u$b;->b:I

    .line 104
    .line 105
    or-int/2addr v4, v5

    .line 106
    iput v4, p0, Lgb/u$b;->b:I

    .line 107
    .line 108
    iput v1, p0, Lgb/u$b;->g:I

    .line 109
    .line 110
    :cond_a
    const/16 v1, 0x20

    .line 111
    .line 112
    and-int/2addr v0, v1

    .line 113
    if-ne v0, v1, :cond_b

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    :cond_b
    if-eqz v2, :cond_c

    .line 117
    .line 118
    iget-object v0, p1, Lgb/u;->h:Lgb/u$d;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lgb/u$b;->b:I

    .line 124
    .line 125
    or-int/2addr v1, v2

    .line 126
    iput v1, p0, Lgb/u$b;->b:I

    .line 127
    .line 128
    iput-object v0, p0, Lgb/u$b;->h:Lgb/u$d;

    .line 129
    .line 130
    :cond_c
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 131
    .line 132
    iget-object p1, p1, Lgb/u;->a:Lmb/c;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 139
    .line 140
    return-void
.end method

.method public final n(Lmb/d;Lmb/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p2, Lgb/u;->m:Lgb/u$a;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Lgb/u;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lgb/u;-><init>(Lmb/d;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lgb/u$b;->l(Lgb/u;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    :try_start_1
    iget-object p2, p1, Lmb/j;->a:Lmb/p;

    .line 20
    .line 21
    check-cast p2, Lgb/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    const/4 p2, 0x0

    .line 27
    :goto_2
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lgb/u$b;->l(Lgb/u;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
