.class public final Lgb/q$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/q;",
        "Lgb/q$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/r;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lgb/p;

.field public j:I

.field public k:Lgb/p;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
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

    .line 1
    invoke-direct {p0}, Lmb/h$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lgb/q$b;->e:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 12
    .line 13
    sget-object v0, Lgb/p;->w:Lgb/p;

    .line 14
    .line 15
    iput-object v0, p0, Lgb/q$b;->h:Lgb/p;

    .line 16
    .line 17
    iput-object v0, p0, Lgb/q$b;->k:Lgb/p;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 30
    .line 31
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

    invoke-virtual {p0, p1, p2}, Lgb/q$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/q$b;->l()Lgb/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/q;->b()Z

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
    new-instance v0, Lgb/q$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/q$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/q$b;->l()Lgb/q;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/q$b;->n(Lgb/q;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/q$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/q$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/q$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/q$b;->l()Lgb/q;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/q$b;->n(Lgb/q;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/q;

    invoke-virtual {p0, p1}, Lgb/q$b;->n(Lgb/q;)V

    return-object p0
.end method

.method public final l()Lgb/q;
    .locals 5

    .line 1
    new-instance v0, Lgb/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/q;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/q$b;->d:I

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
    iget v2, p0, Lgb/q$b;->e:I

    .line 16
    .line 17
    iput v2, v0, Lgb/q;->d:I

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
    iget v2, p0, Lgb/q$b;->f:I

    .line 27
    .line 28
    iput v2, v0, Lgb/q;->e:I

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
    iget-object v2, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 42
    .line 43
    iget v2, p0, Lgb/q$b;->d:I

    .line 44
    .line 45
    and-int/lit8 v2, v2, -0x5

    .line 46
    .line 47
    iput v2, p0, Lgb/q$b;->d:I

    .line 48
    .line 49
    :cond_2
    iget-object v2, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 50
    .line 51
    iput-object v2, v0, Lgb/q;->f:Ljava/util/List;

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
    iget-object v2, p0, Lgb/q$b;->h:Lgb/p;

    .line 62
    .line 63
    iput-object v2, v0, Lgb/q;->g:Lgb/p;

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
    iget v2, p0, Lgb/q$b;->j:I

    .line 74
    .line 75
    iput v2, v0, Lgb/q;->h:I

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
    iget-object v2, p0, Lgb/q$b;->k:Lgb/p;

    .line 86
    .line 87
    iput-object v2, v0, Lgb/q;->j:Lgb/p;

    .line 88
    .line 89
    const/16 v2, 0x40

    .line 90
    .line 91
    and-int/2addr v1, v2

    .line 92
    if-ne v1, v2, :cond_6

    .line 93
    .line 94
    or-int/lit8 v3, v3, 0x20

    .line 95
    .line 96
    :cond_6
    iget v1, p0, Lgb/q$b;->l:I

    .line 97
    .line 98
    iput v1, v0, Lgb/q;->k:I

    .line 99
    .line 100
    iget v1, p0, Lgb/q$b;->d:I

    .line 101
    .line 102
    const/16 v2, 0x80

    .line 103
    .line 104
    and-int/2addr v1, v2

    .line 105
    if-ne v1, v2, :cond_7

    .line 106
    .line 107
    iget-object v1, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 114
    .line 115
    iget v1, p0, Lgb/q$b;->d:I

    .line 116
    .line 117
    and-int/lit16 v1, v1, -0x81

    .line 118
    .line 119
    iput v1, p0, Lgb/q$b;->d:I

    .line 120
    .line 121
    :cond_7
    iget-object v1, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 122
    .line 123
    iput-object v1, v0, Lgb/q;->l:Ljava/util/List;

    .line 124
    .line 125
    iget v1, p0, Lgb/q$b;->d:I

    .line 126
    .line 127
    const/16 v2, 0x100

    .line 128
    .line 129
    and-int/2addr v1, v2

    .line 130
    if-ne v1, v2, :cond_8

    .line 131
    .line 132
    iget-object v1, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 133
    .line 134
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iput-object v1, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 139
    .line 140
    iget v1, p0, Lgb/q$b;->d:I

    .line 141
    .line 142
    and-int/lit16 v1, v1, -0x101

    .line 143
    .line 144
    iput v1, p0, Lgb/q$b;->d:I

    .line 145
    .line 146
    :cond_8
    iget-object v1, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 147
    .line 148
    iput-object v1, v0, Lgb/q;->m:Ljava/util/List;

    .line 149
    .line 150
    iput v3, v0, Lgb/q;->c:I

    .line 151
    .line 152
    return-object v0
.end method

.method public final n(Lgb/q;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/q;->q:Lgb/q;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/q;->c:I

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
    iget v1, p1, Lgb/q;->d:I

    .line 20
    .line 21
    iget v4, p0, Lgb/q$b;->d:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/q$b;->d:I

    .line 25
    .line 26
    iput v1, p0, Lgb/q$b;->e:I

    .line 27
    .line 28
    :cond_2
    const/4 v1, 0x2

    .line 29
    and-int/2addr v0, v1

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v0, 0x0

    .line 35
    :goto_1
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget v0, p1, Lgb/q;->e:I

    .line 38
    .line 39
    iget v4, p0, Lgb/q$b;->d:I

    .line 40
    .line 41
    or-int/2addr v1, v4

    .line 42
    iput v1, p0, Lgb/q$b;->d:I

    .line 43
    .line 44
    iput v0, p0, Lgb/q$b;->f:I

    .line 45
    .line 46
    :cond_4
    iget-object v0, p1, Lgb/q;->f:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x4

    .line 53
    if-nez v0, :cond_7

    .line 54
    .line 55
    iget-object v0, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    iget-object v0, p1, Lgb/q;->f:Ljava/util/List;

    .line 64
    .line 65
    iput-object v0, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 66
    .line 67
    iget v0, p0, Lgb/q$b;->d:I

    .line 68
    .line 69
    and-int/lit8 v0, v0, -0x5

    .line 70
    .line 71
    iput v0, p0, Lgb/q$b;->d:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    iget v0, p0, Lgb/q$b;->d:I

    .line 75
    .line 76
    and-int/2addr v0, v1

    .line 77
    if-eq v0, v1, :cond_6

    .line 78
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v4, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 82
    .line 83
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 87
    .line 88
    iget v0, p0, Lgb/q$b;->d:I

    .line 89
    .line 90
    or-int/2addr v0, v1

    .line 91
    iput v0, p0, Lgb/q$b;->d:I

    .line 92
    .line 93
    :cond_6
    iget-object v0, p0, Lgb/q$b;->g:Ljava/util/List;

    .line 94
    .line 95
    iget-object v4, p1, Lgb/q;->f:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :cond_7
    :goto_2
    iget v0, p1, Lgb/q;->c:I

    .line 101
    .line 102
    and-int/2addr v0, v1

    .line 103
    if-ne v0, v1, :cond_8

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_3

    .line 107
    :cond_8
    const/4 v0, 0x0

    .line 108
    :goto_3
    const/16 v1, 0x8

    .line 109
    .line 110
    if-eqz v0, :cond_a

    .line 111
    .line 112
    iget-object v0, p1, Lgb/q;->g:Lgb/p;

    .line 113
    .line 114
    iget v4, p0, Lgb/q$b;->d:I

    .line 115
    .line 116
    and-int/2addr v4, v1

    .line 117
    if-ne v4, v1, :cond_9

    .line 118
    .line 119
    iget-object v4, p0, Lgb/q$b;->h:Lgb/p;

    .line 120
    .line 121
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 122
    .line 123
    if-eq v4, v5, :cond_9

    .line 124
    .line 125
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_9
    iput-object v0, p0, Lgb/q$b;->h:Lgb/p;

    .line 137
    .line 138
    iget v0, p0, Lgb/q$b;->d:I

    .line 139
    .line 140
    or-int/2addr v0, v1

    .line 141
    iput v0, p0, Lgb/q$b;->d:I

    .line 142
    .line 143
    :cond_a
    iget v0, p1, Lgb/q;->c:I

    .line 144
    .line 145
    and-int/lit8 v4, v0, 0x8

    .line 146
    .line 147
    if-ne v4, v1, :cond_b

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    goto :goto_4

    .line 151
    :cond_b
    const/4 v1, 0x0

    .line 152
    :goto_4
    const/16 v4, 0x10

    .line 153
    .line 154
    if-eqz v1, :cond_c

    .line 155
    .line 156
    iget v1, p1, Lgb/q;->h:I

    .line 157
    .line 158
    iget v5, p0, Lgb/q$b;->d:I

    .line 159
    .line 160
    or-int/2addr v5, v4

    .line 161
    iput v5, p0, Lgb/q$b;->d:I

    .line 162
    .line 163
    iput v1, p0, Lgb/q$b;->j:I

    .line 164
    .line 165
    :cond_c
    and-int/2addr v0, v4

    .line 166
    if-ne v0, v4, :cond_d

    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    goto :goto_5

    .line 170
    :cond_d
    const/4 v0, 0x0

    .line 171
    :goto_5
    const/16 v1, 0x20

    .line 172
    .line 173
    if-eqz v0, :cond_f

    .line 174
    .line 175
    iget-object v0, p1, Lgb/q;->j:Lgb/p;

    .line 176
    .line 177
    iget v4, p0, Lgb/q$b;->d:I

    .line 178
    .line 179
    and-int/2addr v4, v1

    .line 180
    if-ne v4, v1, :cond_e

    .line 181
    .line 182
    iget-object v4, p0, Lgb/q$b;->k:Lgb/p;

    .line 183
    .line 184
    sget-object v5, Lgb/p;->w:Lgb/p;

    .line 185
    .line 186
    if-eq v4, v5, :cond_e

    .line 187
    .line 188
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4, v0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Lgb/p$c;->l()Lgb/p;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_e
    iput-object v0, p0, Lgb/q$b;->k:Lgb/p;

    .line 200
    .line 201
    iget v0, p0, Lgb/q$b;->d:I

    .line 202
    .line 203
    or-int/2addr v0, v1

    .line 204
    iput v0, p0, Lgb/q$b;->d:I

    .line 205
    .line 206
    :cond_f
    iget v0, p1, Lgb/q;->c:I

    .line 207
    .line 208
    and-int/2addr v0, v1

    .line 209
    if-ne v0, v1, :cond_10

    .line 210
    .line 211
    const/4 v2, 0x1

    .line 212
    :cond_10
    if-eqz v2, :cond_11

    .line 213
    .line 214
    iget v0, p1, Lgb/q;->k:I

    .line 215
    .line 216
    iget v1, p0, Lgb/q$b;->d:I

    .line 217
    .line 218
    or-int/lit8 v1, v1, 0x40

    .line 219
    .line 220
    iput v1, p0, Lgb/q$b;->d:I

    .line 221
    .line 222
    iput v0, p0, Lgb/q$b;->l:I

    .line 223
    .line 224
    :cond_11
    iget-object v0, p1, Lgb/q;->l:Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_14

    .line 231
    .line 232
    iget-object v0, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_12

    .line 239
    .line 240
    iget-object v0, p1, Lgb/q;->l:Ljava/util/List;

    .line 241
    .line 242
    iput-object v0, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 243
    .line 244
    iget v0, p0, Lgb/q$b;->d:I

    .line 245
    .line 246
    and-int/lit16 v0, v0, -0x81

    .line 247
    .line 248
    iput v0, p0, Lgb/q$b;->d:I

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_12
    iget v0, p0, Lgb/q$b;->d:I

    .line 252
    .line 253
    const/16 v1, 0x80

    .line 254
    .line 255
    and-int/2addr v0, v1

    .line 256
    if-eq v0, v1, :cond_13

    .line 257
    .line 258
    new-instance v0, Ljava/util/ArrayList;

    .line 259
    .line 260
    iget-object v2, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 261
    .line 262
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 263
    .line 264
    .line 265
    iput-object v0, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 266
    .line 267
    iget v0, p0, Lgb/q$b;->d:I

    .line 268
    .line 269
    or-int/2addr v0, v1

    .line 270
    iput v0, p0, Lgb/q$b;->d:I

    .line 271
    .line 272
    :cond_13
    iget-object v0, p0, Lgb/q$b;->m:Ljava/util/List;

    .line 273
    .line 274
    iget-object v1, p1, Lgb/q;->l:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    .line 278
    .line 279
    :cond_14
    :goto_6
    iget-object v0, p1, Lgb/q;->m:Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_17

    .line 286
    .line 287
    iget-object v0, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 288
    .line 289
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_15

    .line 294
    .line 295
    iget-object v0, p1, Lgb/q;->m:Ljava/util/List;

    .line 296
    .line 297
    iput-object v0, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 298
    .line 299
    iget v0, p0, Lgb/q$b;->d:I

    .line 300
    .line 301
    and-int/lit16 v0, v0, -0x101

    .line 302
    .line 303
    iput v0, p0, Lgb/q$b;->d:I

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_15
    iget v0, p0, Lgb/q$b;->d:I

    .line 307
    .line 308
    const/16 v1, 0x100

    .line 309
    .line 310
    and-int/2addr v0, v1

    .line 311
    if-eq v0, v1, :cond_16

    .line 312
    .line 313
    new-instance v0, Ljava/util/ArrayList;

    .line 314
    .line 315
    iget-object v2, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 316
    .line 317
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    .line 319
    .line 320
    iput-object v0, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 321
    .line 322
    iget v0, p0, Lgb/q$b;->d:I

    .line 323
    .line 324
    or-int/2addr v0, v1

    .line 325
    iput v0, p0, Lgb/q$b;->d:I

    .line 326
    .line 327
    :cond_16
    iget-object v0, p0, Lgb/q$b;->n:Ljava/util/List;

    .line 328
    .line 329
    iget-object v1, p1, Lgb/q;->m:Ljava/util/List;

    .line 330
    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    .line 333
    .line 334
    :cond_17
    :goto_7
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 338
    .line 339
    iget-object p1, p1, Lgb/q;->b:Lmb/c;

    .line 340
    .line 341
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 346
    .line 347
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
    sget-object v0, Lgb/q;->r:Lgb/q$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/q;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/q;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/q$b;->n(Lgb/q;)V

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
    check-cast p2, Lgb/q;
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
    invoke-virtual {p0, p2}, Lgb/q$b;->n(Lgb/q;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
