.class public final Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a;


# instance fields
.field public a:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final b:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final c:Lu0/a$a;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public k:I

.field public l:Lu0/c;

.field public m:Landroid/graphics/Bitmap;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Landroid/graphics/Bitmap$Config;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/b;Lu0/c;Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1    # Li1/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lu0/e;->b:[I

    .line 9
    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    iput-object v0, p0, Lu0/e;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-object p1, p0, Lu0/e;->c:Lu0/a$a;

    .line 15
    .line 16
    new-instance p1, Lu0/c;

    .line 17
    .line 18
    invoke-direct {p1}, Lu0/c;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lu0/e;->l:Lu0/c;

    .line 22
    .line 23
    const-string p1, "Sample size must be >=0, not: "

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    if-lez p4, :cond_4

    .line 27
    .line 28
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p4, 0x0

    .line 33
    iput p4, p0, Lu0/e;->o:I

    .line 34
    .line 35
    iput-object p2, p0, Lu0/e;->l:Lu0/c;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lu0/e;->k:I

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iput-boolean p4, p0, Lu0/e;->n:Z

    .line 57
    .line 58
    iget-object p3, p2, Lu0/c;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-eqz p4, :cond_1

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    check-cast p4, Lu0/b;

    .line 75
    .line 76
    iget p4, p4, Lu0/b;->g:I

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    if-ne p4, v0, :cond_0

    .line 80
    .line 81
    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, Lu0/e;->n:Z

    .line 83
    .line 84
    :cond_1
    iput p1, p0, Lu0/e;->p:I

    .line 85
    .line 86
    iget p3, p2, Lu0/c;->f:I

    .line 87
    .line 88
    div-int p4, p3, p1

    .line 89
    .line 90
    iput p4, p0, Lu0/e;->r:I

    .line 91
    .line 92
    iget p2, p2, Lu0/c;->g:I

    .line 93
    .line 94
    div-int p1, p2, p1

    .line 95
    .line 96
    iput p1, p0, Lu0/e;->q:I

    .line 97
    .line 98
    iget-object p1, p0, Lu0/e;->c:Lu0/a$a;

    .line 99
    .line 100
    mul-int p3, p3, p2

    .line 101
    .line 102
    check-cast p1, Li1/b;

    .line 103
    .line 104
    iget-object p1, p1, Li1/b;->b:Ly0/b;

    .line 105
    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    new-array p1, p3, [B

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const-class p2, [B

    .line 112
    .line 113
    invoke-interface {p1, p2, p3}, Ly0/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, [B

    .line 118
    .line 119
    :goto_0
    iput-object p1, p0, Lu0/e;->i:[B

    .line 120
    .line 121
    iget-object p1, p0, Lu0/e;->c:Lu0/a$a;

    .line 122
    .line 123
    iget p2, p0, Lu0/e;->r:I

    .line 124
    .line 125
    iget p3, p0, Lu0/e;->q:I

    .line 126
    .line 127
    mul-int p2, p2, p3

    .line 128
    .line 129
    check-cast p1, Li1/b;

    .line 130
    .line 131
    iget-object p1, p1, Li1/b;->b:Ly0/b;

    .line 132
    .line 133
    if-nez p1, :cond_3

    .line 134
    .line 135
    new-array p1, p2, [I

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const-class p3, [I

    .line 139
    .line 140
    invoke-interface {p1, p3, p2}, Ly0/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, [I

    .line 145
    .line 146
    :goto_1
    iput-object p1, p0, Lu0/e;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 150
    :cond_4
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0

    .line 170
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "No valid color table found for frame #"

    .line 2
    .line 3
    const-string v1, "Unable to decode frame, status="

    .line 4
    .line 5
    const-string v2, "Unable to decode frame, frameCount="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lu0/e;->l:Lu0/c;

    .line 9
    .line 10
    iget v3, v3, Lu0/c;->c:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lu0/e;->k:I

    .line 17
    .line 18
    if-gez v3, :cond_2

    .line 19
    .line 20
    :cond_0
    const-string v3, "e"

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const-string v3, "e"

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lu0/e;->l:Lu0/c;

    .line 36
    .line 37
    iget v2, v2, Lu0/c;->c:I

    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ", framePointer="

    .line 43
    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lu0/e;->k:I

    .line 48
    .line 49
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    iput v5, p0, Lu0/e;->o:I

    .line 60
    .line 61
    :cond_2
    iget v2, p0, Lu0/e;->o:I

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    if-eq v2, v5, :cond_b

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    if-ne v2, v6, :cond_3

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_3
    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lu0/e;->o:I

    .line 73
    .line 74
    iget-object v2, p0, Lu0/e;->e:[B

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    iget-object v2, p0, Lu0/e;->c:Lu0/a$a;

    .line 79
    .line 80
    check-cast v2, Li1/b;

    .line 81
    .line 82
    iget-object v2, v2, Li1/b;->b:Ly0/b;

    .line 83
    .line 84
    const/16 v7, 0xff

    .line 85
    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    new-array v2, v7, [B

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const-class v8, [B

    .line 92
    .line 93
    invoke-interface {v2, v8, v7}, Ly0/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, [B

    .line 98
    .line 99
    :goto_0
    iput-object v2, p0, Lu0/e;->e:[B

    .line 100
    .line 101
    :cond_5
    iget-object v2, p0, Lu0/e;->l:Lu0/c;

    .line 102
    .line 103
    iget-object v2, v2, Lu0/c;->e:Ljava/util/ArrayList;

    .line 104
    .line 105
    iget v7, p0, Lu0/e;->k:I

    .line 106
    .line 107
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lu0/b;

    .line 112
    .line 113
    iget v7, p0, Lu0/e;->k:I

    .line 114
    .line 115
    sub-int/2addr v7, v5

    .line 116
    if-ltz v7, :cond_6

    .line 117
    .line 118
    iget-object v8, p0, Lu0/e;->l:Lu0/c;

    .line 119
    .line 120
    iget-object v8, v8, Lu0/c;->e:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Lu0/b;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    move-object v7, v3

    .line 130
    :goto_1
    iget-object v8, v2, Lu0/b;->k:[I

    .line 131
    .line 132
    if-eqz v8, :cond_7

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    iget-object v8, p0, Lu0/e;->l:Lu0/c;

    .line 136
    .line 137
    iget-object v8, v8, Lu0/c;->a:[I

    .line 138
    .line 139
    :goto_2
    iput-object v8, p0, Lu0/e;->a:[I

    .line 140
    .line 141
    if-nez v8, :cond_9

    .line 142
    .line 143
    const-string v1, "e"

    .line 144
    .line 145
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    const-string v1, "e"

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v0, p0, Lu0/e;->k:I

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_8
    iput v5, p0, Lu0/e;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .line 172
    monitor-exit p0

    .line 173
    return-object v3

    .line 174
    :cond_9
    :try_start_1
    iget-boolean v0, v2, Lu0/b;->f:Z

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    iget-object v0, p0, Lu0/e;->b:[I

    .line 179
    .line 180
    array-length v3, v8

    .line 181
    invoke-static {v8, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lu0/e;->b:[I

    .line 185
    .line 186
    iput-object v0, p0, Lu0/e;->a:[I

    .line 187
    .line 188
    iget v3, v2, Lu0/b;->h:I

    .line 189
    .line 190
    aput v1, v0, v3

    .line 191
    .line 192
    iget v0, v2, Lu0/b;->g:I

    .line 193
    .line 194
    if-ne v0, v6, :cond_a

    .line 195
    .line 196
    iget v0, p0, Lu0/e;->k:I

    .line 197
    .line 198
    if-nez v0, :cond_a

    .line 199
    .line 200
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 201
    .line 202
    iput-object v0, p0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 203
    .line 204
    :cond_a
    invoke-virtual {p0, v2, v7}, Lu0/e;->i(Lu0/b;Lu0/b;)Landroid/graphics/Bitmap;

    .line 205
    .line 206
    .line 207
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    .line 209
    return-object v0

    .line 210
    :cond_b
    :goto_3
    :try_start_2
    const-string v0, "e"

    .line 211
    .line 212
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_c

    .line 217
    .line 218
    const-string v0, "e"

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget v1, p0, Lu0/e;->o:I

    .line 226
    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .line 236
    .line 237
    :cond_c
    monitor-exit p0

    .line 238
    return-object v3

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    monitor-exit p0

    .line 241
    throw v0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lu0/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lu0/e;->l:Lu0/c;

    iget v1, v1, Lu0/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lu0/e;->k:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lu0/e;->l:Lu0/c;

    iget v0, v0, Lu0/c;->c:I

    return v0
.end method

.method public final clear()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu0/e;->l:Lu0/c;

    .line 3
    .line 4
    iget-object v1, p0, Lu0/e;->i:[B

    .line 5
    .line 6
    iget-object v2, p0, Lu0/e;->c:Lu0/a$a;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    move-object v3, v2

    .line 11
    check-cast v3, Li1/b;

    .line 12
    .line 13
    iget-object v3, v3, Li1/b;->b:Ly0/b;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v3, v1}, Ly0/b;->put(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v1, p0, Lu0/e;->j:[I

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Li1/b;

    .line 27
    .line 28
    iget-object v3, v3, Li1/b;->b:Ly0/b;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-interface {v3, v1}, Ly0/b;->put(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_1
    iget-object v1, p0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Li1/b;

    .line 42
    .line 43
    iget-object v3, v3, Li1/b;->a:Ly0/c;

    .line 44
    .line 45
    invoke-interface {v3, v1}, Ly0/c;->d(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    iput-object v0, p0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 49
    .line 50
    iput-object v0, p0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iput-object v0, p0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 53
    .line 54
    iget-object v0, p0, Lu0/e;->e:[B

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    check-cast v2, Li1/b;

    .line 59
    .line 60
    iget-object v1, v2, Li1/b;->b:Ly0/b;

    .line 61
    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-interface {v1, v0}, Ly0/b;->put(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    :goto_2
    return-void
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/e;->l:Lu0/c;

    .line 2
    .line 3
    iget v1, v0, Lu0/c;->c:I

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    iget v2, p0, Lu0/e;->k:I

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ltz v2, :cond_1

    .line 13
    .line 14
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lu0/c;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lu0/b;

    .line 23
    .line 24
    iget v0, v0, Lu0/b;->i:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    :goto_0
    return v0

    .line 29
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lu0/e;->k:I

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lu0/e;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lu0/e;->j:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lu0/e;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_1
    iget v1, p0, Lu0/e;->r:I

    .line 18
    .line 19
    iget v2, p0, Lu0/e;->q:I

    .line 20
    .line 21
    iget-object v3, p0, Lu0/e;->c:Lu0/a$a;

    .line 22
    .line 23
    check-cast v3, Li1/b;

    .line 24
    .line 25
    iget-object v3, v3, Li1/b;->a:Ly0/c;

    .line 26
    .line 27
    invoke-interface {v3, v1, v2, v0}, Ly0/c;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final h(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lu0/e;->t:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final i(Lu0/b;Lu0/b;)Landroid/graphics/Bitmap;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v10, v0, Lu0/e;->j:[I

    .line 8
    .line 9
    iget-object v11, v0, Lu0/e;->c:Lu0/a$a;

    .line 10
    .line 11
    const/4 v12, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v4, v11

    .line 19
    check-cast v4, Li1/b;

    .line 20
    .line 21
    iget-object v4, v4, Li1/b;->a:Ly0/c;

    .line 22
    .line 23
    invoke-interface {v4, v3}, Ly0/c;->d(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    iput-object v3, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v13, 0x3

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget v3, v2, Lu0/b;->g:I

    .line 36
    .line 37
    if-ne v3, v13, :cond_2

    .line 38
    .line 39
    iget-object v3, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v14, 0x2

    .line 47
    if-eqz v2, :cond_7

    .line 48
    .line 49
    iget v3, v2, Lu0/b;->g:I

    .line 50
    .line 51
    if-lez v3, :cond_7

    .line 52
    .line 53
    if-ne v3, v14, :cond_6

    .line 54
    .line 55
    iget-boolean v3, v1, Lu0/b;->f:Z

    .line 56
    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    iget-object v3, v0, Lu0/e;->l:Lu0/c;

    .line 60
    .line 61
    iget v4, v3, Lu0/c;->k:I

    .line 62
    .line 63
    iget-object v5, v1, Lu0/b;->k:[I

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    iget v3, v3, Lu0/c;->j:I

    .line 68
    .line 69
    iget v5, v1, Lu0/b;->h:I

    .line 70
    .line 71
    if-ne v3, v5, :cond_4

    .line 72
    .line 73
    :cond_3
    const/4 v4, 0x0

    .line 74
    :cond_4
    iget v3, v2, Lu0/b;->d:I

    .line 75
    .line 76
    iget v5, v0, Lu0/e;->p:I

    .line 77
    .line 78
    div-int/2addr v3, v5

    .line 79
    iget v6, v2, Lu0/b;->b:I

    .line 80
    .line 81
    div-int/2addr v6, v5

    .line 82
    iget v7, v2, Lu0/b;->c:I

    .line 83
    .line 84
    div-int/2addr v7, v5

    .line 85
    iget v2, v2, Lu0/b;->a:I

    .line 86
    .line 87
    div-int/2addr v2, v5

    .line 88
    iget v5, v0, Lu0/e;->r:I

    .line 89
    .line 90
    mul-int v6, v6, v5

    .line 91
    .line 92
    add-int/2addr v6, v2

    .line 93
    mul-int v3, v3, v5

    .line 94
    .line 95
    add-int/2addr v3, v6

    .line 96
    :goto_0
    if-ge v6, v3, :cond_7

    .line 97
    .line 98
    add-int v2, v6, v7

    .line 99
    .line 100
    move v5, v6

    .line 101
    :goto_1
    if-ge v5, v2, :cond_5

    .line 102
    .line 103
    aput v4, v10, v5

    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    iget v2, v0, Lu0/e;->r:I

    .line 109
    .line 110
    add-int/2addr v6, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    if-ne v3, v13, :cond_7

    .line 113
    .line 114
    iget-object v2, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 115
    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    iget v8, v0, Lu0/e;->r:I

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    iget v9, v0, Lu0/e;->q:I

    .line 124
    .line 125
    move-object v3, v10

    .line 126
    move v5, v8

    .line 127
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v2, v0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    iget v3, v1, Lu0/b;->j:I

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    .line 136
    .line 137
    iget v2, v1, Lu0/b;->c:I

    .line 138
    .line 139
    iget v3, v1, Lu0/b;->d:I

    .line 140
    .line 141
    mul-int v2, v2, v3

    .line 142
    .line 143
    iget-object v3, v0, Lu0/e;->i:[B

    .line 144
    .line 145
    if-eqz v3, :cond_8

    .line 146
    .line 147
    array-length v3, v3

    .line 148
    if-ge v3, v2, :cond_a

    .line 149
    .line 150
    :cond_8
    check-cast v11, Li1/b;

    .line 151
    .line 152
    iget-object v3, v11, Li1/b;->b:Ly0/b;

    .line 153
    .line 154
    if-nez v3, :cond_9

    .line 155
    .line 156
    new-array v3, v2, [B

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_9
    const-class v4, [B

    .line 160
    .line 161
    invoke-interface {v3, v4, v2}, Ly0/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, [B

    .line 166
    .line 167
    :goto_2
    iput-object v3, v0, Lu0/e;->i:[B

    .line 168
    .line 169
    :cond_a
    iget-object v3, v0, Lu0/e;->i:[B

    .line 170
    .line 171
    iget-object v4, v0, Lu0/e;->f:[S

    .line 172
    .line 173
    const/16 v5, 0x1000

    .line 174
    .line 175
    if-nez v4, :cond_b

    .line 176
    .line 177
    new-array v4, v5, [S

    .line 178
    .line 179
    iput-object v4, v0, Lu0/e;->f:[S

    .line 180
    .line 181
    :cond_b
    iget-object v4, v0, Lu0/e;->f:[S

    .line 182
    .line 183
    iget-object v6, v0, Lu0/e;->g:[B

    .line 184
    .line 185
    if-nez v6, :cond_c

    .line 186
    .line 187
    new-array v6, v5, [B

    .line 188
    .line 189
    iput-object v6, v0, Lu0/e;->g:[B

    .line 190
    .line 191
    :cond_c
    iget-object v6, v0, Lu0/e;->g:[B

    .line 192
    .line 193
    iget-object v7, v0, Lu0/e;->h:[B

    .line 194
    .line 195
    if-nez v7, :cond_d

    .line 196
    .line 197
    const/16 v7, 0x1001

    .line 198
    .line 199
    new-array v7, v7, [B

    .line 200
    .line 201
    iput-object v7, v0, Lu0/e;->h:[B

    .line 202
    .line 203
    :cond_d
    iget-object v7, v0, Lu0/e;->h:[B

    .line 204
    .line 205
    iget-object v8, v0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    and-int/lit16 v8, v8, 0xff

    .line 212
    .line 213
    const/4 v9, 0x1

    .line 214
    shl-int v11, v9, v8

    .line 215
    .line 216
    add-int/lit8 v15, v11, 0x1

    .line 217
    .line 218
    add-int/lit8 v16, v11, 0x2

    .line 219
    .line 220
    add-int/2addr v8, v9

    .line 221
    shl-int v17, v9, v8

    .line 222
    .line 223
    const/4 v14, -0x1

    .line 224
    add-int/lit8 v17, v17, -0x1

    .line 225
    .line 226
    const/4 v5, 0x0

    .line 227
    :goto_3
    if-ge v5, v11, :cond_e

    .line 228
    .line 229
    aput-short v12, v4, v5

    .line 230
    .line 231
    int-to-byte v14, v5

    .line 232
    aput-byte v14, v6, v5

    .line 233
    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    const/4 v14, -0x1

    .line 237
    goto :goto_3

    .line 238
    :cond_e
    iget-object v5, v0, Lu0/e;->e:[B

    .line 239
    .line 240
    move-object v13, v0

    .line 241
    move/from16 v25, v8

    .line 242
    .line 243
    move/from16 v24, v16

    .line 244
    .line 245
    move/from16 v28, v17

    .line 246
    .line 247
    const/4 v9, 0x0

    .line 248
    const/4 v14, -0x1

    .line 249
    const/16 v20, 0x0

    .line 250
    .line 251
    const/16 v21, 0x0

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    const/16 v23, 0x0

    .line 256
    .line 257
    const/16 v26, 0x0

    .line 258
    .line 259
    const/16 v27, 0x0

    .line 260
    .line 261
    const/16 v29, 0x0

    .line 262
    .line 263
    :goto_4
    const/16 v30, 0x8

    .line 264
    .line 265
    if-ge v9, v2, :cond_1a

    .line 266
    .line 267
    if-nez v20, :cond_11

    .line 268
    .line 269
    iget-object v12, v0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 270
    .line 271
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->get()B

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    and-int/lit16 v12, v12, 0xff

    .line 276
    .line 277
    move/from16 v31, v8

    .line 278
    .line 279
    if-gtz v12, :cond_f

    .line 280
    .line 281
    move/from16 v32, v9

    .line 282
    .line 283
    move-object/from16 v34, v10

    .line 284
    .line 285
    move/from16 v33, v14

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_f
    iget-object v8, v13, Lu0/e;->d:Ljava/nio/ByteBuffer;

    .line 289
    .line 290
    move/from16 v32, v9

    .line 291
    .line 292
    iget-object v9, v13, Lu0/e;->e:[B

    .line 293
    .line 294
    move/from16 v33, v14

    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    move-object/from16 v34, v10

    .line 305
    .line 306
    const/4 v10, 0x0

    .line 307
    invoke-virtual {v8, v9, v10, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 308
    .line 309
    .line 310
    :goto_5
    if-gtz v12, :cond_10

    .line 311
    .line 312
    const/4 v8, 0x3

    .line 313
    iput v8, v13, Lu0/e;->o:I

    .line 314
    .line 315
    goto/16 :goto_d

    .line 316
    .line 317
    :cond_10
    move/from16 v20, v12

    .line 318
    .line 319
    const/16 v21, 0x0

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_11
    move/from16 v31, v8

    .line 323
    .line 324
    move/from16 v32, v9

    .line 325
    .line 326
    move-object/from16 v34, v10

    .line 327
    .line 328
    move/from16 v33, v14

    .line 329
    .line 330
    :goto_6
    aget-byte v8, v5, v21

    .line 331
    .line 332
    and-int/lit16 v8, v8, 0xff

    .line 333
    .line 334
    shl-int v8, v8, v22

    .line 335
    .line 336
    add-int v23, v23, v8

    .line 337
    .line 338
    add-int/lit8 v22, v22, 0x8

    .line 339
    .line 340
    const/4 v8, 0x1

    .line 341
    add-int/lit8 v21, v21, 0x1

    .line 342
    .line 343
    const/4 v8, -0x1

    .line 344
    add-int/lit8 v20, v20, -0x1

    .line 345
    .line 346
    move/from16 v10, v22

    .line 347
    .line 348
    move/from16 v12, v24

    .line 349
    .line 350
    move/from16 v8, v25

    .line 351
    .line 352
    move/from16 v9, v32

    .line 353
    .line 354
    move/from16 v14, v33

    .line 355
    .line 356
    move-object/from16 v22, v5

    .line 357
    .line 358
    move/from16 v5, v26

    .line 359
    .line 360
    :goto_7
    if-lt v10, v8, :cond_19

    .line 361
    .line 362
    move-object/from16 v24, v13

    .line 363
    .line 364
    and-int v13, v23, v28

    .line 365
    .line 366
    shr-int v23, v23, v8

    .line 367
    .line 368
    sub-int/2addr v10, v8

    .line 369
    if-ne v13, v11, :cond_12

    .line 370
    .line 371
    move/from16 v25, v10

    .line 372
    .line 373
    move/from16 v12, v16

    .line 374
    .line 375
    move/from16 v28, v17

    .line 376
    .line 377
    move-object/from16 v13, v24

    .line 378
    .line 379
    move/from16 v8, v31

    .line 380
    .line 381
    const/4 v14, -0x1

    .line 382
    move/from16 v24, v5

    .line 383
    .line 384
    const/16 v5, 0x1000

    .line 385
    .line 386
    goto/16 :goto_b

    .line 387
    .line 388
    :cond_12
    if-ne v13, v15, :cond_13

    .line 389
    .line 390
    move-object/from16 v13, v24

    .line 391
    .line 392
    move/from16 v24, v5

    .line 393
    .line 394
    const/16 v5, 0x1000

    .line 395
    .line 396
    goto/16 :goto_c

    .line 397
    .line 398
    :cond_13
    move/from16 v25, v10

    .line 399
    .line 400
    const/4 v10, -0x1

    .line 401
    if-ne v14, v10, :cond_14

    .line 402
    .line 403
    aget-byte v5, v6, v13

    .line 404
    .line 405
    aput-byte v5, v3, v27

    .line 406
    .line 407
    add-int/lit8 v27, v27, 0x1

    .line 408
    .line 409
    add-int/lit8 v9, v9, 0x1

    .line 410
    .line 411
    move/from16 v24, v13

    .line 412
    .line 413
    const/16 v5, 0x1000

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_14
    if-lt v13, v12, :cond_15

    .line 417
    .line 418
    int-to-byte v5, v5

    .line 419
    aput-byte v5, v7, v29

    .line 420
    .line 421
    add-int/lit8 v29, v29, 0x1

    .line 422
    .line 423
    move v5, v14

    .line 424
    goto :goto_8

    .line 425
    :cond_15
    move v5, v13

    .line 426
    :goto_8
    if-lt v5, v11, :cond_16

    .line 427
    .line 428
    aget-byte v10, v6, v5

    .line 429
    .line 430
    aput-byte v10, v7, v29

    .line 431
    .line 432
    add-int/lit8 v29, v29, 0x1

    .line 433
    .line 434
    aget-short v5, v4, v5

    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_16
    aget-byte v5, v6, v5

    .line 438
    .line 439
    and-int/lit16 v5, v5, 0xff

    .line 440
    .line 441
    int-to-byte v10, v5

    .line 442
    aput-byte v10, v3, v27

    .line 443
    .line 444
    :goto_9
    const/16 v19, 0x1

    .line 445
    .line 446
    add-int/lit8 v27, v27, 0x1

    .line 447
    .line 448
    add-int/lit8 v9, v9, 0x1

    .line 449
    .line 450
    if-lez v29, :cond_17

    .line 451
    .line 452
    add-int/lit8 v29, v29, -0x1

    .line 453
    .line 454
    aget-byte v24, v7, v29

    .line 455
    .line 456
    aput-byte v24, v3, v27

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_17
    move/from16 v24, v5

    .line 460
    .line 461
    const/16 v5, 0x1000

    .line 462
    .line 463
    if-ge v12, v5, :cond_18

    .line 464
    .line 465
    int-to-short v14, v14

    .line 466
    aput-short v14, v4, v12

    .line 467
    .line 468
    aput-byte v10, v6, v12

    .line 469
    .line 470
    add-int/lit8 v12, v12, 0x1

    .line 471
    .line 472
    and-int v10, v12, v28

    .line 473
    .line 474
    if-nez v10, :cond_18

    .line 475
    .line 476
    if-ge v12, v5, :cond_18

    .line 477
    .line 478
    add-int/lit8 v8, v8, 0x1

    .line 479
    .line 480
    add-int v28, v28, v12

    .line 481
    .line 482
    :cond_18
    :goto_a
    move v14, v13

    .line 483
    move-object v13, v0

    .line 484
    :goto_b
    move/from16 v5, v24

    .line 485
    .line 486
    move/from16 v10, v25

    .line 487
    .line 488
    goto/16 :goto_7

    .line 489
    .line 490
    :cond_19
    move/from16 v24, v5

    .line 491
    .line 492
    const/16 v5, 0x1000

    .line 493
    .line 494
    move-object v13, v0

    .line 495
    :goto_c
    move/from16 v25, v8

    .line 496
    .line 497
    move-object/from16 v5, v22

    .line 498
    .line 499
    move/from16 v26, v24

    .line 500
    .line 501
    move/from16 v8, v31

    .line 502
    .line 503
    move/from16 v22, v10

    .line 504
    .line 505
    move/from16 v24, v12

    .line 506
    .line 507
    move-object/from16 v10, v34

    .line 508
    .line 509
    const/4 v12, 0x0

    .line 510
    goto/16 :goto_4

    .line 511
    .line 512
    :cond_1a
    move-object/from16 v34, v10

    .line 513
    .line 514
    :goto_d
    move/from16 v12, v27

    .line 515
    .line 516
    const/4 v10, 0x0

    .line 517
    invoke-static {v3, v12, v2, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 518
    .line 519
    .line 520
    iget-boolean v2, v1, Lu0/b;->e:Z

    .line 521
    .line 522
    if-nez v2, :cond_25

    .line 523
    .line 524
    iget v2, v0, Lu0/e;->p:I

    .line 525
    .line 526
    const/4 v3, 0x1

    .line 527
    if-eq v2, v3, :cond_1b

    .line 528
    .line 529
    goto/16 :goto_13

    .line 530
    .line 531
    :cond_1b
    iget-object v2, v0, Lu0/e;->j:[I

    .line 532
    .line 533
    iget v3, v1, Lu0/b;->d:I

    .line 534
    .line 535
    iget v4, v1, Lu0/b;->b:I

    .line 536
    .line 537
    iget v5, v1, Lu0/b;->c:I

    .line 538
    .line 539
    iget v6, v1, Lu0/b;->a:I

    .line 540
    .line 541
    iget v7, v0, Lu0/e;->k:I

    .line 542
    .line 543
    if-nez v7, :cond_1c

    .line 544
    .line 545
    const/4 v7, 0x1

    .line 546
    goto :goto_e

    .line 547
    :cond_1c
    const/4 v7, 0x0

    .line 548
    :goto_e
    iget v8, v0, Lu0/e;->r:I

    .line 549
    .line 550
    iget-object v9, v0, Lu0/e;->i:[B

    .line 551
    .line 552
    iget-object v11, v0, Lu0/e;->a:[I

    .line 553
    .line 554
    const/4 v12, -0x1

    .line 555
    const/4 v13, 0x0

    .line 556
    :goto_f
    if-ge v13, v3, :cond_21

    .line 557
    .line 558
    add-int v14, v13, v4

    .line 559
    .line 560
    mul-int v14, v14, v8

    .line 561
    .line 562
    add-int v15, v14, v6

    .line 563
    .line 564
    add-int v10, v15, v5

    .line 565
    .line 566
    add-int/2addr v14, v8

    .line 567
    if-ge v14, v10, :cond_1d

    .line 568
    .line 569
    move v10, v14

    .line 570
    :cond_1d
    iget v14, v1, Lu0/b;->c:I

    .line 571
    .line 572
    mul-int v14, v14, v13

    .line 573
    .line 574
    :goto_10
    move/from16 v16, v3

    .line 575
    .line 576
    if-ge v15, v10, :cond_20

    .line 577
    .line 578
    aget-byte v3, v9, v14

    .line 579
    .line 580
    move/from16 v17, v4

    .line 581
    .line 582
    and-int/lit16 v4, v3, 0xff

    .line 583
    .line 584
    if-eq v4, v12, :cond_1f

    .line 585
    .line 586
    aget v4, v11, v4

    .line 587
    .line 588
    if-eqz v4, :cond_1e

    .line 589
    .line 590
    aput v4, v2, v15

    .line 591
    .line 592
    goto :goto_11

    .line 593
    :cond_1e
    move v12, v3

    .line 594
    :cond_1f
    :goto_11
    add-int/lit8 v14, v14, 0x1

    .line 595
    .line 596
    add-int/lit8 v15, v15, 0x1

    .line 597
    .line 598
    move/from16 v3, v16

    .line 599
    .line 600
    move/from16 v4, v17

    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_20
    move/from16 v17, v4

    .line 604
    .line 605
    add-int/lit8 v13, v13, 0x1

    .line 606
    .line 607
    const/4 v10, 0x0

    .line 608
    goto :goto_f

    .line 609
    :cond_21
    iget-object v2, v0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 610
    .line 611
    if-eqz v2, :cond_22

    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-nez v2, :cond_23

    .line 618
    .line 619
    :cond_22
    iget-object v2, v0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 620
    .line 621
    if-nez v2, :cond_24

    .line 622
    .line 623
    if-eqz v7, :cond_24

    .line 624
    .line 625
    const/4 v2, -0x1

    .line 626
    if-eq v12, v2, :cond_24

    .line 627
    .line 628
    :cond_23
    const/4 v12, 0x1

    .line 629
    goto :goto_12

    .line 630
    :cond_24
    const/4 v12, 0x0

    .line 631
    :goto_12
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    iput-object v2, v0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 636
    .line 637
    goto/16 :goto_22

    .line 638
    .line 639
    :cond_25
    :goto_13
    iget-object v2, v0, Lu0/e;->j:[I

    .line 640
    .line 641
    iget v3, v1, Lu0/b;->d:I

    .line 642
    .line 643
    iget v4, v0, Lu0/e;->p:I

    .line 644
    .line 645
    div-int/2addr v3, v4

    .line 646
    iget v5, v1, Lu0/b;->b:I

    .line 647
    .line 648
    div-int/2addr v5, v4

    .line 649
    iget v6, v1, Lu0/b;->c:I

    .line 650
    .line 651
    div-int/2addr v6, v4

    .line 652
    iget v7, v1, Lu0/b;->a:I

    .line 653
    .line 654
    div-int/2addr v7, v4

    .line 655
    iget v8, v0, Lu0/e;->k:I

    .line 656
    .line 657
    if-nez v8, :cond_26

    .line 658
    .line 659
    const/4 v10, 0x1

    .line 660
    goto :goto_14

    .line 661
    :cond_26
    const/4 v10, 0x0

    .line 662
    :goto_14
    iget v8, v0, Lu0/e;->r:I

    .line 663
    .line 664
    iget v9, v0, Lu0/e;->q:I

    .line 665
    .line 666
    iget-object v11, v0, Lu0/e;->i:[B

    .line 667
    .line 668
    iget-object v12, v0, Lu0/e;->a:[I

    .line 669
    .line 670
    iget-object v13, v0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 671
    .line 672
    move-object v14, v13

    .line 673
    const/4 v13, 0x0

    .line 674
    const/4 v15, 0x0

    .line 675
    const/16 v16, 0x1

    .line 676
    .line 677
    const/16 v17, 0x8

    .line 678
    .line 679
    :goto_15
    move-object/from16 p2, v14

    .line 680
    .line 681
    if-ge v13, v3, :cond_3b

    .line 682
    .line 683
    iget-boolean v14, v1, Lu0/b;->e:Z

    .line 684
    .line 685
    if-eqz v14, :cond_2b

    .line 686
    .line 687
    if-lt v15, v3, :cond_2a

    .line 688
    .line 689
    add-int/lit8 v14, v16, 0x1

    .line 690
    .line 691
    move/from16 v18, v3

    .line 692
    .line 693
    const/4 v3, 0x2

    .line 694
    if-eq v14, v3, :cond_29

    .line 695
    .line 696
    const/4 v3, 0x3

    .line 697
    if-eq v14, v3, :cond_28

    .line 698
    .line 699
    const/4 v3, 0x4

    .line 700
    move/from16 v16, v14

    .line 701
    .line 702
    if-eq v14, v3, :cond_27

    .line 703
    .line 704
    goto :goto_16

    .line 705
    :cond_27
    const/4 v15, 0x1

    .line 706
    const/16 v17, 0x2

    .line 707
    .line 708
    goto :goto_16

    .line 709
    :cond_28
    const/4 v3, 0x4

    .line 710
    move/from16 v16, v14

    .line 711
    .line 712
    const/4 v15, 0x2

    .line 713
    const/16 v17, 0x4

    .line 714
    .line 715
    goto :goto_16

    .line 716
    :cond_29
    const/4 v3, 0x4

    .line 717
    move/from16 v16, v14

    .line 718
    .line 719
    const/4 v15, 0x4

    .line 720
    goto :goto_16

    .line 721
    :cond_2a
    move/from16 v18, v3

    .line 722
    .line 723
    :goto_16
    add-int v3, v15, v17

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_2b
    move/from16 v18, v3

    .line 727
    .line 728
    move v3, v15

    .line 729
    move v15, v13

    .line 730
    :goto_17
    add-int/2addr v15, v5

    .line 731
    const/4 v14, 0x1

    .line 732
    if-ne v4, v14, :cond_2c

    .line 733
    .line 734
    const/4 v14, 0x1

    .line 735
    goto :goto_18

    .line 736
    :cond_2c
    const/4 v14, 0x0

    .line 737
    :goto_18
    if-ge v15, v9, :cond_3a

    .line 738
    .line 739
    mul-int v15, v15, v8

    .line 740
    .line 741
    add-int v20, v15, v7

    .line 742
    .line 743
    move/from16 v21, v3

    .line 744
    .line 745
    add-int v3, v20, v6

    .line 746
    .line 747
    add-int/2addr v15, v8

    .line 748
    if-ge v15, v3, :cond_2d

    .line 749
    .line 750
    move v3, v15

    .line 751
    :cond_2d
    mul-int v15, v13, v4

    .line 752
    .line 753
    move/from16 v22, v5

    .line 754
    .line 755
    iget v5, v1, Lu0/b;->c:I

    .line 756
    .line 757
    mul-int v15, v15, v5

    .line 758
    .line 759
    if-eqz v14, :cond_30

    .line 760
    .line 761
    move-object/from16 v14, p2

    .line 762
    .line 763
    move/from16 v5, v20

    .line 764
    .line 765
    :goto_19
    move/from16 v23, v6

    .line 766
    .line 767
    if-ge v5, v3, :cond_39

    .line 768
    .line 769
    aget-byte v6, v11, v15

    .line 770
    .line 771
    and-int/lit16 v6, v6, 0xff

    .line 772
    .line 773
    aget v6, v12, v6

    .line 774
    .line 775
    if-eqz v6, :cond_2e

    .line 776
    .line 777
    aput v6, v2, v5

    .line 778
    .line 779
    goto :goto_1a

    .line 780
    :cond_2e
    if-eqz v10, :cond_2f

    .line 781
    .line 782
    if-nez v14, :cond_2f

    .line 783
    .line 784
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 785
    .line 786
    move-object v14, v6

    .line 787
    :cond_2f
    :goto_1a
    add-int/2addr v15, v4

    .line 788
    add-int/lit8 v5, v5, 0x1

    .line 789
    .line 790
    move/from16 v6, v23

    .line 791
    .line 792
    goto :goto_19

    .line 793
    :cond_30
    move/from16 v23, v6

    .line 794
    .line 795
    sub-int v5, v3, v20

    .line 796
    .line 797
    mul-int v5, v5, v4

    .line 798
    .line 799
    add-int/2addr v5, v15

    .line 800
    move-object/from16 v14, p2

    .line 801
    .line 802
    move/from16 v6, v20

    .line 803
    .line 804
    :goto_1b
    if-ge v6, v3, :cond_39

    .line 805
    .line 806
    move/from16 v20, v3

    .line 807
    .line 808
    iget v3, v1, Lu0/b;->c:I

    .line 809
    .line 810
    move/from16 v29, v7

    .line 811
    .line 812
    move/from16 v31, v8

    .line 813
    .line 814
    move v7, v15

    .line 815
    const/16 v24, 0x0

    .line 816
    .line 817
    const/16 v25, 0x0

    .line 818
    .line 819
    const/16 v26, 0x0

    .line 820
    .line 821
    const/16 v27, 0x0

    .line 822
    .line 823
    const/16 v28, 0x0

    .line 824
    .line 825
    :goto_1c
    iget v8, v0, Lu0/e;->p:I

    .line 826
    .line 827
    add-int/2addr v8, v15

    .line 828
    if-ge v7, v8, :cond_32

    .line 829
    .line 830
    iget-object v8, v0, Lu0/e;->i:[B

    .line 831
    .line 832
    move/from16 v32, v9

    .line 833
    .line 834
    array-length v9, v8

    .line 835
    if-ge v7, v9, :cond_33

    .line 836
    .line 837
    if-ge v7, v5, :cond_33

    .line 838
    .line 839
    aget-byte v8, v8, v7

    .line 840
    .line 841
    and-int/lit16 v8, v8, 0xff

    .line 842
    .line 843
    iget-object v9, v0, Lu0/e;->a:[I

    .line 844
    .line 845
    aget v8, v9, v8

    .line 846
    .line 847
    if-eqz v8, :cond_31

    .line 848
    .line 849
    shr-int/lit8 v9, v8, 0x18

    .line 850
    .line 851
    and-int/lit16 v9, v9, 0xff

    .line 852
    .line 853
    add-int v24, v24, v9

    .line 854
    .line 855
    shr-int/lit8 v9, v8, 0x10

    .line 856
    .line 857
    and-int/lit16 v9, v9, 0xff

    .line 858
    .line 859
    add-int v25, v25, v9

    .line 860
    .line 861
    shr-int/lit8 v9, v8, 0x8

    .line 862
    .line 863
    and-int/lit16 v9, v9, 0xff

    .line 864
    .line 865
    add-int v26, v26, v9

    .line 866
    .line 867
    and-int/lit16 v8, v8, 0xff

    .line 868
    .line 869
    add-int v27, v27, v8

    .line 870
    .line 871
    add-int/lit8 v28, v28, 0x1

    .line 872
    .line 873
    :cond_31
    add-int/lit8 v7, v7, 0x1

    .line 874
    .line 875
    move/from16 v9, v32

    .line 876
    .line 877
    goto :goto_1c

    .line 878
    :cond_32
    move/from16 v32, v9

    .line 879
    .line 880
    :cond_33
    add-int/2addr v3, v15

    .line 881
    move v7, v3

    .line 882
    :goto_1d
    iget v8, v0, Lu0/e;->p:I

    .line 883
    .line 884
    add-int/2addr v8, v3

    .line 885
    if-ge v7, v8, :cond_35

    .line 886
    .line 887
    iget-object v8, v0, Lu0/e;->i:[B

    .line 888
    .line 889
    array-length v9, v8

    .line 890
    if-ge v7, v9, :cond_35

    .line 891
    .line 892
    if-ge v7, v5, :cond_35

    .line 893
    .line 894
    aget-byte v8, v8, v7

    .line 895
    .line 896
    and-int/lit16 v8, v8, 0xff

    .line 897
    .line 898
    iget-object v9, v0, Lu0/e;->a:[I

    .line 899
    .line 900
    aget v8, v9, v8

    .line 901
    .line 902
    if-eqz v8, :cond_34

    .line 903
    .line 904
    shr-int/lit8 v9, v8, 0x18

    .line 905
    .line 906
    and-int/lit16 v9, v9, 0xff

    .line 907
    .line 908
    add-int v24, v24, v9

    .line 909
    .line 910
    shr-int/lit8 v9, v8, 0x10

    .line 911
    .line 912
    and-int/lit16 v9, v9, 0xff

    .line 913
    .line 914
    add-int v25, v25, v9

    .line 915
    .line 916
    shr-int/lit8 v9, v8, 0x8

    .line 917
    .line 918
    and-int/lit16 v9, v9, 0xff

    .line 919
    .line 920
    add-int v26, v26, v9

    .line 921
    .line 922
    and-int/lit16 v8, v8, 0xff

    .line 923
    .line 924
    add-int v27, v27, v8

    .line 925
    .line 926
    add-int/lit8 v28, v28, 0x1

    .line 927
    .line 928
    :cond_34
    add-int/lit8 v7, v7, 0x1

    .line 929
    .line 930
    goto :goto_1d

    .line 931
    :cond_35
    if-nez v28, :cond_36

    .line 932
    .line 933
    const/4 v3, 0x0

    .line 934
    goto :goto_1e

    .line 935
    :cond_36
    div-int v24, v24, v28

    .line 936
    .line 937
    shl-int/lit8 v3, v24, 0x18

    .line 938
    .line 939
    div-int v25, v25, v28

    .line 940
    .line 941
    shl-int/lit8 v7, v25, 0x10

    .line 942
    .line 943
    or-int/2addr v3, v7

    .line 944
    div-int v26, v26, v28

    .line 945
    .line 946
    shl-int/lit8 v7, v26, 0x8

    .line 947
    .line 948
    or-int/2addr v3, v7

    .line 949
    div-int v27, v27, v28

    .line 950
    .line 951
    or-int v3, v3, v27

    .line 952
    .line 953
    :goto_1e
    if-eqz v3, :cond_37

    .line 954
    .line 955
    aput v3, v2, v6

    .line 956
    .line 957
    goto :goto_1f

    .line 958
    :cond_37
    if-eqz v10, :cond_38

    .line 959
    .line 960
    if-nez v14, :cond_38

    .line 961
    .line 962
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 963
    .line 964
    move-object v14, v3

    .line 965
    :cond_38
    :goto_1f
    add-int/2addr v15, v4

    .line 966
    add-int/lit8 v6, v6, 0x1

    .line 967
    .line 968
    move/from16 v3, v20

    .line 969
    .line 970
    move/from16 v7, v29

    .line 971
    .line 972
    move/from16 v8, v31

    .line 973
    .line 974
    move/from16 v9, v32

    .line 975
    .line 976
    goto/16 :goto_1b

    .line 977
    .line 978
    :cond_39
    move/from16 v29, v7

    .line 979
    .line 980
    move/from16 v31, v8

    .line 981
    .line 982
    move/from16 v32, v9

    .line 983
    .line 984
    goto :goto_20

    .line 985
    :cond_3a
    move/from16 v21, v3

    .line 986
    .line 987
    move/from16 v22, v5

    .line 988
    .line 989
    move/from16 v23, v6

    .line 990
    .line 991
    move/from16 v29, v7

    .line 992
    .line 993
    move/from16 v31, v8

    .line 994
    .line 995
    move/from16 v32, v9

    .line 996
    .line 997
    move-object/from16 v14, p2

    .line 998
    .line 999
    :goto_20
    add-int/lit8 v13, v13, 0x1

    .line 1000
    .line 1001
    move/from16 v3, v18

    .line 1002
    .line 1003
    move/from16 v15, v21

    .line 1004
    .line 1005
    move/from16 v5, v22

    .line 1006
    .line 1007
    move/from16 v6, v23

    .line 1008
    .line 1009
    move/from16 v7, v29

    .line 1010
    .line 1011
    move/from16 v8, v31

    .line 1012
    .line 1013
    move/from16 v9, v32

    .line 1014
    .line 1015
    goto/16 :goto_15

    .line 1016
    .line 1017
    :cond_3b
    iget-object v2, v0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 1018
    .line 1019
    if-nez v2, :cond_3d

    .line 1020
    .line 1021
    if-nez p2, :cond_3c

    .line 1022
    .line 1023
    const/4 v12, 0x0

    .line 1024
    goto :goto_21

    .line 1025
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1026
    .line 1027
    .line 1028
    move-result v12

    .line 1029
    :goto_21
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    iput-object v2, v0, Lu0/e;->s:Ljava/lang/Boolean;

    .line 1034
    .line 1035
    :cond_3d
    :goto_22
    iget-boolean v2, v0, Lu0/e;->n:Z

    .line 1036
    .line 1037
    if-eqz v2, :cond_40

    .line 1038
    .line 1039
    iget v1, v1, Lu0/b;->g:I

    .line 1040
    .line 1041
    if-eqz v1, :cond_3e

    .line 1042
    .line 1043
    const/4 v2, 0x1

    .line 1044
    if-ne v1, v2, :cond_40

    .line 1045
    .line 1046
    :cond_3e
    iget-object v1, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 1047
    .line 1048
    if-nez v1, :cond_3f

    .line 1049
    .line 1050
    invoke-virtual/range {p0 .. p0}, Lu0/e;->g()Landroid/graphics/Bitmap;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    iput-object v1, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 1055
    .line 1056
    :cond_3f
    iget-object v1, v0, Lu0/e;->m:Landroid/graphics/Bitmap;

    .line 1057
    .line 1058
    const/4 v3, 0x0

    .line 1059
    iget v7, v0, Lu0/e;->r:I

    .line 1060
    .line 1061
    const/4 v5, 0x0

    .line 1062
    const/4 v6, 0x0

    .line 1063
    iget v8, v0, Lu0/e;->q:I

    .line 1064
    .line 1065
    move-object/from16 v2, v34

    .line 1066
    .line 1067
    move v4, v7

    .line 1068
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1069
    .line 1070
    .line 1071
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lu0/e;->g()Landroid/graphics/Bitmap;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v9

    .line 1075
    const/4 v3, 0x0

    .line 1076
    iget v7, v0, Lu0/e;->r:I

    .line 1077
    .line 1078
    const/4 v5, 0x0

    .line 1079
    const/4 v6, 0x0

    .line 1080
    iget v8, v0, Lu0/e;->q:I

    .line 1081
    .line 1082
    move-object v1, v9

    .line 1083
    move-object/from16 v2, v34

    .line 1084
    .line 1085
    move v4, v7

    .line 1086
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1087
    .line 1088
    .line 1089
    return-object v9
.end method

.method public final l()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lu0/e;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method
