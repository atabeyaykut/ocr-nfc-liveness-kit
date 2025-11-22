.class public final Lcom/google/android/gms/internal/clearcut/f4;
.super Lcom/google/android/gms/internal/clearcut/u3;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/u3<",
        "Lcom/google/android/gms/internal/clearcut/f4;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public c:J

.field public d:J

.field public final e:Ljava/lang/String;

.field public f:I

.field public final g:Ljava/lang/String;

.field public h:[Lcom/google/android/gms/internal/clearcut/g4;

.field public final j:[B

.field public k:[B

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:Lcom/google/android/gms/internal/clearcut/c4;

.field public final p:Ljava/lang/String;

.field public q:J

.field public r:Lcom/google/android/gms/internal/clearcut/d4;

.field public s:[B

.field public final t:Ljava/lang/String;

.field public v:[I

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/u3;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->e:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->g:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/clearcut/g4;->e:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/internal/clearcut/x3;->a:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/clearcut/g4;->e:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    new-array v2, v0, [Lcom/google/android/gms/internal/clearcut/g4;

    .line 33
    .line 34
    sput-object v2, Lcom/google/android/gms/internal/clearcut/g4;->e:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 35
    .line 36
    :cond_0
    monitor-exit v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/g4;->e:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 44
    .line 45
    sget-object v1, La0/b;->k:[B

    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->j:[B

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 51
    .line 52
    const-string v3, ""

    .line 53
    .line 54
    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->l:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, ""

    .line 57
    .line 58
    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->m:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->p:Ljava/lang/String;

    .line 65
    .line 66
    const-wide/32 v3, 0x2bf20

    .line 67
    .line 68
    .line 69
    iput-wide v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 70
    .line 71
    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 74
    .line 75
    const-string v1, ""

    .line 76
    .line 77
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->t:Ljava/lang/String;

    .line 78
    .line 79
    sget-object v1, La0/b;->f:[I

    .line 80
    .line 81
    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 84
    .line 85
    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 86
    .line 87
    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/google/android/gms/internal/clearcut/y3;->a:I

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/u3;->g()Lcom/google/android/gms/internal/clearcut/u3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/f4;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/g4;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/g4;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/clearcut/g4;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/c4;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/c4;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/d4;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/d4;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final d()I
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/u3;->d()I

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v6, v0, v4

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/s3;->m(J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v6

    .line 23
    add-int/2addr v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    const/4 v1, 0x2

    .line 27
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->e:Ljava/lang/String;

    .line 28
    .line 29
    const-string v7, ""

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    if-lez v1, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 53
    .line 54
    array-length v8, v6

    .line 55
    if-ge v1, v8, :cond_3

    .line 56
    .line 57
    aget-object v6, v6, v1

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    const/4 v8, 0x3

    .line 62
    invoke-static {v8}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/y3;->c()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/s3;->o(I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    add-int/2addr v9, v6

    .line 75
    add-int/2addr v9, v8

    .line 76
    add-int/2addr v0, v9

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    sget-object v1, La0/b;->k:[B

    .line 81
    .line 82
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->j:[B

    .line 83
    .line 84
    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_4

    .line 89
    .line 90
    const/4 v8, 0x4

    .line 91
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/clearcut/s3;->h(I[B)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    add-int/2addr v0, v6

    .line 96
    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 97
    .line 98
    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_5

    .line 103
    .line 104
    const/4 v6, 0x6

    .line 105
    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 106
    .line 107
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/clearcut/s3;->h(I[B)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    add-int/2addr v0, v6

    .line 112
    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 113
    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    const/4 v8, 0x7

    .line 117
    invoke-static {v8}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/y3;->c()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/s3;->o(I)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    add-int/2addr v9, v6

    .line 130
    add-int/2addr v9, v8

    .line 131
    add-int/2addr v0, v9

    .line 132
    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->l:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v6, :cond_7

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_7

    .line 141
    .line 142
    const/16 v8, 0x8

    .line 143
    .line 144
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    add-int/2addr v0, v6

    .line 149
    :cond_7
    iget v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 150
    .line 151
    if-eqz v6, :cond_9

    .line 152
    .line 153
    const/16 v8, 0xb

    .line 154
    .line 155
    invoke-static {v8}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-ltz v6, :cond_8

    .line 160
    .line 161
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/s3;->o(I)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    goto :goto_2

    .line 166
    :cond_8
    const/16 v6, 0xa

    .line 167
    .line 168
    :goto_2
    add-int/2addr v6, v8

    .line 169
    add-int/2addr v0, v6

    .line 170
    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->m:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v6, :cond_a

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_a

    .line 179
    .line 180
    const/16 v8, 0xd

    .line 181
    .line 182
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    add-int/2addr v0, v6

    .line 187
    :cond_a
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->p:Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v6, :cond_b

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-nez v8, :cond_b

    .line 196
    .line 197
    const/16 v8, 0xe

    .line 198
    .line 199
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    add-int/2addr v0, v6

    .line 204
    :cond_b
    iget-wide v8, p0, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 205
    .line 206
    const-wide/32 v10, 0x2bf20

    .line 207
    .line 208
    .line 209
    cmp-long v6, v8, v10

    .line 210
    .line 211
    if-eqz v6, :cond_c

    .line 212
    .line 213
    const/16 v6, 0xf

    .line 214
    .line 215
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    shl-long v10, v8, v2

    .line 220
    .line 221
    const/16 v12, 0x3f

    .line 222
    .line 223
    shr-long/2addr v8, v12

    .line 224
    xor-long/2addr v8, v10

    .line 225
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/clearcut/s3;->m(J)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    add-int/2addr v8, v6

    .line 230
    add-int/2addr v0, v8

    .line 231
    :cond_c
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 232
    .line 233
    if-eqz v6, :cond_d

    .line 234
    .line 235
    const/16 v8, 0x10

    .line 236
    .line 237
    invoke-static {v8}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/y3;->c()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/s3;->o(I)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    add-int/2addr v9, v6

    .line 250
    add-int/2addr v9, v8

    .line 251
    add-int/2addr v0, v9

    .line 252
    :cond_d
    iget-wide v8, p0, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 253
    .line 254
    cmp-long v6, v8, v4

    .line 255
    .line 256
    if-eqz v6, :cond_e

    .line 257
    .line 258
    const/16 v4, 0x11

    .line 259
    .line 260
    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/clearcut/s3;->m(J)I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    add-int/2addr v5, v4

    .line 269
    add-int/2addr v0, v5

    .line 270
    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 271
    .line 272
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_f

    .line 277
    .line 278
    const/16 v1, 0x12

    .line 279
    .line 280
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 281
    .line 282
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/clearcut/s3;->h(I[B)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    add-int/2addr v0, v1

    .line 287
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 288
    .line 289
    if-eqz v1, :cond_12

    .line 290
    .line 291
    array-length v1, v1

    .line 292
    if-lez v1, :cond_12

    .line 293
    .line 294
    const/4 v1, 0x0

    .line 295
    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 296
    .line 297
    array-length v5, v4

    .line 298
    if-ge v3, v5, :cond_11

    .line 299
    .line 300
    aget v4, v4, v3

    .line 301
    .line 302
    if-ltz v4, :cond_10

    .line 303
    .line 304
    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/s3;->o(I)I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    goto :goto_4

    .line 309
    :cond_10
    const/16 v4, 0xa

    .line 310
    .line 311
    :goto_4
    add-int/2addr v1, v4

    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_11
    add-int/2addr v0, v1

    .line 316
    array-length v1, v4

    .line 317
    mul-int/lit8 v1, v1, 0x2

    .line 318
    .line 319
    add-int/2addr v0, v1

    .line 320
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->t:Ljava/lang/String;

    .line 321
    .line 322
    if-eqz v1, :cond_13

    .line 323
    .line 324
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    if-nez v3, :cond_13

    .line 329
    .line 330
    const/16 v3, 0x18

    .line 331
    .line 332
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    add-int/2addr v0, v1

    .line 337
    :cond_13
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 338
    .line 339
    if-eqz v1, :cond_14

    .line 340
    .line 341
    const/16 v1, 0x19

    .line 342
    .line 343
    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/s3;->n(I)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    add-int/2addr v1, v2

    .line 348
    add-int/2addr v0, v1

    .line 349
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->g:Ljava/lang/String;

    .line 350
    .line 351
    if-eqz v1, :cond_15

    .line 352
    .line 353
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_15

    .line 358
    .line 359
    const/16 v2, 0x1a

    .line 360
    .line 361
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    add-int/2addr v0, v1

    .line 366
    :cond_15
    return v0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/clearcut/y3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/f4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/f4;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/f4;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/f4;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->e:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->e:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v3, :cond_4

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 48
    .line 49
    iget v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->g:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->g:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v3, :cond_7

    .line 59
    .line 60
    if-eqz v1, :cond_8

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 73
    .line 74
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/x3;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_9

    .line 79
    .line 80
    return v2

    .line 81
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->j:[B

    .line 82
    .line 83
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->j:[B

    .line 84
    .line 85
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_a

    .line 90
    .line 91
    return v2

    .line 92
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 96
    .line 97
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 98
    .line 99
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_b

    .line 104
    .line 105
    return v2

    .line 106
    :cond_b
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->l:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->l:Ljava/lang/String;

    .line 109
    .line 110
    if-nez v3, :cond_c

    .line 111
    .line 112
    if-eqz v1, :cond_d

    .line 113
    .line 114
    return v2

    .line 115
    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_d

    .line 120
    .line 121
    return v2

    .line 122
    :cond_d
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->m:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->m:Ljava/lang/String;

    .line 125
    .line 126
    if-nez v3, :cond_e

    .line 127
    .line 128
    if-eqz v1, :cond_f

    .line 129
    .line 130
    return v2

    .line 131
    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_f

    .line 136
    .line 137
    return v2

    .line 138
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 139
    .line 140
    if-nez v1, :cond_10

    .line 141
    .line 142
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 143
    .line 144
    if-eqz v1, :cond_11

    .line 145
    .line 146
    return v2

    .line 147
    :cond_10
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/c4;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_11

    .line 154
    .line 155
    return v2

    .line 156
    :cond_11
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->p:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->p:Ljava/lang/String;

    .line 159
    .line 160
    if-nez v3, :cond_12

    .line 161
    .line 162
    if-eqz v1, :cond_13

    .line 163
    .line 164
    return v2

    .line 165
    :cond_12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_13

    .line 170
    .line 171
    return v2

    .line 172
    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 173
    .line 174
    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 175
    .line 176
    cmp-long v1, v3, v5

    .line 177
    .line 178
    if-eqz v1, :cond_14

    .line 179
    .line 180
    return v2

    .line 181
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 182
    .line 183
    if-nez v1, :cond_15

    .line 184
    .line 185
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 186
    .line 187
    if-eqz v1, :cond_16

    .line 188
    .line 189
    return v2

    .line 190
    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/d4;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_16

    .line 197
    .line 198
    return v2

    .line 199
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 200
    .line 201
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 202
    .line 203
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_17

    .line 208
    .line 209
    return v2

    .line 210
    :cond_17
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/f4;->t:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->t:Ljava/lang/String;

    .line 213
    .line 214
    if-nez v3, :cond_18

    .line 215
    .line 216
    if-eqz v1, :cond_19

    .line 217
    .line 218
    return v2

    .line 219
    :cond_18
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_19

    .line 224
    .line 225
    return v2

    .line 226
    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 227
    .line 228
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 229
    .line 230
    if-eqz v1, :cond_1b

    .line 231
    .line 232
    array-length v4, v1

    .line 233
    if-nez v4, :cond_1a

    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_1a
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    goto :goto_2

    .line 241
    :cond_1b
    :goto_0
    if-eqz v3, :cond_1d

    .line 242
    .line 243
    array-length v1, v3

    .line 244
    if-nez v1, :cond_1c

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_1c
    const/4 v1, 0x0

    .line 248
    goto :goto_2

    .line 249
    :cond_1d
    :goto_1
    const/4 v1, 0x1

    .line 250
    :goto_2
    if-nez v1, :cond_1e

    .line 251
    .line 252
    return v2

    .line 253
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 257
    .line 258
    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 259
    .line 260
    if-eq v1, v3, :cond_1f

    .line 261
    .line 262
    return v2

    .line 263
    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 264
    .line 265
    if-eqz v1, :cond_21

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/v3;->b()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_20

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 275
    .line 276
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 277
    .line 278
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/v3;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    return p1

    .line 283
    :cond_21
    :goto_3
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 284
    .line 285
    if-eqz p1, :cond_23

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/v3;->b()Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_22

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_22
    return v2

    .line 295
    :cond_23
    :goto_4
    return v0
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/s3;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v6, v0, v4

    .line 8
    .line 9
    if-eqz v6, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/s3;->i(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/s3;->l(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->e:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    invoke-virtual {p1, v6, v0}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    if-lez v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 42
    .line 43
    array-length v7, v6

    .line 44
    if-ge v0, v7, :cond_3

    .line 45
    .line 46
    aget-object v6, v6, v0

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/s3;->b(ILcom/google/android/gms/internal/clearcut/u3;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget-object v0, La0/b;->k:[B

    .line 58
    .line 59
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->j:[B

    .line 60
    .line 61
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_4

    .line 66
    .line 67
    const/4 v7, 0x4

    .line 68
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/s3;->d(I[B)V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 72
    .line 73
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    const/4 v6, 0x6

    .line 80
    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 81
    .line 82
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/s3;->d(I[B)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 86
    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    const/4 v7, 0x7

    .line 90
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/s3;->b(ILcom/google/android/gms/internal/clearcut/u3;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->l:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_7

    .line 102
    .line 103
    const/16 v7, 0x8

    .line 104
    .line 105
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 109
    .line 110
    if-eqz v6, :cond_9

    .line 111
    .line 112
    const/16 v7, 0xb

    .line 113
    .line 114
    invoke-virtual {p1, v7, v3}, Lcom/google/android/gms/internal/clearcut/s3;->i(II)V

    .line 115
    .line 116
    .line 117
    if-ltz v6, :cond_8

    .line 118
    .line 119
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/clearcut/s3;->f(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_8
    int-to-long v6, v6

    .line 124
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/s3;->l(J)V

    .line 125
    .line 126
    .line 127
    :cond_9
    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->m:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v6, :cond_a

    .line 130
    .line 131
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_a

    .line 136
    .line 137
    const/16 v7, 0xd

    .line 138
    .line 139
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_a
    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->p:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v6, :cond_b

    .line 145
    .line 146
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-nez v7, :cond_b

    .line 151
    .line 152
    const/16 v7, 0xe

    .line 153
    .line 154
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 158
    .line 159
    const-wide/32 v8, 0x2bf20

    .line 160
    .line 161
    .line 162
    cmp-long v10, v6, v8

    .line 163
    .line 164
    if-eqz v10, :cond_c

    .line 165
    .line 166
    const/16 v8, 0xf

    .line 167
    .line 168
    invoke-virtual {p1, v8, v3}, Lcom/google/android/gms/internal/clearcut/s3;->i(II)V

    .line 169
    .line 170
    .line 171
    shl-long v8, v6, v2

    .line 172
    .line 173
    const/16 v2, 0x3f

    .line 174
    .line 175
    shr-long/2addr v6, v2

    .line 176
    xor-long/2addr v6, v8

    .line 177
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/s3;->l(J)V

    .line 178
    .line 179
    .line 180
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 181
    .line 182
    if-eqz v2, :cond_d

    .line 183
    .line 184
    const/16 v6, 0x10

    .line 185
    .line 186
    invoke-virtual {p1, v6, v2}, Lcom/google/android/gms/internal/clearcut/s3;->b(ILcom/google/android/gms/internal/clearcut/u3;)V

    .line 187
    .line 188
    .line 189
    :cond_d
    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 190
    .line 191
    cmp-long v2, v6, v4

    .line 192
    .line 193
    if-eqz v2, :cond_e

    .line 194
    .line 195
    const/16 v2, 0x11

    .line 196
    .line 197
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/s3;->i(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/s3;->l(J)V

    .line 201
    .line 202
    .line 203
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 204
    .line 205
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_f

    .line 210
    .line 211
    const/16 v0, 0x12

    .line 212
    .line 213
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 214
    .line 215
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/s3;->d(I[B)V

    .line 216
    .line 217
    .line 218
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 219
    .line 220
    if-eqz v0, :cond_11

    .line 221
    .line 222
    array-length v0, v0

    .line 223
    if-lez v0, :cond_11

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 227
    .line 228
    array-length v4, v2

    .line 229
    if-ge v0, v4, :cond_11

    .line 230
    .line 231
    aget v2, v2, v0

    .line 232
    .line 233
    const/16 v4, 0x14

    .line 234
    .line 235
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/internal/clearcut/s3;->i(II)V

    .line 236
    .line 237
    .line 238
    if-ltz v2, :cond_10

    .line 239
    .line 240
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/clearcut/s3;->f(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_10
    int-to-long v4, v2

    .line 245
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/clearcut/s3;->l(J)V

    .line 246
    .line 247
    .line 248
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->t:Ljava/lang/String;

    .line 252
    .line 253
    if-eqz v0, :cond_12

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_12

    .line 260
    .line 261
    const/16 v2, 0x18

    .line 262
    .line 263
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 267
    .line 268
    if-eqz v0, :cond_14

    .line 269
    .line 270
    const/16 v2, 0x19

    .line 271
    .line 272
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/s3;->i(II)V

    .line 273
    .line 274
    .line 275
    int-to-byte v0, v0

    .line 276
    iget-object v2, p1, Lcom/google/android/gms/internal/clearcut/s3;->a:Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_13

    .line 283
    .line 284
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/clearcut/t3;

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/t3;-><init>(II)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :cond_14
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->g:Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v0, :cond_15

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_15

    .line 311
    .line 312
    const/16 v1, 0x1a

    .line 313
    .line 314
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_15
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/u3;->f(Lcom/google/android/gms/internal/clearcut/s3;)V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public final synthetic g()Lcom/google/android/gms/internal/clearcut/u3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/f4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/f4;

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    const-class v0, Lcom/google/android/gms/internal/clearcut/f4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit16 v0, v0, 0x20f

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 16
    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    ushr-long v4, v1, v3

    .line 20
    .line 21
    xor-long/2addr v1, v4

    .line 22
    long-to-int v2, v1

    .line 23
    add-int/2addr v0, v2

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 27
    .line 28
    ushr-long v4, v1, v3

    .line 29
    .line 30
    xor-long/2addr v1, v4

    .line 31
    long-to-int v2, v1

    .line 32
    add-int/2addr v0, v2

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->e:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_0
    add-int/2addr v0, v2

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 52
    .line 53
    add-int/2addr v0, v2

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/f4;->g:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    :goto_1
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    const/16 v2, 0x4d5

    .line 72
    .line 73
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->h:[Lcom/google/android/gms/internal/clearcut/g4;

    .line 77
    .line 78
    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/x3;->b([Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    add-int/2addr v0, v4

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->j:[B

    .line 86
    .line 87
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    add-int/2addr v4, v0

    .line 92
    mul-int/lit8 v4, v4, 0x1f

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x0

    .line 95
    .line 96
    mul-int/lit8 v4, v4, 0x1f

    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 99
    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/2addr v0, v4

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->l:Ljava/lang/String;

    .line 108
    .line 109
    if-nez v4, :cond_2

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    :goto_2
    add-int/2addr v0, v4

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    .line 119
    .line 120
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->m:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v4, :cond_3

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    :goto_3
    add-int/2addr v0, v4

    .line 131
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->n:Lcom/google/android/gms/internal/clearcut/c4;

    .line 132
    .line 133
    mul-int/lit8 v0, v0, 0x1f

    .line 134
    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/c4;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    :goto_4
    add-int/2addr v0, v4

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    .line 145
    .line 146
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->p:Ljava/lang/String;

    .line 147
    .line 148
    if-nez v4, :cond_5

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    goto :goto_5

    .line 152
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    :goto_5
    add-int/2addr v0, v4

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    .line 158
    .line 159
    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 160
    .line 161
    ushr-long v6, v4, v3

    .line 162
    .line 163
    xor-long v3, v4, v6

    .line 164
    .line 165
    long-to-int v4, v3

    .line 166
    add-int/2addr v0, v4

    .line 167
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->r:Lcom/google/android/gms/internal/clearcut/d4;

    .line 168
    .line 169
    mul-int/lit8 v0, v0, 0x1f

    .line 170
    .line 171
    if-nez v3, :cond_6

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/d4;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    :goto_6
    add-int/2addr v0, v3

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    .line 182
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->s:[B

    .line 183
    .line 184
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    add-int/2addr v3, v0

    .line 189
    mul-int/lit8 v3, v3, 0x1f

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->t:Ljava/lang/String;

    .line 192
    .line 193
    if-nez v0, :cond_7

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    goto :goto_7

    .line 197
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    :goto_7
    add-int/2addr v3, v0

    .line 202
    mul-int/lit8 v3, v3, 0x1f

    .line 203
    .line 204
    mul-int/lit8 v3, v3, 0x1f

    .line 205
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f4;->v:[I

    .line 207
    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    array-length v4, v0

    .line 211
    if-nez v4, :cond_8

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    goto :goto_9

    .line 219
    :cond_9
    :goto_8
    const/4 v0, 0x0

    .line 220
    :goto_9
    add-int/2addr v0, v3

    .line 221
    mul-int/lit8 v0, v0, 0x1f

    .line 222
    .line 223
    mul-int/lit8 v0, v0, 0x1f

    .line 224
    .line 225
    add-int/lit8 v0, v0, 0x0

    .line 226
    .line 227
    mul-int/lit8 v0, v0, 0x1f

    .line 228
    .line 229
    iget-boolean v3, p0, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 230
    .line 231
    if-eqz v3, :cond_a

    .line 232
    .line 233
    const/16 v2, 0x4cf

    .line 234
    .line 235
    :cond_a
    add-int/2addr v0, v2

    .line 236
    mul-int/lit8 v0, v0, 0x1f

    .line 237
    .line 238
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 239
    .line 240
    if-eqz v2, :cond_c

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/v3;->b()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_b

    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/v3;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    :cond_c
    :goto_a
    add-int/2addr v0, v1

    .line 256
    return v0
.end method
