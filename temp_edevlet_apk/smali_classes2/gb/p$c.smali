.class public final Lgb/p$c;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/p;",
        "Lgb/p$c;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/p$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:Lgb/p;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public p:Lgb/p;

.field public q:I

.field public r:Lgb/p;

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/h$b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 9
    .line 10
    sget-object v0, Lgb/p;->w:Lgb/p;

    .line 11
    .line 12
    iput-object v0, p0, Lgb/p$c;->h:Lgb/p;

    .line 13
    .line 14
    iput-object v0, p0, Lgb/p$c;->p:Lgb/p;

    .line 15
    .line 16
    iput-object v0, p0, Lgb/p$c;->r:Lgb/p;

    .line 17
    .line 18
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

    invoke-virtual {p0, p1, p2}, Lgb/p$c;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/p$c;->l()Lgb/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/p;->b()Z

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
    new-instance v0, Lgb/p$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/p$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/p$c;->l()Lgb/p;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

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

    invoke-virtual {p0, p1, p2}, Lgb/p$c;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/p$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/p$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/p$c;->l()Lgb/p;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/p;

    invoke-virtual {p0, p1}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    return-object p0
.end method

.method public final l()Lgb/p;
    .locals 5

    .line 1
    new-instance v0, Lgb/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/p;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/p$c;->d:I

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
    iget-object v2, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 20
    .line 21
    iget v2, p0, Lgb/p$c;->d:I

    .line 22
    .line 23
    and-int/lit8 v2, v2, -0x2

    .line 24
    .line 25
    iput v2, p0, Lgb/p$c;->d:I

    .line 26
    .line 27
    :cond_0
    iget-object v2, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 28
    .line 29
    iput-object v2, v0, Lgb/p;->d:Ljava/util/List;

    .line 30
    .line 31
    and-int/lit8 v2, v1, 0x2

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v2, v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    :goto_0
    iget-boolean v2, p0, Lgb/p$c;->f:Z

    .line 39
    .line 40
    iput-boolean v2, v0, Lgb/p;->e:Z

    .line 41
    .line 42
    and-int/lit8 v2, v1, 0x4

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    if-ne v2, v4, :cond_2

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x2

    .line 48
    .line 49
    :cond_2
    iget v2, p0, Lgb/p$c;->g:I

    .line 50
    .line 51
    iput v2, v0, Lgb/p;->f:I

    .line 52
    .line 53
    and-int/lit8 v2, v1, 0x8

    .line 54
    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    if-ne v2, v4, :cond_3

    .line 58
    .line 59
    or-int/lit8 v3, v3, 0x4

    .line 60
    .line 61
    :cond_3
    iget-object v2, p0, Lgb/p$c;->h:Lgb/p;

    .line 62
    .line 63
    iput-object v2, v0, Lgb/p;->g:Lgb/p;

    .line 64
    .line 65
    and-int/lit8 v2, v1, 0x10

    .line 66
    .line 67
    const/16 v4, 0x10

    .line 68
    .line 69
    if-ne v2, v4, :cond_4

    .line 70
    .line 71
    or-int/lit8 v3, v3, 0x8

    .line 72
    .line 73
    :cond_4
    iget v2, p0, Lgb/p$c;->j:I

    .line 74
    .line 75
    iput v2, v0, Lgb/p;->h:I

    .line 76
    .line 77
    and-int/lit8 v2, v1, 0x20

    .line 78
    .line 79
    const/16 v4, 0x20

    .line 80
    .line 81
    if-ne v2, v4, :cond_5

    .line 82
    .line 83
    or-int/lit8 v3, v3, 0x10

    .line 84
    .line 85
    :cond_5
    iget v2, p0, Lgb/p$c;->k:I

    .line 86
    .line 87
    iput v2, v0, Lgb/p;->j:I

    .line 88
    .line 89
    and-int/lit8 v2, v1, 0x40

    .line 90
    .line 91
    const/16 v4, 0x40

    .line 92
    .line 93
    if-ne v2, v4, :cond_6

    .line 94
    .line 95
    or-int/lit8 v3, v3, 0x20

    .line 96
    .line 97
    :cond_6
    iget v2, p0, Lgb/p$c;->l:I

    .line 98
    .line 99
    iput v2, v0, Lgb/p;->k:I

    .line 100
    .line 101
    and-int/lit16 v2, v1, 0x80

    .line 102
    .line 103
    const/16 v4, 0x80

    .line 104
    .line 105
    if-ne v2, v4, :cond_7

    .line 106
    .line 107
    or-int/lit8 v3, v3, 0x40

    .line 108
    .line 109
    :cond_7
    iget v2, p0, Lgb/p$c;->m:I

    .line 110
    .line 111
    iput v2, v0, Lgb/p;->l:I

    .line 112
    .line 113
    and-int/lit16 v2, v1, 0x100

    .line 114
    .line 115
    const/16 v4, 0x100

    .line 116
    .line 117
    if-ne v2, v4, :cond_8

    .line 118
    .line 119
    or-int/lit16 v3, v3, 0x80

    .line 120
    .line 121
    :cond_8
    iget v2, p0, Lgb/p$c;->n:I

    .line 122
    .line 123
    iput v2, v0, Lgb/p;->m:I

    .line 124
    .line 125
    and-int/lit16 v2, v1, 0x200

    .line 126
    .line 127
    const/16 v4, 0x200

    .line 128
    .line 129
    if-ne v2, v4, :cond_9

    .line 130
    .line 131
    or-int/lit16 v3, v3, 0x100

    .line 132
    .line 133
    :cond_9
    iget-object v2, p0, Lgb/p$c;->p:Lgb/p;

    .line 134
    .line 135
    iput-object v2, v0, Lgb/p;->n:Lgb/p;

    .line 136
    .line 137
    and-int/lit16 v2, v1, 0x400

    .line 138
    .line 139
    const/16 v4, 0x400

    .line 140
    .line 141
    if-ne v2, v4, :cond_a

    .line 142
    .line 143
    or-int/lit16 v3, v3, 0x200

    .line 144
    .line 145
    :cond_a
    iget v2, p0, Lgb/p$c;->q:I

    .line 146
    .line 147
    iput v2, v0, Lgb/p;->p:I

    .line 148
    .line 149
    and-int/lit16 v2, v1, 0x800

    .line 150
    .line 151
    const/16 v4, 0x800

    .line 152
    .line 153
    if-ne v2, v4, :cond_b

    .line 154
    .line 155
    or-int/lit16 v3, v3, 0x400

    .line 156
    .line 157
    :cond_b
    iget-object v2, p0, Lgb/p$c;->r:Lgb/p;

    .line 158
    .line 159
    iput-object v2, v0, Lgb/p;->q:Lgb/p;

    .line 160
    .line 161
    and-int/lit16 v2, v1, 0x1000

    .line 162
    .line 163
    const/16 v4, 0x1000

    .line 164
    .line 165
    if-ne v2, v4, :cond_c

    .line 166
    .line 167
    or-int/lit16 v3, v3, 0x800

    .line 168
    .line 169
    :cond_c
    iget v2, p0, Lgb/p$c;->s:I

    .line 170
    .line 171
    iput v2, v0, Lgb/p;->r:I

    .line 172
    .line 173
    const/16 v2, 0x2000

    .line 174
    .line 175
    and-int/2addr v1, v2

    .line 176
    if-ne v1, v2, :cond_d

    .line 177
    .line 178
    or-int/lit16 v3, v3, 0x1000

    .line 179
    .line 180
    :cond_d
    iget v1, p0, Lgb/p$c;->t:I

    .line 181
    .line 182
    iput v1, v0, Lgb/p;->s:I

    .line 183
    .line 184
    iput v3, v0, Lgb/p;->c:I

    .line 185
    .line 186
    return-object v0
.end method

.method public final n(Lgb/p;)Lgb/p$c;
    .locals 7

    .line 1
    sget-object v0, Lgb/p;->w:Lgb/p;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v1, p1, Lgb/p;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p1, Lgb/p;->d:Ljava/util/List;

    .line 24
    .line 25
    iput-object v1, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 26
    .line 27
    iget v1, p0, Lgb/p$c;->d:I

    .line 28
    .line 29
    and-int/lit8 v1, v1, -0x2

    .line 30
    .line 31
    iput v1, p0, Lgb/p$c;->d:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v1, p0, Lgb/p$c;->d:I

    .line 35
    .line 36
    and-int/2addr v1, v2

    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v3, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 47
    .line 48
    iget v1, p0, Lgb/p$c;->d:I

    .line 49
    .line 50
    or-int/2addr v1, v2

    .line 51
    iput v1, p0, Lgb/p$c;->d:I

    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lgb/p$c;->e:Ljava/util/List;

    .line 54
    .line 55
    iget-object v3, p1, Lgb/p;->d:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    iget v1, p1, Lgb/p;->c:I

    .line 61
    .line 62
    and-int/lit8 v3, v1, 0x1

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    if-ne v3, v2, :cond_4

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 v3, 0x0

    .line 70
    :goto_1
    const/4 v5, 0x2

    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    iget-boolean v3, p1, Lgb/p;->e:Z

    .line 74
    .line 75
    iget v6, p0, Lgb/p$c;->d:I

    .line 76
    .line 77
    or-int/2addr v6, v5

    .line 78
    iput v6, p0, Lgb/p$c;->d:I

    .line 79
    .line 80
    iput-boolean v3, p0, Lgb/p$c;->f:Z

    .line 81
    .line 82
    :cond_5
    and-int/lit8 v3, v1, 0x2

    .line 83
    .line 84
    if-ne v3, v5, :cond_6

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    const/4 v3, 0x0

    .line 89
    :goto_2
    const/4 v5, 0x4

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    iget v3, p1, Lgb/p;->f:I

    .line 93
    .line 94
    iget v6, p0, Lgb/p$c;->d:I

    .line 95
    .line 96
    or-int/2addr v6, v5

    .line 97
    iput v6, p0, Lgb/p$c;->d:I

    .line 98
    .line 99
    iput v3, p0, Lgb/p$c;->g:I

    .line 100
    .line 101
    :cond_7
    and-int/2addr v1, v5

    .line 102
    if-ne v1, v5, :cond_8

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_3

    .line 106
    :cond_8
    const/4 v1, 0x0

    .line 107
    :goto_3
    const/16 v3, 0x8

    .line 108
    .line 109
    if-eqz v1, :cond_a

    .line 110
    .line 111
    iget-object v1, p1, Lgb/p;->g:Lgb/p;

    .line 112
    .line 113
    iget v5, p0, Lgb/p$c;->d:I

    .line 114
    .line 115
    and-int/2addr v5, v3

    .line 116
    if-ne v5, v3, :cond_9

    .line 117
    .line 118
    iget-object v5, p0, Lgb/p$c;->h:Lgb/p;

    .line 119
    .line 120
    if-eq v5, v0, :cond_9

    .line 121
    .line 122
    invoke-static {v5}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5, v1}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Lgb/p$c;->l()Lgb/p;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_9
    iput-object v1, p0, Lgb/p$c;->h:Lgb/p;

    .line 134
    .line 135
    iget v1, p0, Lgb/p$c;->d:I

    .line 136
    .line 137
    or-int/2addr v1, v3

    .line 138
    iput v1, p0, Lgb/p$c;->d:I

    .line 139
    .line 140
    :cond_a
    iget v1, p1, Lgb/p;->c:I

    .line 141
    .line 142
    and-int/2addr v1, v3

    .line 143
    if-ne v1, v3, :cond_b

    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_4

    .line 147
    :cond_b
    const/4 v1, 0x0

    .line 148
    :goto_4
    if-eqz v1, :cond_c

    .line 149
    .line 150
    iget v1, p1, Lgb/p;->h:I

    .line 151
    .line 152
    iget v3, p0, Lgb/p$c;->d:I

    .line 153
    .line 154
    or-int/lit8 v3, v3, 0x10

    .line 155
    .line 156
    iput v3, p0, Lgb/p$c;->d:I

    .line 157
    .line 158
    iput v1, p0, Lgb/p$c;->j:I

    .line 159
    .line 160
    :cond_c
    invoke-virtual {p1}, Lgb/p;->q()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/16 v3, 0x20

    .line 165
    .line 166
    if-eqz v1, :cond_d

    .line 167
    .line 168
    iget v1, p1, Lgb/p;->j:I

    .line 169
    .line 170
    iget v5, p0, Lgb/p$c;->d:I

    .line 171
    .line 172
    or-int/2addr v5, v3

    .line 173
    iput v5, p0, Lgb/p$c;->d:I

    .line 174
    .line 175
    iput v1, p0, Lgb/p$c;->k:I

    .line 176
    .line 177
    :cond_d
    iget v1, p1, Lgb/p;->c:I

    .line 178
    .line 179
    and-int/lit8 v5, v1, 0x20

    .line 180
    .line 181
    if-ne v5, v3, :cond_e

    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    goto :goto_5

    .line 185
    :cond_e
    const/4 v3, 0x0

    .line 186
    :goto_5
    const/16 v5, 0x40

    .line 187
    .line 188
    if-eqz v3, :cond_f

    .line 189
    .line 190
    iget v3, p1, Lgb/p;->k:I

    .line 191
    .line 192
    iget v6, p0, Lgb/p$c;->d:I

    .line 193
    .line 194
    or-int/2addr v6, v5

    .line 195
    iput v6, p0, Lgb/p$c;->d:I

    .line 196
    .line 197
    iput v3, p0, Lgb/p$c;->l:I

    .line 198
    .line 199
    :cond_f
    and-int/lit8 v3, v1, 0x40

    .line 200
    .line 201
    if-ne v3, v5, :cond_10

    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    goto :goto_6

    .line 205
    :cond_10
    const/4 v3, 0x0

    .line 206
    :goto_6
    const/16 v5, 0x80

    .line 207
    .line 208
    if-eqz v3, :cond_11

    .line 209
    .line 210
    iget v3, p1, Lgb/p;->l:I

    .line 211
    .line 212
    iget v6, p0, Lgb/p$c;->d:I

    .line 213
    .line 214
    or-int/2addr v6, v5

    .line 215
    iput v6, p0, Lgb/p$c;->d:I

    .line 216
    .line 217
    iput v3, p0, Lgb/p$c;->m:I

    .line 218
    .line 219
    :cond_11
    and-int/lit16 v3, v1, 0x80

    .line 220
    .line 221
    if-ne v3, v5, :cond_12

    .line 222
    .line 223
    const/4 v3, 0x1

    .line 224
    goto :goto_7

    .line 225
    :cond_12
    const/4 v3, 0x0

    .line 226
    :goto_7
    const/16 v5, 0x100

    .line 227
    .line 228
    if-eqz v3, :cond_13

    .line 229
    .line 230
    iget v3, p1, Lgb/p;->m:I

    .line 231
    .line 232
    iget v6, p0, Lgb/p$c;->d:I

    .line 233
    .line 234
    or-int/2addr v6, v5

    .line 235
    iput v6, p0, Lgb/p$c;->d:I

    .line 236
    .line 237
    iput v3, p0, Lgb/p$c;->n:I

    .line 238
    .line 239
    :cond_13
    and-int/2addr v1, v5

    .line 240
    if-ne v1, v5, :cond_14

    .line 241
    .line 242
    const/4 v1, 0x1

    .line 243
    goto :goto_8

    .line 244
    :cond_14
    const/4 v1, 0x0

    .line 245
    :goto_8
    const/16 v3, 0x200

    .line 246
    .line 247
    if-eqz v1, :cond_16

    .line 248
    .line 249
    iget-object v1, p1, Lgb/p;->n:Lgb/p;

    .line 250
    .line 251
    iget v5, p0, Lgb/p$c;->d:I

    .line 252
    .line 253
    and-int/2addr v5, v3

    .line 254
    if-ne v5, v3, :cond_15

    .line 255
    .line 256
    iget-object v5, p0, Lgb/p$c;->p:Lgb/p;

    .line 257
    .line 258
    if-eq v5, v0, :cond_15

    .line 259
    .line 260
    invoke-static {v5}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v5, v1}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Lgb/p$c;->l()Lgb/p;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    :cond_15
    iput-object v1, p0, Lgb/p$c;->p:Lgb/p;

    .line 272
    .line 273
    iget v1, p0, Lgb/p$c;->d:I

    .line 274
    .line 275
    or-int/2addr v1, v3

    .line 276
    iput v1, p0, Lgb/p$c;->d:I

    .line 277
    .line 278
    :cond_16
    iget v1, p1, Lgb/p;->c:I

    .line 279
    .line 280
    and-int/lit16 v5, v1, 0x200

    .line 281
    .line 282
    if-ne v5, v3, :cond_17

    .line 283
    .line 284
    const/4 v3, 0x1

    .line 285
    goto :goto_9

    .line 286
    :cond_17
    const/4 v3, 0x0

    .line 287
    :goto_9
    const/16 v5, 0x400

    .line 288
    .line 289
    if-eqz v3, :cond_18

    .line 290
    .line 291
    iget v3, p1, Lgb/p;->p:I

    .line 292
    .line 293
    iget v6, p0, Lgb/p$c;->d:I

    .line 294
    .line 295
    or-int/2addr v6, v5

    .line 296
    iput v6, p0, Lgb/p$c;->d:I

    .line 297
    .line 298
    iput v3, p0, Lgb/p$c;->q:I

    .line 299
    .line 300
    :cond_18
    and-int/2addr v1, v5

    .line 301
    if-ne v1, v5, :cond_19

    .line 302
    .line 303
    const/4 v1, 0x1

    .line 304
    goto :goto_a

    .line 305
    :cond_19
    const/4 v1, 0x0

    .line 306
    :goto_a
    const/16 v3, 0x800

    .line 307
    .line 308
    if-eqz v1, :cond_1b

    .line 309
    .line 310
    iget-object v1, p1, Lgb/p;->q:Lgb/p;

    .line 311
    .line 312
    iget v5, p0, Lgb/p$c;->d:I

    .line 313
    .line 314
    and-int/2addr v5, v3

    .line 315
    if-ne v5, v3, :cond_1a

    .line 316
    .line 317
    iget-object v5, p0, Lgb/p$c;->r:Lgb/p;

    .line 318
    .line 319
    if-eq v5, v0, :cond_1a

    .line 320
    .line 321
    invoke-static {v5}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0, v1}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Lgb/p$c;->l()Lgb/p;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    :cond_1a
    iput-object v1, p0, Lgb/p$c;->r:Lgb/p;

    .line 333
    .line 334
    iget v0, p0, Lgb/p$c;->d:I

    .line 335
    .line 336
    or-int/2addr v0, v3

    .line 337
    iput v0, p0, Lgb/p$c;->d:I

    .line 338
    .line 339
    :cond_1b
    iget v0, p1, Lgb/p;->c:I

    .line 340
    .line 341
    and-int/lit16 v1, v0, 0x800

    .line 342
    .line 343
    if-ne v1, v3, :cond_1c

    .line 344
    .line 345
    const/4 v1, 0x1

    .line 346
    goto :goto_b

    .line 347
    :cond_1c
    const/4 v1, 0x0

    .line 348
    :goto_b
    const/16 v3, 0x1000

    .line 349
    .line 350
    if-eqz v1, :cond_1d

    .line 351
    .line 352
    iget v1, p1, Lgb/p;->r:I

    .line 353
    .line 354
    iget v5, p0, Lgb/p$c;->d:I

    .line 355
    .line 356
    or-int/2addr v5, v3

    .line 357
    iput v5, p0, Lgb/p$c;->d:I

    .line 358
    .line 359
    iput v1, p0, Lgb/p$c;->s:I

    .line 360
    .line 361
    :cond_1d
    and-int/2addr v0, v3

    .line 362
    if-ne v0, v3, :cond_1e

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_1e
    const/4 v2, 0x0

    .line 366
    :goto_c
    if-eqz v2, :cond_1f

    .line 367
    .line 368
    iget v0, p1, Lgb/p;->s:I

    .line 369
    .line 370
    iget v1, p0, Lgb/p$c;->d:I

    .line 371
    .line 372
    or-int/lit16 v1, v1, 0x2000

    .line 373
    .line 374
    iput v1, p0, Lgb/p$c;->d:I

    .line 375
    .line 376
    iput v0, p0, Lgb/p$c;->t:I

    .line 377
    .line 378
    :cond_1f
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 382
    .line 383
    iget-object p1, p1, Lgb/p;->b:Lmb/c;

    .line 384
    .line 385
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 390
    .line 391
    return-object p0
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
    sget-object v0, Lgb/p;->x:Lgb/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/p;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/p;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

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
    check-cast p2, Lgb/p;
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
    invoke-virtual {p0, p2}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
