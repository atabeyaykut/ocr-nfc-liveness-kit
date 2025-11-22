.class public final Lc5/e3;
.super Lc5/y4;
.source "SourceFile"


# instance fields
.field public c:C

.field public d:J

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final f:Lc5/c3;

.field public final g:Lc5/c3;

.field public final h:Lc5/c3;

.field public final j:Lc5/c3;

.field public final k:Lc5/c3;

.field public final l:Lc5/c3;

.field public final m:Lc5/c3;

.field public final n:Lc5/c3;

.field public final p:Lc5/c3;


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 3

    invoke-direct {p0, p1}, Lc5/y4;-><init>(Lc5/i4;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lc5/e3;->c:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc5/e3;->d:J

    new-instance v0, Lc5/c3;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->f:Lc5/c3;

    new-instance v0, Lc5/c3;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->g:Lc5/c3;

    new-instance v0, Lc5/c3;

    invoke-direct {v0, p0, v1, p1, v2}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->h:Lc5/c3;

    new-instance v0, Lc5/c3;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->j:Lc5/c3;

    new-instance v0, Lc5/c3;

    invoke-direct {v0, p0, v1, v2, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->k:Lc5/c3;

    new-instance v0, Lc5/c3;

    invoke-direct {v0, p0, v1, p1, v2}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->l:Lc5/c3;

    new-instance v0, Lc5/c3;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->m:Lc5/c3;

    new-instance v0, Lc5/c3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->n:Lc5/c3;

    new-instance v0, Lc5/c3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lc5/c3;-><init>(Lc5/e3;IZZ)V

    iput-object v0, p0, Lc5/e3;->p:Lc5/c3;

    return-void
.end method

.method public static q(Ljava/lang/String;)Lc5/d3;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lc5/d3;

    invoke-direct {v0, p0}, Lc5/d3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static r(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p2, p0}, Lc5/e3;->s(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0}, Lc5/e3;->s(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p0}, Lc5/e3;->s(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-long v1, p0

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    instance-of v1, p0, Ljava/lang/Long;

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "-"

    .line 26
    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    move-object p1, p0

    .line 37
    check-cast p1, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    const-wide/16 v7, 0x64

    .line 48
    .line 49
    cmp-long v1, v5, v7

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-gez v1, :cond_3

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const/16 v1, 0x2d

    .line 63
    .line 64
    if-ne p0, v1, :cond_4

    .line 65
    .line 66
    move-object v0, v4

    .line 67
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide p0

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide p0

    .line 75
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    add-int/2addr p1, v2

    .line 84
    int-to-double v1, p1

    .line 85
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 86
    .line 87
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    int-to-double p0, p0

    .line 100
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 101
    .line 102
    .line 103
    move-result-wide p0

    .line 104
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 105
    .line 106
    add-double/2addr p0, v3

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 108
    .line 109
    .line 110
    move-result-wide p0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    add-int/lit8 v4, v4, 0x2b

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    add-int/2addr v5, v4

    .line 124
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, "..."

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_5
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 150
    .line 151
    if-eqz v1, :cond_6

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_6
    instance-of v1, p0, Ljava/lang/Throwable;

    .line 159
    .line 160
    if-eqz v1, :cond_f

    .line 161
    .line 162
    check-cast p0, Ljava/lang/Throwable;

    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_0

    .line 177
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :goto_0
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-class p1, Lc5/i4;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/16 v5, 0x2e

    .line 195
    .line 196
    if-eqz v4, :cond_8

    .line 197
    .line 198
    move-object p1, v0

    .line 199
    goto :goto_1

    .line 200
    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-ne v4, v2, :cond_9

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_9
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    array-length v4, p0

    .line 216
    const/4 v6, 0x0

    .line 217
    :goto_2
    if-ge v6, v4, :cond_e

    .line 218
    .line 219
    aget-object v7, p0, v6

    .line 220
    .line 221
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    if-eqz v8, :cond_a

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    if-eqz v8, :cond_d

    .line 233
    .line 234
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_b

    .line 239
    .line 240
    move-object v8, v0

    .line 241
    goto :goto_3

    .line 242
    :cond_b
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-ne v9, v2, :cond_c

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_c
    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    :goto_3
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_d

    .line 258
    .line 259
    const-string p0, ": "

    .line 260
    .line 261
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_e
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    :cond_f
    instance-of v0, p0, Lc5/d3;

    .line 277
    .line 278
    if-eqz v0, :cond_10

    .line 279
    .line 280
    check-cast p0, Lc5/d3;

    .line 281
    .line 282
    iget-object p0, p0, Lc5/d3;->a:Ljava/lang/String;

    .line 283
    .line 284
    return-object p0

    .line 285
    :cond_10
    if-eqz p1, :cond_11

    .line 286
    .line 287
    return-object v4

    .line 288
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lc5/c3;
    .locals 1

    iget-object v0, p0, Lc5/e3;->n:Lc5/c3;

    return-object v0
.end method

.method public final h()Lc5/c3;
    .locals 1

    iget-object v0, p0, Lc5/e3;->f:Lc5/c3;

    return-object v0
.end method

.method public final n()Lc5/c3;
    .locals 1

    iget-object v0, p0, Lc5/e3;->p:Lc5/c3;

    return-object v0
.end method

.method public final o()Lc5/c3;
    .locals 1

    iget-object v0, p0, Lc5/e3;->j:Lc5/c3;

    return-object v0
.end method

.method public final p()Lc5/c3;
    .locals 1

    iget-object v0, p0, Lc5/e3;->l:Lc5/c3;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "logTagDoNotUseDirectly"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc5/e3;->e:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lc5/i4;

    .line 10
    .line 11
    iget-object v1, v1, Lc5/i4;->d:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lc5/i4;

    .line 16
    .line 17
    iget-object v0, v0, Lc5/i4;->d:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    check-cast v0, Lc5/i4;

    .line 21
    .line 22
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 23
    .line 24
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast v0, Lc5/i4;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v0, "FA"

    .line 32
    .line 33
    :goto_0
    iput-object v0, p0, Lc5/e3;->e:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    iget-object v0, p0, Lc5/e3;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lc5/e3;->e:Ljava/lang/String;

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v0
.end method

.method public final u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p2, p4, p5, p6, p7}, Lc5/e3;->r(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_4

    const/4 p2, 0x5

    if-lt p1, p2, :cond_4

    invoke-static {p4}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object p2, p0, Lc5/x4;->a:Lc5/z4;

    check-cast p2, Lc5/i4;

    .line 1
    iget-object p2, p2, Lc5/i4;->k:Lc5/h4;

    const/4 p3, 0x6

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduler not set. Not logging error/warn"

    :goto_0
    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p2, Lc5/y4;->b:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduler not initialized. Not logging error/warn"

    goto :goto_0

    :cond_2
    const/16 p3, 0x9

    if-lt p1, p3, :cond_3

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    new-instance p1, Lc5/b3;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lc5/b3;-><init>(Lc5/e3;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
