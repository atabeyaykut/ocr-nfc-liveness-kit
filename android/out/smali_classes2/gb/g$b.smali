.class public final Lgb/g$b;
.super Lmb/h$a;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$a<",
        "Lgb/g;",
        "Lgb/g$b;",
        ">;",
        "Lmb/q;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lgb/g$c;

.field public f:Lgb/p;

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/g;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/h$a;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgb/g$c;->b:Lgb/g$c;

    .line 5
    .line 6
    iput-object v0, p0, Lgb/g$b;->e:Lgb/g$c;

    .line 7
    .line 8
    sget-object v0, Lgb/p;->w:Lgb/p;

    .line 9
    .line 10
    iput-object v0, p0, Lgb/g$b;->f:Lgb/p;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 23
    .line 24
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

    invoke-virtual {p0, p1, p2}, Lgb/g$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/g$b;->k()Lgb/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/g;->b()Z

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
    new-instance v0, Lgb/g$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/g$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/g$b;->k()Lgb/g;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/g$b;->l(Lgb/g;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/g$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/g$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/g$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/g$b;->k()Lgb/g;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/g$b;->l(Lgb/g;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/g;

    invoke-virtual {p0, p1}, Lgb/g$b;->l(Lgb/g;)V

    return-object p0
.end method

.method public final k()Lgb/g;
    .locals 5

    .line 1
    new-instance v0, Lgb/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/g;-><init>(Lmb/h$a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/g$b;->b:I

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
    iget v2, p0, Lgb/g$b;->c:I

    .line 16
    .line 17
    iput v2, v0, Lgb/g;->c:I

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
    iget v2, p0, Lgb/g$b;->d:I

    .line 27
    .line 28
    iput v2, v0, Lgb/g;->d:I

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
    iget-object v2, p0, Lgb/g$b;->e:Lgb/g$c;

    .line 38
    .line 39
    iput-object v2, v0, Lgb/g;->e:Lgb/g$c;

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
    iget-object v2, p0, Lgb/g$b;->f:Lgb/p;

    .line 50
    .line 51
    iput-object v2, v0, Lgb/g;->f:Lgb/p;

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
    iget v2, p0, Lgb/g$b;->g:I

    .line 62
    .line 63
    iput v2, v0, Lgb/g;->g:I

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
    iget-object v1, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 77
    .line 78
    iget v1, p0, Lgb/g$b;->b:I

    .line 79
    .line 80
    and-int/lit8 v1, v1, -0x21

    .line 81
    .line 82
    iput v1, p0, Lgb/g$b;->b:I

    .line 83
    .line 84
    :cond_5
    iget-object v1, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 85
    .line 86
    iput-object v1, v0, Lgb/g;->h:Ljava/util/List;

    .line 87
    .line 88
    iget v1, p0, Lgb/g$b;->b:I

    .line 89
    .line 90
    const/16 v2, 0x40

    .line 91
    .line 92
    and-int/2addr v1, v2

    .line 93
    if-ne v1, v2, :cond_6

    .line 94
    .line 95
    iget-object v1, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 102
    .line 103
    iget v1, p0, Lgb/g$b;->b:I

    .line 104
    .line 105
    and-int/lit8 v1, v1, -0x41

    .line 106
    .line 107
    iput v1, p0, Lgb/g$b;->b:I

    .line 108
    .line 109
    :cond_6
    iget-object v1, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 110
    .line 111
    iput-object v1, v0, Lgb/g;->j:Ljava/util/List;

    .line 112
    .line 113
    iput v3, v0, Lgb/g;->b:I

    .line 114
    .line 115
    return-object v0
.end method

.method public final l(Lgb/g;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/g;->m:Lgb/g;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/g;->b:I

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
    iget v1, p1, Lgb/g;->c:I

    .line 20
    .line 21
    iget v4, p0, Lgb/g$b;->b:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/g$b;->b:I

    .line 25
    .line 26
    iput v1, p0, Lgb/g$b;->c:I

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
    iget v1, p1, Lgb/g;->d:I

    .line 39
    .line 40
    iget v5, p0, Lgb/g$b;->b:I

    .line 41
    .line 42
    or-int/2addr v4, v5

    .line 43
    iput v4, p0, Lgb/g$b;->b:I

    .line 44
    .line 45
    iput v1, p0, Lgb/g$b;->d:I

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
    iget-object v0, p1, Lgb/g;->e:Lgb/g$c;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v4, p0, Lgb/g$b;->b:I

    .line 62
    .line 63
    or-int/2addr v1, v4

    .line 64
    iput v1, p0, Lgb/g$b;->b:I

    .line 65
    .line 66
    iput-object v0, p0, Lgb/g$b;->e:Lgb/g$c;

    .line 67
    .line 68
    :cond_6
    iget v0, p1, Lgb/g;->b:I

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    and-int/2addr v0, v1

    .line 73
    if-ne v0, v1, :cond_7

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_3

    .line 77
    :cond_7
    const/4 v0, 0x0

    .line 78
    :goto_3
    if-eqz v0, :cond_9

    .line 79
    .line 80
    iget-object v0, p1, Lgb/g;->f:Lgb/p;

    .line 81
    .line 82
    iget v4, p0, Lgb/g$b;->b:I

    .line 83
    .line 84
    and-int/2addr v4, v1

    .line 85
    if-ne v4, v1, :cond_8

    .line 86
    .line 87
    iget-object v4, p0, Lgb/g$b;->f:Lgb/p;

    .line 88
    .line 89
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 90
    .line 91
    if-eq v4, v5, :cond_8

    .line 92
    .line 93
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_8
    iput-object v0, p0, Lgb/g$b;->f:Lgb/p;

    .line 105
    .line 106
    iget v0, p0, Lgb/g$b;->b:I

    .line 107
    .line 108
    or-int/2addr v0, v1

    .line 109
    iput v0, p0, Lgb/g$b;->b:I

    .line 110
    .line 111
    :cond_9
    iget v0, p1, Lgb/g;->b:I

    .line 112
    .line 113
    const/16 v1, 0x10

    .line 114
    .line 115
    and-int/2addr v0, v1

    .line 116
    if-ne v0, v1, :cond_a

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    :cond_a
    if-eqz v2, :cond_b

    .line 120
    .line 121
    iget v0, p1, Lgb/g;->g:I

    .line 122
    .line 123
    iget v2, p0, Lgb/g$b;->b:I

    .line 124
    .line 125
    or-int/2addr v1, v2

    .line 126
    iput v1, p0, Lgb/g$b;->b:I

    .line 127
    .line 128
    iput v0, p0, Lgb/g$b;->g:I

    .line 129
    .line 130
    :cond_b
    iget-object v0, p1, Lgb/g;->h:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_e

    .line 137
    .line 138
    iget-object v0, p0, Lgb/g$b;->h:Ljava/util/List;

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
    iget-object v0, p1, Lgb/g;->h:Ljava/util/List;

    .line 147
    .line 148
    iput-object v0, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 149
    .line 150
    iget v0, p0, Lgb/g$b;->b:I

    .line 151
    .line 152
    and-int/lit8 v0, v0, -0x21

    .line 153
    .line 154
    iput v0, p0, Lgb/g$b;->b:I

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_c
    iget v0, p0, Lgb/g$b;->b:I

    .line 158
    .line 159
    const/16 v1, 0x20

    .line 160
    .line 161
    and-int/2addr v0, v1

    .line 162
    if-eq v0, v1, :cond_d

    .line 163
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    .line 165
    .line 166
    iget-object v2, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 167
    .line 168
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 172
    .line 173
    iget v0, p0, Lgb/g$b;->b:I

    .line 174
    .line 175
    or-int/2addr v0, v1

    .line 176
    iput v0, p0, Lgb/g$b;->b:I

    .line 177
    .line 178
    :cond_d
    iget-object v0, p0, Lgb/g$b;->h:Ljava/util/List;

    .line 179
    .line 180
    iget-object v1, p1, Lgb/g;->h:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    :cond_e
    :goto_4
    iget-object v0, p1, Lgb/g;->j:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_11

    .line 192
    .line 193
    iget-object v0, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_f

    .line 200
    .line 201
    iget-object v0, p1, Lgb/g;->j:Ljava/util/List;

    .line 202
    .line 203
    iput-object v0, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 204
    .line 205
    iget v0, p0, Lgb/g$b;->b:I

    .line 206
    .line 207
    and-int/lit8 v0, v0, -0x41

    .line 208
    .line 209
    iput v0, p0, Lgb/g$b;->b:I

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_f
    iget v0, p0, Lgb/g$b;->b:I

    .line 213
    .line 214
    const/16 v1, 0x40

    .line 215
    .line 216
    and-int/2addr v0, v1

    .line 217
    if-eq v0, v1, :cond_10

    .line 218
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    .line 220
    .line 221
    iget-object v2, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 222
    .line 223
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .line 225
    .line 226
    iput-object v0, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 227
    .line 228
    iget v0, p0, Lgb/g$b;->b:I

    .line 229
    .line 230
    or-int/2addr v0, v1

    .line 231
    iput v0, p0, Lgb/g$b;->b:I

    .line 232
    .line 233
    :cond_10
    iget-object v0, p0, Lgb/g$b;->j:Ljava/util/List;

    .line 234
    .line 235
    iget-object v1, p1, Lgb/g;->j:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    .line 239
    .line 240
    :cond_11
    :goto_5
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 241
    .line 242
    iget-object p1, p1, Lgb/g;->a:Lmb/c;

    .line 243
    .line 244
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 249
    .line 250
    return-void
.end method

.method public final n(Lmb/d;Lmb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lgb/g;->n:Lgb/g$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/g;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/g;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/g$b;->l(Lgb/g;)V

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
    check-cast p2, Lgb/g;
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
    invoke-virtual {p0, p2}, Lgb/g$b;->l(Lgb/g;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
