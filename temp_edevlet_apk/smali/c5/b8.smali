.class public final Lc5/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/google/android/gms/internal/measurement/w3;

.field public final d:Ljava/util/BitSet;

.field public final e:Ljava/util/BitSet;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroidx/collection/ArrayMap;

.field public final synthetic h:Lc5/g8;


# direct methods
.method public synthetic constructor <init>(Lc5/g8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/b8;->h:Lc5/g8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/b8;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc5/b8;->b:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lc5/b8;->d:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lc5/b8;->e:Ljava/util/BitSet;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/b8;->f:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/b8;->g:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lc5/g8;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w3;Ljava/util/BitSet;Ljava/util/BitSet;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Lc5/b8;->h:Lc5/g8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/b8;->a:Ljava/lang/String;

    iput-object p4, p0, Lc5/b8;->d:Ljava/util/BitSet;

    iput-object p5, p0, Lc5/b8;->e:Ljava/util/BitSet;

    iput-object p6, p0, Lc5/b8;->f:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/b8;->g:Landroidx/collection/ArrayMap;

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lc5/b8;->g:Landroidx/collection/ArrayMap;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lc5/b8;->b:Z

    iput-object p3, p0, Lc5/b8;->c:Lcom/google/android/gms/internal/measurement/w3;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/d3;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d3;->s()Lcom/google/android/gms/internal/measurement/c3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 11
    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/gms/internal/measurement/d3;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/d3;->w(Lcom/google/android/gms/internal/measurement/d3;I)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 27
    .line 28
    .line 29
    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 30
    .line 31
    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 32
    .line 33
    check-cast p1, Lcom/google/android/gms/internal/measurement/d3;

    .line 34
    .line 35
    iget-boolean v1, p0, Lc5/b8;->b:Z

    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/d3;->z(Lcom/google/android/gms/internal/measurement/d3;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lc5/b8;->c:Lcom/google/android/gms/internal/measurement/w3;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 49
    .line 50
    .line 51
    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 52
    .line 53
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 54
    .line 55
    check-cast v1, Lcom/google/android/gms/internal/measurement/d3;

    .line 56
    .line 57
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/d3;->y(Lcom/google/android/gms/internal/measurement/d3;Lcom/google/android/gms/internal/measurement/w3;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w3;->w()Lcom/google/android/gms/internal/measurement/v3;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v1, p0, Lc5/b8;->d:Ljava/util/BitSet;

    .line 65
    .line 66
    invoke-static {v1}, Lc5/q7;->F(Ljava/util/BitSet;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 75
    .line 76
    .line 77
    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 78
    .line 79
    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 80
    .line 81
    check-cast v3, Lcom/google/android/gms/internal/measurement/w3;

    .line 82
    .line 83
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/w3;->G(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lc5/b8;->e:Ljava/util/BitSet;

    .line 87
    .line 88
    invoke-static {v1}, Lc5/q7;->F(Ljava/util/BitSet;)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 97
    .line 98
    .line 99
    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 100
    .line 101
    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 102
    .line 103
    check-cast v3, Lcom/google/android/gms/internal/measurement/w3;

    .line 104
    .line 105
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/w3;->E(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lc5/b8;->f:Ljava/util/Map;

    .line 109
    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    goto :goto_1

    .line 114
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    :cond_7
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_a

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Ljava/lang/Long;

    .line 156
    .line 157
    if-eqz v6, :cond_7

    .line 158
    .line 159
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->t()Lcom/google/android/gms/internal/measurement/e3;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    iget-boolean v8, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 164
    .line 165
    if-eqz v8, :cond_8

    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 168
    .line 169
    .line 170
    iput-boolean v2, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 171
    .line 172
    :cond_8
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 173
    .line 174
    check-cast v8, Lcom/google/android/gms/internal/measurement/f3;

    .line 175
    .line 176
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/f3;->v(Lcom/google/android/gms/internal/measurement/f3;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    iget-boolean v8, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 184
    .line 185
    if-eqz v8, :cond_9

    .line 186
    .line 187
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 188
    .line 189
    .line 190
    iput-boolean v2, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 191
    .line 192
    :cond_9
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 193
    .line 194
    check-cast v8, Lcom/google/android/gms/internal/measurement/f3;

    .line 195
    .line 196
    invoke-static {v8, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->w(Lcom/google/android/gms/internal/measurement/f3;J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Lcom/google/android/gms/internal/measurement/f3;

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_a
    move-object v1, v3

    .line 210
    :goto_1
    if-eqz v1, :cond_c

    .line 211
    .line 212
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 213
    .line 214
    if-eqz v3, :cond_b

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 217
    .line 218
    .line 219
    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 220
    .line 221
    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 222
    .line 223
    check-cast v3, Lcom/google/android/gms/internal/measurement/w3;

    .line 224
    .line 225
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/w3;->I(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/ArrayList;)V

    .line 226
    .line 227
    .line 228
    :cond_c
    iget-object v1, p0, Lc5/b8;->g:Landroidx/collection/ArrayMap;

    .line 229
    .line 230
    if-nez v1, :cond_d

    .line 231
    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_3

    .line 237
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_11

    .line 259
    .line 260
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y3;->u()Lcom/google/android/gms/internal/measurement/x3;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    iget-boolean v8, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 275
    .line 276
    if-eqz v8, :cond_e

    .line 277
    .line 278
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 279
    .line 280
    .line 281
    iput-boolean v2, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 282
    .line 283
    :cond_e
    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 284
    .line 285
    check-cast v8, Lcom/google/android/gms/internal/measurement/y3;

    .line 286
    .line 287
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/y3;->x(Lcom/google/android/gms/internal/measurement/y3;I)V

    .line 288
    .line 289
    .line 290
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    check-cast v5, Ljava/util/List;

    .line 295
    .line 296
    if-eqz v5, :cond_10

    .line 297
    .line 298
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 299
    .line 300
    .line 301
    iget-boolean v7, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 302
    .line 303
    if-eqz v7, :cond_f

    .line 304
    .line 305
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 306
    .line 307
    .line 308
    iput-boolean v2, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 309
    .line 310
    :cond_f
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 311
    .line 312
    check-cast v7, Lcom/google/android/gms/internal/measurement/y3;

    .line 313
    .line 314
    check-cast v5, Ljava/util/List;

    .line 315
    .line 316
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/measurement/y3;->y(Lcom/google/android/gms/internal/measurement/y3;Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    :cond_10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    check-cast v5, Lcom/google/android/gms/internal/measurement/y3;

    .line 324
    .line 325
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_11
    move-object v1, v3

    .line 330
    :goto_3
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 331
    .line 332
    if-eqz v3, :cond_12

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 335
    .line 336
    .line 337
    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 338
    .line 339
    :cond_12
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 340
    .line 341
    check-cast v3, Lcom/google/android/gms/internal/measurement/w3;

    .line 342
    .line 343
    check-cast v1, Ljava/util/List;

    .line 344
    .line 345
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/w3;->K(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V

    .line 346
    .line 347
    .line 348
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 349
    .line 350
    if-eqz v1, :cond_13

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 353
    .line 354
    .line 355
    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 356
    .line 357
    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 358
    .line 359
    check-cast v1, Lcom/google/android/gms/internal/measurement/d3;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Lcom/google/android/gms/internal/measurement/w3;

    .line 366
    .line 367
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/d3;->x(Lcom/google/android/gms/internal/measurement/d3;Lcom/google/android/gms/internal/measurement/w3;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    check-cast p1, Lcom/google/android/gms/internal/measurement/d3;

    .line 375
    .line 376
    return-object p1
.end method

.method public final b(Lc5/e8;)V
    .locals 10
    .param p1    # Lc5/e8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lc5/e8;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Lc5/e8;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lc5/b8;->e:Ljava/util/BitSet;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p1, Lc5/e8;->d:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lc5/b8;->d:Ljava/util/BitSet;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v1, p1, Lc5/e8;->e:Ljava/lang/Long;

    .line 32
    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v4, p0, Lc5/b8;->f:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/Long;

    .line 48
    .line 49
    iget-object v6, p1, Lc5/e8;->e:Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    div-long/2addr v6, v2

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    cmp-long v5, v6, v8

    .line 63
    .line 64
    if-lez v5, :cond_3

    .line 65
    .line 66
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v1, p1, Lc5/e8;->f:Ljava/lang/Long;

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget-object v1, p0, Lc5/b8;->g:Landroidx/collection/ArrayMap;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/util/List;

    .line 88
    .line 89
    if-nez v4, :cond_4

    .line 90
    .line 91
    new-instance v4, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual {p1}, Lc5/e8;->c()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lc5/b8;->h:Lc5/g8;

    .line 112
    .line 113
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 114
    .line 115
    check-cast v1, Lc5/i4;

    .line 116
    .line 117
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 118
    .line 119
    sget-object v5, Lc5/r2;->Y:Lc5/q2;

    .line 120
    .line 121
    iget-object v6, p0, Lc5/b8;->a:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v6, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Lc5/e8;->b()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()V

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 142
    .line 143
    check-cast v0, Lc5/i4;

    .line 144
    .line 145
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 146
    .line 147
    invoke-virtual {v0, v6, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object p1, p1, Lc5/e8;->f:Ljava/lang/Long;

    .line 152
    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    div-long/2addr v0, v2

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_8

    .line 169
    .line 170
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    div-long/2addr v0, v2

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_8
    return-void
.end method
