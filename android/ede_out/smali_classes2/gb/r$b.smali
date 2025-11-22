.class public final Lgb/r$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/r;",
        "Lgb/r$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lgb/r$c;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/p;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h$b;-><init>()V

    sget-object v0, Lgb/r$c;->d:Lgb/r$c;

    iput-object v0, p0, Lgb/r$b;->h:Lgb/r$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb/r$b;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb/r$b;->k:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lgb/r$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/r$b;->l()Lgb/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/r;->b()Z

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
    new-instance v0, Lgb/r$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/r$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/r$b;->l()Lgb/r;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/r$b;->n(Lgb/r;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/r$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/r$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/r$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/r$b;->l()Lgb/r;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/r$b;->n(Lgb/r;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/r;

    invoke-virtual {p0, p1}, Lgb/r$b;->n(Lgb/r;)V

    return-object p0
.end method

.method public final l()Lgb/r;
    .locals 5

    .line 1
    new-instance v0, Lgb/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/r;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/r$b;->d:I

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
    iget v2, p0, Lgb/r$b;->e:I

    .line 16
    .line 17
    iput v2, v0, Lgb/r;->d:I

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
    iget v2, p0, Lgb/r$b;->f:I

    .line 27
    .line 28
    iput v2, v0, Lgb/r;->e:I

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
    iget-boolean v2, p0, Lgb/r$b;->g:Z

    .line 38
    .line 39
    iput-boolean v2, v0, Lgb/r;->f:Z

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
    iget-object v2, p0, Lgb/r$b;->h:Lgb/r$c;

    .line 50
    .line 51
    iput-object v2, v0, Lgb/r;->g:Lgb/r$c;

    .line 52
    .line 53
    const/16 v2, 0x10

    .line 54
    .line 55
    and-int/2addr v1, v2

    .line 56
    if-ne v1, v2, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 65
    .line 66
    iget v1, p0, Lgb/r$b;->d:I

    .line 67
    .line 68
    and-int/lit8 v1, v1, -0x11

    .line 69
    .line 70
    iput v1, p0, Lgb/r$b;->d:I

    .line 71
    .line 72
    :cond_4
    iget-object v1, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 73
    .line 74
    iput-object v1, v0, Lgb/r;->h:Ljava/util/List;

    .line 75
    .line 76
    iget v1, p0, Lgb/r$b;->d:I

    .line 77
    .line 78
    const/16 v2, 0x20

    .line 79
    .line 80
    and-int/2addr v1, v2

    .line 81
    if-ne v1, v2, :cond_5

    .line 82
    .line 83
    iget-object v1, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 90
    .line 91
    iget v1, p0, Lgb/r$b;->d:I

    .line 92
    .line 93
    and-int/lit8 v1, v1, -0x21

    .line 94
    .line 95
    iput v1, p0, Lgb/r$b;->d:I

    .line 96
    .line 97
    :cond_5
    iget-object v1, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 98
    .line 99
    iput-object v1, v0, Lgb/r;->j:Ljava/util/List;

    .line 100
    .line 101
    iput v3, v0, Lgb/r;->c:I

    .line 102
    .line 103
    return-object v0
.end method

.method public final n(Lgb/r;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/r;->n:Lgb/r;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/r;->c:I

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
    iget v1, p1, Lgb/r;->d:I

    .line 20
    .line 21
    iget v4, p0, Lgb/r$b;->d:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/r$b;->d:I

    .line 25
    .line 26
    iput v1, p0, Lgb/r$b;->e:I

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
    iget v1, p1, Lgb/r;->e:I

    .line 39
    .line 40
    iget v5, p0, Lgb/r$b;->d:I

    .line 41
    .line 42
    or-int/2addr v4, v5

    .line 43
    iput v4, p0, Lgb/r$b;->d:I

    .line 44
    .line 45
    iput v1, p0, Lgb/r$b;->f:I

    .line 46
    .line 47
    :cond_4
    and-int/lit8 v1, v0, 0x4

    .line 48
    .line 49
    const/4 v4, 0x4

    .line 50
    if-ne v1, v4, :cond_5

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_5
    const/4 v1, 0x0

    .line 55
    :goto_2
    if-eqz v1, :cond_6

    .line 56
    .line 57
    iget-boolean v1, p1, Lgb/r;->f:Z

    .line 58
    .line 59
    iget v5, p0, Lgb/r$b;->d:I

    .line 60
    .line 61
    or-int/2addr v4, v5

    .line 62
    iput v4, p0, Lgb/r$b;->d:I

    .line 63
    .line 64
    iput-boolean v1, p0, Lgb/r$b;->g:Z

    .line 65
    .line 66
    :cond_6
    const/16 v1, 0x8

    .line 67
    .line 68
    and-int/2addr v0, v1

    .line 69
    if-ne v0, v1, :cond_7

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    :cond_7
    if-eqz v2, :cond_8

    .line 73
    .line 74
    iget-object v0, p1, Lgb/r;->g:Lgb/r$c;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lgb/r$b;->d:I

    .line 80
    .line 81
    or-int/2addr v1, v2

    .line 82
    iput v1, p0, Lgb/r$b;->d:I

    .line 83
    .line 84
    iput-object v0, p0, Lgb/r$b;->h:Lgb/r$c;

    .line 85
    .line 86
    :cond_8
    iget-object v0, p1, Lgb/r;->h:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_b

    .line 93
    .line 94
    iget-object v0, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    iget-object v0, p1, Lgb/r;->h:Ljava/util/List;

    .line 103
    .line 104
    iput-object v0, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 105
    .line 106
    iget v0, p0, Lgb/r$b;->d:I

    .line 107
    .line 108
    and-int/lit8 v0, v0, -0x11

    .line 109
    .line 110
    iput v0, p0, Lgb/r$b;->d:I

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_9
    iget v0, p0, Lgb/r$b;->d:I

    .line 114
    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    and-int/2addr v0, v1

    .line 118
    if-eq v0, v1, :cond_a

    .line 119
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    .line 121
    .line 122
    iget-object v2, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 123
    .line 124
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 128
    .line 129
    iget v0, p0, Lgb/r$b;->d:I

    .line 130
    .line 131
    or-int/2addr v0, v1

    .line 132
    iput v0, p0, Lgb/r$b;->d:I

    .line 133
    .line 134
    :cond_a
    iget-object v0, p0, Lgb/r$b;->j:Ljava/util/List;

    .line 135
    .line 136
    iget-object v1, p1, Lgb/r;->h:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    :cond_b
    :goto_3
    iget-object v0, p1, Lgb/r;->j:Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_e

    .line 148
    .line 149
    iget-object v0, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    iget-object v0, p1, Lgb/r;->j:Ljava/util/List;

    .line 158
    .line 159
    iput-object v0, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 160
    .line 161
    iget v0, p0, Lgb/r$b;->d:I

    .line 162
    .line 163
    and-int/lit8 v0, v0, -0x21

    .line 164
    .line 165
    iput v0, p0, Lgb/r$b;->d:I

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_c
    iget v0, p0, Lgb/r$b;->d:I

    .line 169
    .line 170
    const/16 v1, 0x20

    .line 171
    .line 172
    and-int/2addr v0, v1

    .line 173
    if-eq v0, v1, :cond_d

    .line 174
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    .line 176
    .line 177
    iget-object v2, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 178
    .line 179
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    iput-object v0, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 183
    .line 184
    iget v0, p0, Lgb/r$b;->d:I

    .line 185
    .line 186
    or-int/2addr v0, v1

    .line 187
    iput v0, p0, Lgb/r$b;->d:I

    .line 188
    .line 189
    :cond_d
    iget-object v0, p0, Lgb/r$b;->k:Ljava/util/List;

    .line 190
    .line 191
    iget-object v1, p1, Lgb/r;->j:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    :cond_e
    :goto_4
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 200
    .line 201
    iget-object p1, p1, Lgb/r;->b:Lmb/c;

    .line 202
    .line 203
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 208
    .line 209
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
    sget-object v0, Lgb/r;->p:Lgb/r$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/r;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/r;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/r$b;->n(Lgb/r;)V

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
    check-cast p2, Lgb/r;
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
    invoke-virtual {p0, p2}, Lgb/r$b;->n(Lgb/r;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
