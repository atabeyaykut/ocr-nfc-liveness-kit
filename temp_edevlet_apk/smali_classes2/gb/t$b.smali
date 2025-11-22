.class public final Lgb/t$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/t;",
        "Lgb/t$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Lgb/p;

.field public h:I

.field public j:Lgb/p;

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/h$b;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgb/p;->w:Lgb/p;

    .line 5
    .line 6
    iput-object v0, p0, Lgb/t$b;->g:Lgb/p;

    .line 7
    .line 8
    iput-object v0, p0, Lgb/t$b;->j:Lgb/p;

    .line 9
    .line 10
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

    invoke-virtual {p0, p1, p2}, Lgb/t$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/t$b;->l()Lgb/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/t;->b()Z

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
    new-instance v0, Lgb/t$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/t$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/t$b;->l()Lgb/t;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/t$b;->n(Lgb/t;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/t$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/t$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/t$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/t$b;->l()Lgb/t;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/t$b;->n(Lgb/t;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/t;

    invoke-virtual {p0, p1}, Lgb/t$b;->n(Lgb/t;)V

    return-object p0
.end method

.method public final l()Lgb/t;
    .locals 5

    .line 1
    new-instance v0, Lgb/t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/t;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/t$b;->d:I

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
    iget v2, p0, Lgb/t$b;->e:I

    .line 16
    .line 17
    iput v2, v0, Lgb/t;->d:I

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
    iget v2, p0, Lgb/t$b;->f:I

    .line 27
    .line 28
    iput v2, v0, Lgb/t;->e:I

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
    iget-object v2, p0, Lgb/t$b;->g:Lgb/p;

    .line 38
    .line 39
    iput-object v2, v0, Lgb/t;->f:Lgb/p;

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
    iget v2, p0, Lgb/t$b;->h:I

    .line 50
    .line 51
    iput v2, v0, Lgb/t;->g:I

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
    iget-object v2, p0, Lgb/t$b;->j:Lgb/p;

    .line 62
    .line 63
    iput-object v2, v0, Lgb/t;->h:Lgb/p;

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
    iget v1, p0, Lgb/t$b;->k:I

    .line 73
    .line 74
    iput v1, v0, Lgb/t;->j:I

    .line 75
    .line 76
    iput v3, v0, Lgb/t;->c:I

    .line 77
    .line 78
    return-object v0
.end method

.method public final n(Lgb/t;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/t;->m:Lgb/t;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/t;->c:I

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
    iget v1, p1, Lgb/t;->d:I

    .line 20
    .line 21
    iget v4, p0, Lgb/t$b;->d:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/t$b;->d:I

    .line 25
    .line 26
    iput v1, p0, Lgb/t$b;->e:I

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
    iget v1, p1, Lgb/t;->e:I

    .line 39
    .line 40
    iget v5, p0, Lgb/t$b;->d:I

    .line 41
    .line 42
    or-int/2addr v4, v5

    .line 43
    iput v4, p0, Lgb/t$b;->d:I

    .line 44
    .line 45
    iput v1, p0, Lgb/t$b;->f:I

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
    if-eqz v0, :cond_7

    .line 55
    .line 56
    iget-object v0, p1, Lgb/t;->f:Lgb/p;

    .line 57
    .line 58
    iget v4, p0, Lgb/t$b;->d:I

    .line 59
    .line 60
    and-int/2addr v4, v1

    .line 61
    if-ne v4, v1, :cond_6

    .line 62
    .line 63
    iget-object v4, p0, Lgb/t$b;->g:Lgb/p;

    .line 64
    .line 65
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 66
    .line 67
    if-eq v4, v5, :cond_6

    .line 68
    .line 69
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_6
    iput-object v0, p0, Lgb/t$b;->g:Lgb/p;

    .line 81
    .line 82
    iget v0, p0, Lgb/t$b;->d:I

    .line 83
    .line 84
    or-int/2addr v0, v1

    .line 85
    iput v0, p0, Lgb/t$b;->d:I

    .line 86
    .line 87
    :cond_7
    iget v0, p1, Lgb/t;->c:I

    .line 88
    .line 89
    and-int/lit8 v1, v0, 0x8

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    if-ne v1, v4, :cond_8

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_8
    const/4 v1, 0x0

    .line 98
    :goto_3
    if-eqz v1, :cond_9

    .line 99
    .line 100
    iget v1, p1, Lgb/t;->g:I

    .line 101
    .line 102
    iget v5, p0, Lgb/t$b;->d:I

    .line 103
    .line 104
    or-int/2addr v4, v5

    .line 105
    iput v4, p0, Lgb/t$b;->d:I

    .line 106
    .line 107
    iput v1, p0, Lgb/t$b;->h:I

    .line 108
    .line 109
    :cond_9
    const/16 v1, 0x10

    .line 110
    .line 111
    and-int/2addr v0, v1

    .line 112
    if-ne v0, v1, :cond_a

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    goto :goto_4

    .line 116
    :cond_a
    const/4 v0, 0x0

    .line 117
    :goto_4
    if-eqz v0, :cond_c

    .line 118
    .line 119
    iget-object v0, p1, Lgb/t;->h:Lgb/p;

    .line 120
    .line 121
    iget v4, p0, Lgb/t$b;->d:I

    .line 122
    .line 123
    and-int/2addr v4, v1

    .line 124
    if-ne v4, v1, :cond_b

    .line 125
    .line 126
    iget-object v4, p0, Lgb/t$b;->j:Lgb/p;

    .line 127
    .line 128
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 129
    .line 130
    if-eq v4, v5, :cond_b

    .line 131
    .line 132
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :cond_b
    iput-object v0, p0, Lgb/t$b;->j:Lgb/p;

    .line 144
    .line 145
    iget v0, p0, Lgb/t$b;->d:I

    .line 146
    .line 147
    or-int/2addr v0, v1

    .line 148
    iput v0, p0, Lgb/t$b;->d:I

    .line 149
    .line 150
    :cond_c
    iget v0, p1, Lgb/t;->c:I

    .line 151
    .line 152
    const/16 v1, 0x20

    .line 153
    .line 154
    and-int/2addr v0, v1

    .line 155
    if-ne v0, v1, :cond_d

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    :cond_d
    if-eqz v2, :cond_e

    .line 159
    .line 160
    iget v0, p1, Lgb/t;->j:I

    .line 161
    .line 162
    iget v2, p0, Lgb/t$b;->d:I

    .line 163
    .line 164
    or-int/2addr v1, v2

    .line 165
    iput v1, p0, Lgb/t$b;->d:I

    .line 166
    .line 167
    iput v0, p0, Lgb/t$b;->k:I

    .line 168
    .line 169
    :cond_e
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 173
    .line 174
    iget-object p1, p1, Lgb/t;->b:Lmb/c;

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 181
    .line 182
    return-void
.end method

.method public final p(Lmb/d;Lmb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lgb/t;->n:Lgb/t$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/t;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/t;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/t$b;->n(Lgb/t;)V

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
    check-cast p2, Lgb/t;
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
    invoke-virtual {p0, p2}, Lgb/t$b;->n(Lgb/t;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
