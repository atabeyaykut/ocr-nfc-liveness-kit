.class public final Lgb/m$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/m;",
        "Lgb/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lgb/p;

.field public j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/r;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lgb/p;

.field public m:I

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/p;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lgb/t;

.field public r:I

.field public s:I

.field public t:Ljava/util/List;
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
    .locals 2

    .line 1
    invoke-direct {p0}, Lmb/h$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x206

    .line 5
    .line 6
    iput v0, p0, Lgb/m$b;->e:I

    .line 7
    .line 8
    const/16 v0, 0x806

    .line 9
    .line 10
    iput v0, p0, Lgb/m$b;->f:I

    .line 11
    .line 12
    sget-object v0, Lgb/p;->w:Lgb/p;

    .line 13
    .line 14
    iput-object v0, p0, Lgb/m$b;->h:Lgb/p;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 21
    .line 22
    iput-object v0, p0, Lgb/m$b;->l:Lgb/p;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 35
    .line 36
    sget-object v0, Lgb/t;->m:Lgb/t;

    .line 37
    .line 38
    iput-object v0, p0, Lgb/m$b;->q:Lgb/t;

    .line 39
    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 45
    .line 46
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

    invoke-virtual {p0, p1, p2}, Lgb/m$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/m$b;->l()Lgb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/m;->b()Z

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
    new-instance v0, Lgb/m$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/m$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/m$b;->l()Lgb/m;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/m$b;->n(Lgb/m;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/m$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/m$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/m$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/m$b;->l()Lgb/m;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/m$b;->n(Lgb/m;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/m;

    invoke-virtual {p0, p1}, Lgb/m$b;->n(Lgb/m;)V

    return-object p0
.end method

.method public final l()Lgb/m;
    .locals 5

    .line 1
    new-instance v0, Lgb/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/m;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/m$b;->d:I

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
    iget v2, p0, Lgb/m$b;->e:I

    .line 16
    .line 17
    iput v2, v0, Lgb/m;->d:I

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
    iget v2, p0, Lgb/m$b;->f:I

    .line 27
    .line 28
    iput v2, v0, Lgb/m;->e:I

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
    iget v2, p0, Lgb/m$b;->g:I

    .line 38
    .line 39
    iput v2, v0, Lgb/m;->f:I

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
    iget-object v2, p0, Lgb/m$b;->h:Lgb/p;

    .line 50
    .line 51
    iput-object v2, v0, Lgb/m;->g:Lgb/p;

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
    iget v2, p0, Lgb/m$b;->j:I

    .line 62
    .line 63
    iput v2, v0, Lgb/m;->h:I

    .line 64
    .line 65
    and-int/lit8 v2, v1, 0x20

    .line 66
    .line 67
    const/16 v4, 0x20

    .line 68
    .line 69
    if-ne v2, v4, :cond_5

    .line 70
    .line 71
    iget-object v2, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iput-object v2, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 78
    .line 79
    iget v2, p0, Lgb/m$b;->d:I

    .line 80
    .line 81
    and-int/lit8 v2, v2, -0x21

    .line 82
    .line 83
    iput v2, p0, Lgb/m$b;->d:I

    .line 84
    .line 85
    :cond_5
    iget-object v2, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 86
    .line 87
    iput-object v2, v0, Lgb/m;->j:Ljava/util/List;

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
    iget-object v2, p0, Lgb/m$b;->l:Lgb/p;

    .line 98
    .line 99
    iput-object v2, v0, Lgb/m;->k:Lgb/p;

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
    iget v2, p0, Lgb/m$b;->m:I

    .line 110
    .line 111
    iput v2, v0, Lgb/m;->l:I

    .line 112
    .line 113
    iget v2, p0, Lgb/m$b;->d:I

    .line 114
    .line 115
    const/16 v4, 0x100

    .line 116
    .line 117
    and-int/2addr v2, v4

    .line 118
    if-ne v2, v4, :cond_8

    .line 119
    .line 120
    iget-object v2, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 121
    .line 122
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 127
    .line 128
    iget v2, p0, Lgb/m$b;->d:I

    .line 129
    .line 130
    and-int/lit16 v2, v2, -0x101

    .line 131
    .line 132
    iput v2, p0, Lgb/m$b;->d:I

    .line 133
    .line 134
    :cond_8
    iget-object v2, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 135
    .line 136
    iput-object v2, v0, Lgb/m;->m:Ljava/util/List;

    .line 137
    .line 138
    iget v2, p0, Lgb/m$b;->d:I

    .line 139
    .line 140
    const/16 v4, 0x200

    .line 141
    .line 142
    and-int/2addr v2, v4

    .line 143
    if-ne v2, v4, :cond_9

    .line 144
    .line 145
    iget-object v2, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 146
    .line 147
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 152
    .line 153
    iget v2, p0, Lgb/m$b;->d:I

    .line 154
    .line 155
    and-int/lit16 v2, v2, -0x201

    .line 156
    .line 157
    iput v2, p0, Lgb/m$b;->d:I

    .line 158
    .line 159
    :cond_9
    iget-object v2, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 160
    .line 161
    iput-object v2, v0, Lgb/m;->n:Ljava/util/List;

    .line 162
    .line 163
    and-int/lit16 v2, v1, 0x400

    .line 164
    .line 165
    const/16 v4, 0x400

    .line 166
    .line 167
    if-ne v2, v4, :cond_a

    .line 168
    .line 169
    or-int/lit16 v3, v3, 0x80

    .line 170
    .line 171
    :cond_a
    iget-object v2, p0, Lgb/m$b;->q:Lgb/t;

    .line 172
    .line 173
    iput-object v2, v0, Lgb/m;->q:Lgb/t;

    .line 174
    .line 175
    and-int/lit16 v2, v1, 0x800

    .line 176
    .line 177
    const/16 v4, 0x800

    .line 178
    .line 179
    if-ne v2, v4, :cond_b

    .line 180
    .line 181
    or-int/lit16 v3, v3, 0x100

    .line 182
    .line 183
    :cond_b
    iget v2, p0, Lgb/m$b;->r:I

    .line 184
    .line 185
    iput v2, v0, Lgb/m;->r:I

    .line 186
    .line 187
    const/16 v2, 0x1000

    .line 188
    .line 189
    and-int/2addr v1, v2

    .line 190
    if-ne v1, v2, :cond_c

    .line 191
    .line 192
    or-int/lit16 v3, v3, 0x200

    .line 193
    .line 194
    :cond_c
    iget v1, p0, Lgb/m$b;->s:I

    .line 195
    .line 196
    iput v1, v0, Lgb/m;->s:I

    .line 197
    .line 198
    iget v1, p0, Lgb/m$b;->d:I

    .line 199
    .line 200
    const/16 v2, 0x2000

    .line 201
    .line 202
    and-int/2addr v1, v2

    .line 203
    if-ne v1, v2, :cond_d

    .line 204
    .line 205
    iget-object v1, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 206
    .line 207
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 212
    .line 213
    iget v1, p0, Lgb/m$b;->d:I

    .line 214
    .line 215
    and-int/lit16 v1, v1, -0x2001

    .line 216
    .line 217
    iput v1, p0, Lgb/m$b;->d:I

    .line 218
    .line 219
    :cond_d
    iget-object v1, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 220
    .line 221
    iput-object v1, v0, Lgb/m;->t:Ljava/util/List;

    .line 222
    .line 223
    iput v3, v0, Lgb/m;->c:I

    .line 224
    .line 225
    return-object v0
.end method

.method public final n(Lgb/m;)V
    .locals 8

    .line 1
    sget-object v0, Lgb/m;->x:Lgb/m;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/m;->c:I

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
    iget v1, p1, Lgb/m;->d:I

    .line 20
    .line 21
    iget v4, p0, Lgb/m$b;->d:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/m$b;->d:I

    .line 25
    .line 26
    iput v1, p0, Lgb/m$b;->e:I

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
    iget v1, p1, Lgb/m;->e:I

    .line 39
    .line 40
    iget v5, p0, Lgb/m$b;->d:I

    .line 41
    .line 42
    or-int/2addr v4, v5

    .line 43
    iput v4, p0, Lgb/m$b;->d:I

    .line 44
    .line 45
    iput v1, p0, Lgb/m$b;->f:I

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
    iget v1, p1, Lgb/m;->f:I

    .line 58
    .line 59
    iget v5, p0, Lgb/m$b;->d:I

    .line 60
    .line 61
    or-int/2addr v4, v5

    .line 62
    iput v4, p0, Lgb/m$b;->d:I

    .line 63
    .line 64
    iput v1, p0, Lgb/m$b;->g:I

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
    const/4 v0, 0x1

    .line 72
    goto :goto_3

    .line 73
    :cond_7
    const/4 v0, 0x0

    .line 74
    :goto_3
    if-eqz v0, :cond_9

    .line 75
    .line 76
    iget-object v0, p1, Lgb/m;->g:Lgb/p;

    .line 77
    .line 78
    iget v4, p0, Lgb/m$b;->d:I

    .line 79
    .line 80
    and-int/2addr v4, v1

    .line 81
    if-ne v4, v1, :cond_8

    .line 82
    .line 83
    iget-object v4, p0, Lgb/m$b;->h:Lgb/p;

    .line 84
    .line 85
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 86
    .line 87
    if-eq v4, v5, :cond_8

    .line 88
    .line 89
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_8
    iput-object v0, p0, Lgb/m$b;->h:Lgb/p;

    .line 101
    .line 102
    iget v0, p0, Lgb/m$b;->d:I

    .line 103
    .line 104
    or-int/2addr v0, v1

    .line 105
    iput v0, p0, Lgb/m$b;->d:I

    .line 106
    .line 107
    :cond_9
    iget v0, p1, Lgb/m;->c:I

    .line 108
    .line 109
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
    if-eqz v0, :cond_b

    .line 118
    .line 119
    iget v0, p1, Lgb/m;->h:I

    .line 120
    .line 121
    iget v4, p0, Lgb/m$b;->d:I

    .line 122
    .line 123
    or-int/2addr v1, v4

    .line 124
    iput v1, p0, Lgb/m$b;->d:I

    .line 125
    .line 126
    iput v0, p0, Lgb/m$b;->j:I

    .line 127
    .line 128
    :cond_b
    iget-object v0, p1, Lgb/m;->j:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/16 v1, 0x20

    .line 135
    .line 136
    if-nez v0, :cond_e

    .line 137
    .line 138
    iget-object v0, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_c

    .line 145
    .line 146
    iget-object v0, p1, Lgb/m;->j:Ljava/util/List;

    .line 147
    .line 148
    iput-object v0, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 149
    .line 150
    iget v0, p0, Lgb/m$b;->d:I

    .line 151
    .line 152
    and-int/lit8 v0, v0, -0x21

    .line 153
    .line 154
    iput v0, p0, Lgb/m$b;->d:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_c
    iget v0, p0, Lgb/m$b;->d:I

    .line 158
    .line 159
    and-int/2addr v0, v1

    .line 160
    if-eq v0, v1, :cond_d

    .line 161
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    .line 163
    .line 164
    iget-object v4, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 165
    .line 166
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 170
    .line 171
    iget v0, p0, Lgb/m$b;->d:I

    .line 172
    .line 173
    or-int/2addr v0, v1

    .line 174
    iput v0, p0, Lgb/m$b;->d:I

    .line 175
    .line 176
    :cond_d
    iget-object v0, p0, Lgb/m$b;->k:Ljava/util/List;

    .line 177
    .line 178
    iget-object v4, p1, Lgb/m;->j:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    .line 182
    .line 183
    :cond_e
    :goto_5
    iget v0, p1, Lgb/m;->c:I

    .line 184
    .line 185
    and-int/2addr v0, v1

    .line 186
    if-ne v0, v1, :cond_f

    .line 187
    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_6

    .line 190
    :cond_f
    const/4 v0, 0x0

    .line 191
    :goto_6
    const/16 v1, 0x40

    .line 192
    .line 193
    if-eqz v0, :cond_11

    .line 194
    .line 195
    iget-object v0, p1, Lgb/m;->k:Lgb/p;

    .line 196
    .line 197
    iget v4, p0, Lgb/m$b;->d:I

    .line 198
    .line 199
    and-int/2addr v4, v1

    .line 200
    if-ne v4, v1, :cond_10

    .line 201
    .line 202
    iget-object v4, p0, Lgb/m$b;->l:Lgb/p;

    .line 203
    .line 204
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 205
    .line 206
    if-eq v4, v5, :cond_10

    .line 207
    .line 208
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    :cond_10
    iput-object v0, p0, Lgb/m$b;->l:Lgb/p;

    .line 220
    .line 221
    iget v0, p0, Lgb/m$b;->d:I

    .line 222
    .line 223
    or-int/2addr v0, v1

    .line 224
    iput v0, p0, Lgb/m$b;->d:I

    .line 225
    .line 226
    :cond_11
    iget v0, p1, Lgb/m;->c:I

    .line 227
    .line 228
    and-int/2addr v0, v1

    .line 229
    if-ne v0, v1, :cond_12

    .line 230
    .line 231
    const/4 v0, 0x1

    .line 232
    goto :goto_7

    .line 233
    :cond_12
    const/4 v0, 0x0

    .line 234
    :goto_7
    const/16 v1, 0x80

    .line 235
    .line 236
    if-eqz v0, :cond_13

    .line 237
    .line 238
    iget v0, p1, Lgb/m;->l:I

    .line 239
    .line 240
    iget v4, p0, Lgb/m$b;->d:I

    .line 241
    .line 242
    or-int/2addr v4, v1

    .line 243
    iput v4, p0, Lgb/m$b;->d:I

    .line 244
    .line 245
    iput v0, p0, Lgb/m$b;->m:I

    .line 246
    .line 247
    :cond_13
    iget-object v0, p1, Lgb/m;->m:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    const/16 v4, 0x100

    .line 254
    .line 255
    if-nez v0, :cond_16

    .line 256
    .line 257
    iget-object v0, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_14

    .line 264
    .line 265
    iget-object v0, p1, Lgb/m;->m:Ljava/util/List;

    .line 266
    .line 267
    iput-object v0, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 268
    .line 269
    iget v0, p0, Lgb/m$b;->d:I

    .line 270
    .line 271
    and-int/lit16 v0, v0, -0x101

    .line 272
    .line 273
    iput v0, p0, Lgb/m$b;->d:I

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_14
    iget v0, p0, Lgb/m$b;->d:I

    .line 277
    .line 278
    and-int/2addr v0, v4

    .line 279
    if-eq v0, v4, :cond_15

    .line 280
    .line 281
    new-instance v0, Ljava/util/ArrayList;

    .line 282
    .line 283
    iget-object v5, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 284
    .line 285
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    .line 287
    .line 288
    iput-object v0, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 289
    .line 290
    iget v0, p0, Lgb/m$b;->d:I

    .line 291
    .line 292
    or-int/2addr v0, v4

    .line 293
    iput v0, p0, Lgb/m$b;->d:I

    .line 294
    .line 295
    :cond_15
    iget-object v0, p0, Lgb/m$b;->n:Ljava/util/List;

    .line 296
    .line 297
    iget-object v5, p1, Lgb/m;->m:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    .line 301
    .line 302
    :cond_16
    :goto_8
    iget-object v0, p1, Lgb/m;->n:Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    const/16 v5, 0x200

    .line 309
    .line 310
    if-nez v0, :cond_19

    .line 311
    .line 312
    iget-object v0, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_17

    .line 319
    .line 320
    iget-object v0, p1, Lgb/m;->n:Ljava/util/List;

    .line 321
    .line 322
    iput-object v0, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 323
    .line 324
    iget v0, p0, Lgb/m$b;->d:I

    .line 325
    .line 326
    and-int/lit16 v0, v0, -0x201

    .line 327
    .line 328
    iput v0, p0, Lgb/m$b;->d:I

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_17
    iget v0, p0, Lgb/m$b;->d:I

    .line 332
    .line 333
    and-int/2addr v0, v5

    .line 334
    if-eq v0, v5, :cond_18

    .line 335
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    .line 337
    .line 338
    iget-object v6, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 339
    .line 340
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    .line 342
    .line 343
    iput-object v0, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 344
    .line 345
    iget v0, p0, Lgb/m$b;->d:I

    .line 346
    .line 347
    or-int/2addr v0, v5

    .line 348
    iput v0, p0, Lgb/m$b;->d:I

    .line 349
    .line 350
    :cond_18
    iget-object v0, p0, Lgb/m$b;->p:Ljava/util/List;

    .line 351
    .line 352
    iget-object v6, p1, Lgb/m;->n:Ljava/util/List;

    .line 353
    .line 354
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    .line 356
    .line 357
    :cond_19
    :goto_9
    iget v0, p1, Lgb/m;->c:I

    .line 358
    .line 359
    and-int/2addr v0, v1

    .line 360
    if-ne v0, v1, :cond_1a

    .line 361
    .line 362
    const/4 v0, 0x1

    .line 363
    goto :goto_a

    .line 364
    :cond_1a
    const/4 v0, 0x0

    .line 365
    :goto_a
    if-eqz v0, :cond_1c

    .line 366
    .line 367
    iget-object v0, p1, Lgb/m;->q:Lgb/t;

    .line 368
    .line 369
    iget v1, p0, Lgb/m$b;->d:I

    .line 370
    .line 371
    const/16 v6, 0x400

    .line 372
    .line 373
    and-int/2addr v1, v6

    .line 374
    if-ne v1, v6, :cond_1b

    .line 375
    .line 376
    iget-object v1, p0, Lgb/m$b;->q:Lgb/t;

    .line 377
    .line 378
    sget-object v7, Lgb/t;->m:Lgb/t;

    .line 379
    .line 380
    if-eq v1, v7, :cond_1b

    .line 381
    .line 382
    new-instance v7, Lgb/t$b;

    .line 383
    .line 384
    invoke-direct {v7}, Lgb/t$b;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v1}, Lgb/t$b;->n(Lgb/t;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7, v0}, Lgb/t$b;->n(Lgb/t;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7}, Lgb/t$b;->l()Lgb/t;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :cond_1b
    iput-object v0, p0, Lgb/m$b;->q:Lgb/t;

    .line 398
    .line 399
    iget v0, p0, Lgb/m$b;->d:I

    .line 400
    .line 401
    or-int/2addr v0, v6

    .line 402
    iput v0, p0, Lgb/m$b;->d:I

    .line 403
    .line 404
    :cond_1c
    iget v0, p1, Lgb/m;->c:I

    .line 405
    .line 406
    and-int/lit16 v1, v0, 0x100

    .line 407
    .line 408
    if-ne v1, v4, :cond_1d

    .line 409
    .line 410
    const/4 v1, 0x1

    .line 411
    goto :goto_b

    .line 412
    :cond_1d
    const/4 v1, 0x0

    .line 413
    :goto_b
    if-eqz v1, :cond_1e

    .line 414
    .line 415
    iget v1, p1, Lgb/m;->r:I

    .line 416
    .line 417
    iget v4, p0, Lgb/m$b;->d:I

    .line 418
    .line 419
    or-int/lit16 v4, v4, 0x800

    .line 420
    .line 421
    iput v4, p0, Lgb/m$b;->d:I

    .line 422
    .line 423
    iput v1, p0, Lgb/m$b;->r:I

    .line 424
    .line 425
    :cond_1e
    and-int/2addr v0, v5

    .line 426
    if-ne v0, v5, :cond_1f

    .line 427
    .line 428
    const/4 v2, 0x1

    .line 429
    :cond_1f
    if-eqz v2, :cond_20

    .line 430
    .line 431
    iget v0, p1, Lgb/m;->s:I

    .line 432
    .line 433
    iget v1, p0, Lgb/m$b;->d:I

    .line 434
    .line 435
    or-int/lit16 v1, v1, 0x1000

    .line 436
    .line 437
    iput v1, p0, Lgb/m$b;->d:I

    .line 438
    .line 439
    iput v0, p0, Lgb/m$b;->s:I

    .line 440
    .line 441
    :cond_20
    iget-object v0, p1, Lgb/m;->t:Ljava/util/List;

    .line 442
    .line 443
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-nez v0, :cond_23

    .line 448
    .line 449
    iget-object v0, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_21

    .line 456
    .line 457
    iget-object v0, p1, Lgb/m;->t:Ljava/util/List;

    .line 458
    .line 459
    iput-object v0, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 460
    .line 461
    iget v0, p0, Lgb/m$b;->d:I

    .line 462
    .line 463
    and-int/lit16 v0, v0, -0x2001

    .line 464
    .line 465
    iput v0, p0, Lgb/m$b;->d:I

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_21
    iget v0, p0, Lgb/m$b;->d:I

    .line 469
    .line 470
    const/16 v1, 0x2000

    .line 471
    .line 472
    and-int/2addr v0, v1

    .line 473
    if-eq v0, v1, :cond_22

    .line 474
    .line 475
    new-instance v0, Ljava/util/ArrayList;

    .line 476
    .line 477
    iget-object v2, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 478
    .line 479
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 480
    .line 481
    .line 482
    iput-object v0, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 483
    .line 484
    iget v0, p0, Lgb/m$b;->d:I

    .line 485
    .line 486
    or-int/2addr v0, v1

    .line 487
    iput v0, p0, Lgb/m$b;->d:I

    .line 488
    .line 489
    :cond_22
    iget-object v0, p0, Lgb/m$b;->t:Ljava/util/List;

    .line 490
    .line 491
    iget-object v1, p1, Lgb/m;->t:Ljava/util/List;

    .line 492
    .line 493
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 494
    .line 495
    .line 496
    :cond_23
    :goto_c
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 500
    .line 501
    iget-object p1, p1, Lgb/m;->b:Lmb/c;

    .line 502
    .line 503
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 508
    .line 509
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
    sget-object v0, Lgb/m;->y:Lgb/m$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/m;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/m;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/m$b;->n(Lgb/m;)V

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
    check-cast p2, Lgb/m;
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
    invoke-virtual {p0, p2}, Lgb/m$b;->n(Lgb/m;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
