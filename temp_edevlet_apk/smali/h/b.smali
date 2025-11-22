.class public final Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/b$c;,
        Lh/b$a;,
        Lh/b$b;
    }
.end annotation


# static fields
.field public static final s:Lmc/d;


# instance fields
.field public final a:Led/z;

.field public final b:J

.field public final c:Led/z;

.field public final d:Led/z;

.field public final e:Led/z;

.field public final f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lh/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lkotlinx/coroutines/internal/f;

.field public h:J

.field public j:I

.field public k:Led/f;

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:Z

.field public q:Z

.field public final r:Lh/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmc/d;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lmc/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh/b;->s:Lmc/d;

    return-void
.end method

.method public constructor <init>(Led/t;Led/z;Lkotlinx/coroutines/scheduling/b;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/b;->a:Led/z;

    iput-wide p4, p0, Lh/b;->b:J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p4, v0

    if-lez v4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    const-string p4, "journal"

    invoke-virtual {p2, p4}, Led/z;->q(Ljava/lang/String;)Led/z;

    move-result-object p4

    iput-object p4, p0, Lh/b;->c:Led/z;

    const-string p4, "journal.tmp"

    invoke-virtual {p2, p4}, Led/z;->q(Ljava/lang/String;)Led/z;

    move-result-object p4

    iput-object p4, p0, Lh/b;->d:Led/z;

    const-string p4, "journal.bkp"

    invoke-virtual {p2, p4}, Led/z;->q(Ljava/lang/String;)Led/z;

    move-result-object p2

    iput-object p2, p0, Lh/b;->e:Led/z;

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 p4, 0x3f400000    # 0.75f

    invoke-direct {p2, v2, p4, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/d0;->a()Lnc/u1;

    move-result-object p2

    invoke-virtual {p3, v3}, Lkotlinx/coroutines/scheduling/b;->limitedParallelism(I)Lnc/y;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnc/g1;->plus(Lp9/f;)Lp9/f;

    move-result-object p2

    invoke-static {p2}, Lb8/f;->f(Lp9/f;)Lkotlinx/coroutines/internal/f;

    move-result-object p2

    iput-object p2, p0, Lh/b;->g:Lkotlinx/coroutines/internal/f;

    new-instance p2, Lh/c;

    invoke-direct {p2, p1}, Lh/c;-><init>(Led/t;)V

    iput-object p2, p0, Lh/b;->r:Lh/c;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lh/b;Lh/b$a;Z)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lh/b$a;->a:Lh/b$b;

    .line 3
    .line 4
    iget-object v1, v0, Lh/b$b;->g:Lh/b$a;

    .line 5
    .line 6
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_e

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz p2, :cond_5

    .line 15
    .line 16
    iget-boolean v3, v0, Lh/b$b;->f:Z

    .line 17
    .line 18
    if-nez v3, :cond_5

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v4, v3, 0x1

    .line 24
    .line 25
    iget-object v5, p1, Lh/b$a;->c:[Z

    .line 26
    .line 27
    aget-boolean v5, v5, v3

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    iget-object v5, p0, Lh/b;->r:Lh/c;

    .line 32
    .line 33
    iget-object v6, v0, Lh/b$b;->d:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Led/z;

    .line 40
    .line 41
    invoke-virtual {v5, v3}, Led/k;->f(Led/z;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lh/b$a;->a(Z)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_0
    move v3, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_1
    if-ge p1, v2, :cond_6

    .line 56
    .line 57
    add-int/lit8 v3, p1, 0x1

    .line 58
    .line 59
    iget-object v4, v0, Lh/b$b;->d:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Led/z;

    .line 66
    .line 67
    iget-object v5, v0, Lh/b$b;->c:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Led/z;

    .line 74
    .line 75
    iget-object v6, p0, Lh/b;->r:Lh/c;

    .line 76
    .line 77
    invoke-virtual {v6, v4}, Led/k;->f(Led/z;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    iget-object v6, p0, Lh/b;->r:Lh/c;

    .line 84
    .line 85
    invoke-virtual {v6, v4, v5}, Led/l;->b(Led/z;Led/z;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    iget-object v4, p0, Lh/b;->r:Lh/c;

    .line 90
    .line 91
    iget-object v6, v0, Lh/b$b;->c:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Led/z;

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Led/k;->f(Led/z;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_3

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Lh/c;->k(Led/z;)Led/h0;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_2
    iget-object v4, v0, Lh/b$b;->b:[J

    .line 113
    .line 114
    aget-wide v6, v4, p1

    .line 115
    .line 116
    iget-object v4, p0, Lh/b;->r:Lh/c;

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Led/k;->h(Led/z;)Led/j;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v4, v4, Led/j;->d:Ljava/lang/Long;

    .line 123
    .line 124
    if-nez v4, :cond_4

    .line 125
    .line 126
    const-wide/16 v4, 0x0

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    :goto_3
    iget-object v8, v0, Lh/b$b;->b:[J

    .line 134
    .line 135
    aput-wide v4, v8, p1

    .line 136
    .line 137
    iget-wide v8, p0, Lh/b;->h:J

    .line 138
    .line 139
    sub-long/2addr v8, v6

    .line 140
    add-long/2addr v8, v4

    .line 141
    iput-wide v8, p0, Lh/b;->h:J

    .line 142
    .line 143
    move p1, v3

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    const/4 p1, 0x0

    .line 146
    :goto_4
    if-ge p1, v2, :cond_6

    .line 147
    .line 148
    add-int/lit8 v3, p1, 0x1

    .line 149
    .line 150
    iget-object v4, p0, Lh/b;->r:Lh/c;

    .line 151
    .line 152
    iget-object v5, v0, Lh/b$b;->d:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Led/z;

    .line 159
    .line 160
    invoke-virtual {v4, p1}, Led/k;->e(Led/z;)V

    .line 161
    .line 162
    .line 163
    move p1, v3

    .line 164
    goto :goto_4

    .line 165
    :cond_6
    const/4 p1, 0x0

    .line 166
    iput-object p1, v0, Lh/b$b;->g:Lh/b$a;

    .line 167
    .line 168
    iget-boolean p1, v0, Lh/b$b;->f:Z

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lh/b;->m(Lh/b$b;)V

    .line 173
    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_7
    iget p1, p0, Lh/b;->j:I

    .line 177
    .line 178
    const/4 v2, 0x1

    .line 179
    add-int/2addr p1, v2

    .line 180
    iput p1, p0, Lh/b;->j:I

    .line 181
    .line 182
    iget-object p1, p0, Lh/b;->k:Led/f;

    .line 183
    .line 184
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const/16 v3, 0x20

    .line 188
    .line 189
    if-nez p2, :cond_9

    .line 190
    .line 191
    iget-boolean p2, v0, Lh/b$b;->e:Z

    .line 192
    .line 193
    if-eqz p2, :cond_8

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    iget-object p2, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 197
    .line 198
    iget-object v4, v0, Lh/b$b;->a:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p2, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string p2, "REMOVE"

    .line 204
    .line 205
    invoke-interface {p1, p2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v3}, Led/f;->writeByte(I)Led/f;

    .line 209
    .line 210
    .line 211
    iget-object p2, v0, Lh/b$b;->a:Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {p1, p2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_9
    :goto_5
    iput-boolean v2, v0, Lh/b$b;->e:Z

    .line 218
    .line 219
    const-string p2, "CLEAN"

    .line 220
    .line 221
    invoke-interface {p1, p2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v3}, Led/f;->writeByte(I)Led/f;

    .line 225
    .line 226
    .line 227
    iget-object p2, v0, Lh/b$b;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {p1, p2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 230
    .line 231
    .line 232
    iget-object p2, v0, Lh/b$b;->b:[J

    .line 233
    .line 234
    array-length v0, p2

    .line 235
    const/4 v4, 0x0

    .line 236
    :goto_6
    if-ge v4, v0, :cond_a

    .line 237
    .line 238
    aget-wide v5, p2, v4

    .line 239
    .line 240
    add-int/lit8 v4, v4, 0x1

    .line 241
    .line 242
    invoke-interface {p1, v3}, Led/f;->writeByte(I)Led/f;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-interface {v7, v5, v6}, Led/f;->m0(J)Led/f;

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    :goto_7
    const/16 p2, 0xa

    .line 251
    .line 252
    invoke-interface {p1, p2}, Led/f;->writeByte(I)Led/f;

    .line 253
    .line 254
    .line 255
    invoke-interface {p1}, Led/f;->flush()V

    .line 256
    .line 257
    .line 258
    iget-wide p1, p0, Lh/b;->h:J

    .line 259
    .line 260
    iget-wide v3, p0, Lh/b;->b:J

    .line 261
    .line 262
    cmp-long v0, p1, v3

    .line 263
    .line 264
    if-gtz v0, :cond_c

    .line 265
    .line 266
    iget p1, p0, Lh/b;->j:I

    .line 267
    .line 268
    const/16 p2, 0x7d0

    .line 269
    .line 270
    if-lt p1, p2, :cond_b

    .line 271
    .line 272
    const/4 v1, 0x1

    .line 273
    :cond_b
    if-eqz v1, :cond_d

    .line 274
    .line 275
    :cond_c
    invoke-virtual {p0}, Lh/b;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .line 277
    .line 278
    :cond_d
    :goto_8
    monitor-exit p0

    .line 279
    return-void

    .line 280
    :cond_e
    :try_start_1
    const-string p1, "Check failed."

    .line 281
    .line 282
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :catchall_0
    move-exception p1

    .line 293
    monitor-exit p0

    .line 294
    throw p1
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lh/b;->s:Lmc/d;

    invoke-virtual {v0, p0}, Lmc/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lh/b;->n:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Lh/b$a;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh/b;->b()V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lh/b;->o(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lh/b;->e()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lh/b$b;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, v0, Lh/b$b;->g:Lh/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :goto_0
    if-eqz v2, :cond_1

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object v1

    .line 30
    :cond_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :try_start_1
    iget v2, v0, Lh/b$b;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object v1

    .line 38
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lh/b;->p:Z

    .line 39
    .line 40
    if-nez v2, :cond_6

    .line 41
    .line 42
    iget-boolean v2, p0, Lh/b;->q:Z

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-object v2, p0, Lh/b;->k:Led/f;

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v3, "DIRTY"

    .line 53
    .line 54
    invoke-interface {v2, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x20

    .line 58
    .line 59
    invoke-interface {v2, v3}, Led/f;->writeByte(I)Led/f;

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, p1}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 63
    .line 64
    .line 65
    const/16 v3, 0xa

    .line 66
    .line 67
    invoke-interface {v2, v3}, Led/f;->writeByte(I)Led/f;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Led/f;->flush()V

    .line 71
    .line 72
    .line 73
    iget-boolean v2, p0, Lh/b;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-object v1

    .line 79
    :cond_4
    if-nez v0, :cond_5

    .line 80
    .line 81
    :try_start_3
    new-instance v0, Lh/b$b;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Lh/b$b;-><init>(Lh/b;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_5
    new-instance p1, Lh/b$a;

    .line 92
    .line 93
    invoke-direct {p1, p0, v0}, Lh/b$a;-><init>(Lh/b;Lh/b$b;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, v0, Lh/b$b;->g:Lh/b$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-object p1

    .line 100
    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lh/b;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-object v1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lh/b;->m:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Lh/b;->n:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Lh/b$b;

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    check-cast v0, [Lh/b$b;

    .line 28
    .line 29
    array-length v3, v0

    .line 30
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_2

    .line 31
    .line 32
    aget-object v4, v0, v2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    iget-object v4, v4, Lh/b$b;->g:Lh/b$a;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    iget-object v5, v4, Lh/b$a;->a:Lh/b$b;

    .line 41
    .line 42
    iget-object v6, v5, Lh/b$b;->g:Lh/b$a;

    .line 43
    .line 44
    invoke-static {v6, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iput-boolean v1, v5, Lh/b$b;->f:Z

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lh/b;->n()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lh/b;->g:Lkotlinx/coroutines/internal/f;

    .line 57
    .line 58
    invoke-static {v0}, Lb8/f;->m(Lnc/a0;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lh/b;->k:Led/f;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Led/h0;->close()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lh/b;->k:Led/f;

    .line 71
    .line 72
    iput-boolean v1, p0, Lh/b;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 77
    .line 78
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lh/b;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit p0

    .line 90
    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)Lh/b$c;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh/b;->b()V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lh/b;->o(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lh/b;->e()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lh/b$b;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lh/b$b;->a()Lh/b$c;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v1

    .line 32
    :cond_1
    :try_start_1
    iget v1, p0, Lh/b;->j:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    add-int/2addr v1, v2

    .line 36
    iput v1, p0, Lh/b;->j:I

    .line 37
    .line 38
    iget-object v1, p0, Lh/b;->k:Led/f;

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "READ"

    .line 44
    .line 45
    invoke-interface {v1, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x20

    .line 49
    .line 50
    invoke-interface {v1, v3}, Led/f;->writeByte(I)Led/f;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p1}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 54
    .line 55
    .line 56
    const/16 p1, 0xa

    .line 57
    .line 58
    invoke-interface {v1, p1}, Led/f;->writeByte(I)Led/f;

    .line 59
    .line 60
    .line 61
    iget p1, p0, Lh/b;->j:I

    .line 62
    .line 63
    const/16 v1, 0x7d0

    .line 64
    .line 65
    if-lt p1, v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Lh/b;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_3
    monitor-exit p0

    .line 75
    return-object v0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lh/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 9
    .line 10
    iget-object v1, p0, Lh/b;->d:Led/z;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Led/k;->e(Led/z;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 16
    .line 17
    iget-object v1, p0, Lh/b;->e:Led/z;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Led/k;->f(Led/z;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 26
    .line 27
    iget-object v1, p0, Lh/b;->c:Led/z;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Led/k;->f(Led/z;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 36
    .line 37
    iget-object v1, p0, Lh/b;->e:Led/z;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Led/k;->e(Led/z;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 44
    .line 45
    iget-object v1, p0, Lh/b;->e:Led/z;

    .line 46
    .line 47
    iget-object v2, p0, Lh/b;->c:Led/z;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Led/l;->b(Led/z;Led/z;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 53
    .line 54
    iget-object v1, p0, Lh/b;->c:Led/z;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Led/k;->f(Led/z;)Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    const/4 v1, 0x1

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :try_start_2
    invoke-virtual {p0}, Lh/b;->j()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lh/b;->i()V

    .line 67
    .line 68
    .line 69
    iput-boolean v1, p0, Lh/b;->m:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catch_0
    const/4 v0, 0x0

    .line 74
    :try_start_3
    invoke-virtual {p0}, Lh/b;->close()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lh/b;->r:Lh/c;

    .line 78
    .line 79
    iget-object v3, p0, Lh/b;->a:Led/z;

    .line 80
    .line 81
    invoke-static {v2, v3}, Lb8/f;->y(Lh/c;Led/z;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_4
    iput-boolean v0, p0, Lh/b;->n:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    iput-boolean v0, p0, Lh/b;->n:Z

    .line 89
    .line 90
    throw v1

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lh/b;->p()V

    .line 92
    .line 93
    .line 94
    iput-boolean v1, p0, Lh/b;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    monitor-exit p0

    .line 100
    throw v0
.end method

.method public final f()V
    .locals 5

    new-instance v0, Lh/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/b$d;-><init>(Lh/b;Lp9/d;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lh/b;->g:Lkotlinx/coroutines/internal/f;

    invoke-static {v4, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    return-void
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lh/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lh/b;->b()V

    invoke-virtual {p0}, Lh/b;->n()V

    iget-object v0, p0, Lh/b;->k:Led/f;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Led/f;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Led/b0;
    .locals 3

    .line 1
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh/b;->c:Led/z;

    .line 7
    .line 8
    const-string v2, "file"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Led/l;->b:Led/k;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Led/k;->a(Led/z;)Led/h0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lh/e;

    .line 20
    .line 21
    new-instance v2, Lh/d;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lh/d;-><init>(Lh/b;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lh/e;-><init>(Led/h0;Lh/d;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Led/v;->a(Led/h0;)Led/b0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final i()V
    .locals 9

    .line 1
    iget-object v0, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lh/b$b;

    .line 24
    .line 25
    iget-object v4, v3, Lh/b$b;->g:Lh/b$a;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    :goto_1
    if-ge v6, v5, :cond_0

    .line 32
    .line 33
    add-int/lit8 v4, v6, 0x1

    .line 34
    .line 35
    iget-object v7, v3, Lh/b$b;->b:[J

    .line 36
    .line 37
    aget-wide v6, v7, v6

    .line 38
    .line 39
    add-long/2addr v1, v6

    .line 40
    move v6, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v4, 0x0

    .line 43
    iput-object v4, v3, Lh/b$b;->g:Lh/b$a;

    .line 44
    .line 45
    :goto_2
    if-ge v6, v5, :cond_2

    .line 46
    .line 47
    add-int/lit8 v4, v6, 0x1

    .line 48
    .line 49
    iget-object v7, v3, Lh/b$b;->c:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Led/z;

    .line 56
    .line 57
    iget-object v8, p0, Lh/b;->r:Lh/c;

    .line 58
    .line 59
    invoke-virtual {v8, v7}, Led/k;->e(Led/z;)V

    .line 60
    .line 61
    .line 62
    iget-object v7, v3, Lh/b$b;->d:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Led/z;

    .line 69
    .line 70
    invoke-virtual {v8, v6}, Led/k;->e(Led/z;)V

    .line 71
    .line 72
    .line 73
    move v6, v4

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iput-wide v1, p0, Lh/b;->h:J

    .line 80
    .line 81
    return-void
.end method

.method public final j()V
    .locals 13

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    iget-object v2, p0, Lh/b;->r:Lh/c;

    iget-object v3, p0, Lh/b;->c:Led/z;

    invoke-virtual {v2, v3}, Led/l;->l(Led/z;)Led/j0;

    move-result-object v2

    invoke-static {v2}, Led/v;->b(Led/j0;)Led/d0;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v8

    const-string v9, "libcore.io.DiskLruCache"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "1"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    if-lez v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-nez v9, :cond_2

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/b;->k(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v0, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    sub-int/2addr v11, v0

    iput v11, p0, Lh/b;->j:I

    invoke-virtual {v2}, Led/d0;->I()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lh/b;->p()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lh/b;->g()Led/b0;

    move-result-object v0

    iput-object v0, p0, Lh/b;->k:Led/f;

    :goto_2
    sget-object v0, Ll9/m;->a:Ll9/m;

    goto :goto_3

    :cond_2
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Led/d0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_4

    :cond_3
    invoke-static {v3, v1}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    if-nez v3, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-void

    :cond_4
    throw v3
.end method

.method public final k(Ljava/lang/String;)V
    .locals 11

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    invoke-static {p1, v0, v1, v1, v2}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "unexpected journal line: "

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v3, v5, :cond_8

    .line 13
    .line 14
    add-int/lit8 v6, v3, 0x1

    .line 15
    .line 16
    const/4 v7, 0x4

    .line 17
    invoke-static {p1, v0, v6, v1, v7}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget-object v9, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    const-string v10, "this as java.lang.String).substring(startIndex)"

    .line 24
    .line 25
    if-ne v8, v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-ne v3, v2, :cond_1

    .line 35
    .line 36
    const-string v2, "REMOVE"

    .line 37
    .line 38
    invoke-static {p1, v2, v1}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v9, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 53
    .line 54
    invoke-static {v6, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    new-instance v2, Lh/b$b;

    .line 64
    .line 65
    invoke-direct {v2, p0, v6}, Lh/b$b;-><init>(Lh/b;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v9, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_2
    check-cast v2, Lh/b$b;

    .line 72
    .line 73
    const/4 v6, 0x5

    .line 74
    if-eq v8, v5, :cond_4

    .line 75
    .line 76
    if-ne v3, v6, :cond_4

    .line 77
    .line 78
    const-string v9, "CLEAN"

    .line 79
    .line 80
    invoke-static {p1, v9, v1}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_4

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    add-int/2addr v8, v3

    .line 88
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-array v5, v3, [C

    .line 96
    .line 97
    aput-char v0, v5, v1

    .line 98
    .line 99
    invoke-static {p1, v5}, Lmc/n;->X(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-boolean v3, v2, Lh/b$b;->e:Z

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    iput-object v0, v2, Lh/b$b;->g:Lh/b$a;

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v3, v2, Lh/b$b;->i:Lh/b;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const/4 v3, 0x2

    .line 118
    if-ne v0, v3, :cond_3

    .line 119
    .line 120
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_0
    if-ge v1, v0, :cond_6

    .line 125
    .line 126
    add-int/lit8 v3, v1, 0x1

    .line 127
    .line 128
    iget-object v5, v2, Lh/b$b;->b:[J

    .line 129
    .line 130
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v6

    .line 140
    aput-wide v6, v5, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    move v1, v3

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 145
    .line 146
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 155
    .line 156
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_4
    if-ne v8, v5, :cond_5

    .line 165
    .line 166
    if-ne v3, v6, :cond_5

    .line 167
    .line 168
    const-string v0, "DIRTY"

    .line 169
    .line 170
    invoke-static {p1, v0, v1}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    new-instance p1, Lh/b$a;

    .line 177
    .line 178
    invoke-direct {p1, p0, v2}, Lh/b$a;-><init>(Lh/b;Lh/b$b;)V

    .line 179
    .line 180
    .line 181
    iput-object p1, v2, Lh/b$b;->g:Lh/b$a;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    if-ne v8, v5, :cond_7

    .line 185
    .line 186
    if-ne v3, v7, :cond_7

    .line 187
    .line 188
    const-string v0, "READ"

    .line 189
    .line 190
    invoke-static {p1, v0, v1}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    :cond_6
    :goto_1
    return-void

    .line 197
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 198
    .line 199
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 208
    .line 209
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0
.end method

.method public final m(Lh/b$b;)V
    .locals 12

    .line 1
    iget v0, p1, Lh/b$b;->h:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    iget-object v3, p1, Lh/b$b;->a:Ljava/lang/String;

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lh/b;->k:Led/f;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v4, "DIRTY"

    .line 17
    .line 18
    invoke-interface {v0, v4}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Led/f;->writeByte(I)Led/f;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Led/f;->writeByte(I)Led/f;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Led/f;->flush()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    iget v0, p1, Lh/b$b;->h:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-gtz v0, :cond_9

    .line 37
    .line 38
    iget-object v0, p1, Lh/b$b;->g:Lh/b$a;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_2
    if-nez v0, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object v5, v0, Lh/b$a;->a:Lh/b$b;

    .line 47
    .line 48
    iget-object v6, v5, Lh/b$b;->g:Lh/b$a;

    .line 49
    .line 50
    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iput-boolean v4, v5, Lh/b$b;->f:Z

    .line 57
    .line 58
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    :goto_2
    const/4 v6, 0x2

    .line 61
    if-ge v5, v6, :cond_5

    .line 62
    .line 63
    add-int/lit8 v6, v5, 0x1

    .line 64
    .line 65
    iget-object v7, p1, Lh/b$b;->c:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Led/z;

    .line 72
    .line 73
    iget-object v8, p0, Lh/b;->r:Lh/c;

    .line 74
    .line 75
    invoke-virtual {v8, v7}, Led/k;->e(Led/z;)V

    .line 76
    .line 77
    .line 78
    iget-wide v7, p0, Lh/b;->h:J

    .line 79
    .line 80
    iget-object v9, p1, Lh/b$b;->b:[J

    .line 81
    .line 82
    aget-wide v10, v9, v5

    .line 83
    .line 84
    sub-long/2addr v7, v10

    .line 85
    iput-wide v7, p0, Lh/b;->h:J

    .line 86
    .line 87
    const-wide/16 v7, 0x0

    .line 88
    .line 89
    aput-wide v7, v9, v5

    .line 90
    .line 91
    move v5, v6

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    iget p1, p0, Lh/b;->j:I

    .line 94
    .line 95
    add-int/2addr p1, v4

    .line 96
    iput p1, p0, Lh/b;->j:I

    .line 97
    .line 98
    iget-object p1, p0, Lh/b;->k:Led/f;

    .line 99
    .line 100
    if-nez p1, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    const-string v5, "REMOVE"

    .line 104
    .line 105
    invoke-interface {p1, v5}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v2}, Led/f;->writeByte(I)Led/f;

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v1}, Led/f;->writeByte(I)Led/f;

    .line 115
    .line 116
    .line 117
    :goto_3
    iget-object p1, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget p1, p0, Lh/b;->j:I

    .line 123
    .line 124
    const/16 v1, 0x7d0

    .line 125
    .line 126
    if-lt p1, v1, :cond_7

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    const/4 v4, 0x0

    .line 130
    :goto_4
    if-eqz v4, :cond_8

    .line 131
    .line 132
    invoke-virtual {p0}, Lh/b;->f()V

    .line 133
    .line 134
    .line 135
    :cond_8
    return-void

    .line 136
    :cond_9
    :goto_5
    iput-boolean v4, p1, Lh/b$b;->f:Z

    .line 137
    .line 138
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    :cond_0
    iget-wide v0, p0, Lh/b;->h:J

    .line 2
    .line 3
    iget-wide v2, p0, Lh/b;->b:J

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-lez v5, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lh/b$b;

    .line 31
    .line 32
    iget-boolean v2, v1, Lh/b$b;->f:Z

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lh/b;->m(Lh/b$b;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    :cond_2
    if-nez v4, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iput-boolean v4, p0, Lh/b;->p:Z

    .line 44
    .line 45
    return-void
.end method

.method public final declared-synchronized p()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh/b;->k:Led/f;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Led/h0;->close()V

    .line 8
    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 11
    .line 12
    iget-object v1, p0, Lh/b;->d:Led/z;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lh/c;->k(Led/z;)Led/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Led/v;->a(Led/h0;)Led/b0;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_1
    const-string v3, "libcore.io.DiskLruCache"

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 27
    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Led/b0;->writeByte(I)Led/f;

    .line 32
    .line 33
    .line 34
    const-string v4, "1"

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Led/b0;->writeByte(I)Led/f;

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    int-to-long v4, v4

    .line 44
    invoke-virtual {v0, v4, v5}, Led/b0;->m0(J)Led/f;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Led/b0;->writeByte(I)Led/f;

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    int-to-long v4, v4

    .line 52
    invoke-virtual {v0, v4, v5}, Led/b0;->m0(J)Led/f;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Led/b0;->writeByte(I)Led/f;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Led/b0;->writeByte(I)Led/f;

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lh/b;->f:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lh/b$b;

    .line 82
    .line 83
    iget-object v6, v5, Lh/b$b;->g:Lh/b$a;

    .line 84
    .line 85
    const/16 v7, 0x20

    .line 86
    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    const-string v6, "DIRTY"

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v7}, Led/b0;->writeByte(I)Led/f;

    .line 95
    .line 96
    .line 97
    iget-object v5, v5, Lh/b$b;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_1
    const-string v6, "CLEAN"

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v7}, Led/b0;->writeByte(I)Led/f;

    .line 109
    .line 110
    .line 111
    iget-object v6, v5, Lh/b$b;->a:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v6}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 114
    .line 115
    .line 116
    iget-object v5, v5, Lh/b$b;->b:[J

    .line 117
    .line 118
    array-length v6, v5

    .line 119
    const/4 v8, 0x0

    .line 120
    :goto_2
    if-ge v8, v6, :cond_2

    .line 121
    .line 122
    aget-wide v9, v5, v8

    .line 123
    .line 124
    add-int/lit8 v8, v8, 0x1

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Led/b0;->writeByte(I)Led/f;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v9, v10}, Led/b0;->m0(J)Led/f;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    :goto_3
    invoke-virtual {v0, v3}, Led/b0;->writeByte(I)Led/f;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    sget-object v3, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catchall_0
    move-exception v3

    .line 141
    move-object v11, v3

    .line 142
    move-object v3, v2

    .line 143
    move-object v2, v11

    .line 144
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Led/b0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    move-object v2, v0

    .line 152
    goto :goto_5

    .line 153
    :cond_4
    :try_start_3
    invoke-static {v2, v0}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    :goto_5
    if-nez v2, :cond_6

    .line 157
    .line 158
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 162
    .line 163
    iget-object v2, p0, Lh/b;->c:Led/z;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Led/k;->f(Led/z;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 172
    .line 173
    iget-object v2, p0, Lh/b;->c:Led/z;

    .line 174
    .line 175
    iget-object v3, p0, Lh/b;->e:Led/z;

    .line 176
    .line 177
    invoke-virtual {v0, v2, v3}, Led/l;->b(Led/z;Led/z;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 181
    .line 182
    iget-object v2, p0, Lh/b;->d:Led/z;

    .line 183
    .line 184
    iget-object v3, p0, Lh/b;->c:Led/z;

    .line 185
    .line 186
    invoke-virtual {v0, v2, v3}, Led/l;->b(Led/z;Led/z;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 190
    .line 191
    iget-object v2, p0, Lh/b;->e:Led/z;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Led/k;->e(Led/z;)V

    .line 194
    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_5
    iget-object v0, p0, Lh/b;->r:Lh/c;

    .line 198
    .line 199
    iget-object v2, p0, Lh/b;->d:Led/z;

    .line 200
    .line 201
    iget-object v3, p0, Lh/b;->c:Led/z;

    .line 202
    .line 203
    invoke-virtual {v0, v2, v3}, Led/l;->b(Led/z;Led/z;)V

    .line 204
    .line 205
    .line 206
    :goto_6
    invoke-virtual {p0}, Lh/b;->g()Led/b0;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iput-object v0, p0, Lh/b;->k:Led/f;

    .line 211
    .line 212
    iput v1, p0, Lh/b;->j:I

    .line 213
    .line 214
    iput-boolean v1, p0, Lh/b;->l:Z

    .line 215
    .line 216
    iput-boolean v1, p0, Lh/b;->q:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 217
    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 220
    :cond_6
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 221
    :catchall_2
    move-exception v0

    .line 222
    monitor-exit p0

    .line 223
    throw v0
.end method
