.class public final Lgb/l$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/l;",
        "Lgb/l$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Lgb/o;

.field public f:Lgb/n;

.field public g:Lgb/k;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/h$b;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgb/o;->e:Lgb/o;

    .line 5
    .line 6
    iput-object v0, p0, Lgb/l$b;->e:Lgb/o;

    .line 7
    .line 8
    sget-object v0, Lgb/n;->e:Lgb/n;

    .line 9
    .line 10
    iput-object v0, p0, Lgb/l$b;->f:Lgb/n;

    .line 11
    .line 12
    sget-object v0, Lgb/k;->l:Lgb/k;

    .line 13
    .line 14
    iput-object v0, p0, Lgb/l$b;->g:Lgb/k;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 21
    .line 22
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

    invoke-virtual {p0, p1, p2}, Lgb/l$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/l$b;->l()Lgb/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/l;->b()Z

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
    new-instance v0, Lgb/l$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/l$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/l$b;->l()Lgb/l;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/l$b;->n(Lgb/l;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/l$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/l$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/l$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/l$b;->l()Lgb/l;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/l$b;->n(Lgb/l;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/l;

    invoke-virtual {p0, p1}, Lgb/l$b;->n(Lgb/l;)V

    return-object p0
.end method

.method public final l()Lgb/l;
    .locals 5

    .line 1
    new-instance v0, Lgb/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/l;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/l$b;->d:I

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
    iget-object v2, p0, Lgb/l$b;->e:Lgb/o;

    .line 16
    .line 17
    iput-object v2, v0, Lgb/l;->d:Lgb/o;

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
    iget-object v2, p0, Lgb/l$b;->f:Lgb/n;

    .line 27
    .line 28
    iput-object v2, v0, Lgb/l;->e:Lgb/n;

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
    iget-object v2, p0, Lgb/l$b;->g:Lgb/k;

    .line 38
    .line 39
    iput-object v2, v0, Lgb/l;->f:Lgb/k;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    and-int/2addr v1, v2

    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 53
    .line 54
    iget v1, p0, Lgb/l$b;->d:I

    .line 55
    .line 56
    and-int/lit8 v1, v1, -0x9

    .line 57
    .line 58
    iput v1, p0, Lgb/l$b;->d:I

    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 61
    .line 62
    iput-object v1, v0, Lgb/l;->g:Ljava/util/List;

    .line 63
    .line 64
    iput v3, v0, Lgb/l;->c:I

    .line 65
    .line 66
    return-object v0
.end method

.method public final n(Lgb/l;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/l;->k:Lgb/l;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/l;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p1, Lgb/l;->d:Lgb/o;

    .line 19
    .line 20
    iget v3, p0, Lgb/l$b;->d:I

    .line 21
    .line 22
    and-int/2addr v3, v1

    .line 23
    if-ne v3, v1, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lgb/l$b;->e:Lgb/o;

    .line 26
    .line 27
    sget-object v4, Lgb/o;->e:Lgb/o;

    .line 28
    .line 29
    if-eq v3, v4, :cond_2

    .line 30
    .line 31
    new-instance v4, Lgb/o$b;

    .line 32
    .line 33
    invoke-direct {v4}, Lgb/o$b;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lgb/o$b;->l(Lgb/o;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v0}, Lgb/o$b;->l(Lgb/o;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lgb/o$b;->k()Lgb/o;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    iput-object v0, p0, Lgb/l$b;->e:Lgb/o;

    .line 47
    .line 48
    iget v0, p0, Lgb/l$b;->d:I

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    iput v0, p0, Lgb/l$b;->d:I

    .line 52
    .line 53
    :cond_3
    iget v0, p1, Lgb/l;->c:I

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    and-int/2addr v0, v3

    .line 57
    if-ne v0, v3, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    const/4 v0, 0x0

    .line 62
    :goto_1
    if-eqz v0, :cond_6

    .line 63
    .line 64
    iget-object v0, p1, Lgb/l;->e:Lgb/n;

    .line 65
    .line 66
    iget v4, p0, Lgb/l$b;->d:I

    .line 67
    .line 68
    and-int/2addr v4, v3

    .line 69
    if-ne v4, v3, :cond_5

    .line 70
    .line 71
    iget-object v4, p0, Lgb/l$b;->f:Lgb/n;

    .line 72
    .line 73
    sget-object v5, Lgb/n;->e:Lgb/n;

    .line 74
    .line 75
    if-eq v4, v5, :cond_5

    .line 76
    .line 77
    new-instance v5, Lgb/n$b;

    .line 78
    .line 79
    invoke-direct {v5}, Lgb/n$b;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v4}, Lgb/n$b;->l(Lgb/n;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v0}, Lgb/n$b;->l(Lgb/n;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Lgb/n$b;->k()Lgb/n;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_5
    iput-object v0, p0, Lgb/l$b;->f:Lgb/n;

    .line 93
    .line 94
    iget v0, p0, Lgb/l$b;->d:I

    .line 95
    .line 96
    or-int/2addr v0, v3

    .line 97
    iput v0, p0, Lgb/l$b;->d:I

    .line 98
    .line 99
    :cond_6
    iget v0, p1, Lgb/l;->c:I

    .line 100
    .line 101
    const/4 v3, 0x4

    .line 102
    and-int/2addr v0, v3

    .line 103
    if-ne v0, v3, :cond_7

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    const/4 v1, 0x0

    .line 107
    :goto_2
    if-eqz v1, :cond_9

    .line 108
    .line 109
    iget-object v0, p1, Lgb/l;->f:Lgb/k;

    .line 110
    .line 111
    iget v1, p0, Lgb/l$b;->d:I

    .line 112
    .line 113
    and-int/2addr v1, v3

    .line 114
    if-ne v1, v3, :cond_8

    .line 115
    .line 116
    iget-object v1, p0, Lgb/l$b;->g:Lgb/k;

    .line 117
    .line 118
    sget-object v2, Lgb/k;->l:Lgb/k;

    .line 119
    .line 120
    if-eq v1, v2, :cond_8

    .line 121
    .line 122
    new-instance v2, Lgb/k$b;

    .line 123
    .line 124
    invoke-direct {v2}, Lgb/k$b;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v1}, Lgb/k$b;->n(Lgb/k;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lgb/k$b;->n(Lgb/k;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lgb/k$b;->l()Lgb/k;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :cond_8
    iput-object v0, p0, Lgb/l$b;->g:Lgb/k;

    .line 138
    .line 139
    iget v0, p0, Lgb/l$b;->d:I

    .line 140
    .line 141
    or-int/2addr v0, v3

    .line 142
    iput v0, p0, Lgb/l$b;->d:I

    .line 143
    .line 144
    :cond_9
    iget-object v0, p1, Lgb/l;->g:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_c

    .line 151
    .line 152
    iget-object v0, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object v0, p1, Lgb/l;->g:Ljava/util/List;

    .line 161
    .line 162
    iput-object v0, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 163
    .line 164
    iget v0, p0, Lgb/l$b;->d:I

    .line 165
    .line 166
    and-int/lit8 v0, v0, -0x9

    .line 167
    .line 168
    iput v0, p0, Lgb/l$b;->d:I

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    iget v0, p0, Lgb/l$b;->d:I

    .line 172
    .line 173
    const/16 v1, 0x8

    .line 174
    .line 175
    and-int/2addr v0, v1

    .line 176
    if-eq v0, v1, :cond_b

    .line 177
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    .line 179
    .line 180
    iget-object v2, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 181
    .line 182
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 186
    .line 187
    iget v0, p0, Lgb/l$b;->d:I

    .line 188
    .line 189
    or-int/2addr v0, v1

    .line 190
    iput v0, p0, Lgb/l$b;->d:I

    .line 191
    .line 192
    :cond_b
    iget-object v0, p0, Lgb/l$b;->h:Ljava/util/List;

    .line 193
    .line 194
    iget-object v1, p1, Lgb/l;->g:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    .line 199
    :cond_c
    :goto_3
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 203
    .line 204
    iget-object p1, p1, Lgb/l;->b:Lmb/c;

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 211
    .line 212
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
    sget-object v0, Lgb/l;->l:Lgb/l$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/l;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/l;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/l$b;->n(Lgb/l;)V

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
    check-cast p2, Lgb/l;
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
    invoke-virtual {p0, p2}, Lgb/l$b;->n(Lgb/l;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
