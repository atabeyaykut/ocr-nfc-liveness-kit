.class public final Lx0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lv0/j<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final c:Lj1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/e<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final d:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lj1/e;Lr1/a$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/k;->a:Ljava/lang/Class;

    iput-object p4, p0, Lx0/k;->b:Ljava/util/List;

    iput-object p5, p0, Lx0/k;->c:Lj1/e;

    iput-object p6, p0, Lx0/k;->d:Landroidx/core/util/Pools$Pool;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed DecodePath{"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx0/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(IILv0/h;Lcom/bumptech/glide/load/data/e;Lx0/j$b;)Lx0/w;
    .locals 17
    .param p3    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lx0/r;
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    iget-object v8, v7, Lx0/k;->d:Landroidx/core/util/Pools$Pool;

    .line 6
    .line 7
    invoke-interface {v8}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    move-object v9, v1

    .line 15
    check-cast v9, Ljava/util/List;

    .line 16
    .line 17
    move-object/from16 v1, p0

    .line 18
    .line 19
    move-object/from16 v2, p4

    .line 20
    .line 21
    move/from16 v3, p1

    .line 22
    .line 23
    move/from16 v4, p2

    .line 24
    .line 25
    move-object/from16 v5, p3

    .line 26
    .line 27
    move-object v6, v9

    .line 28
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lx0/k;->b(Lcom/bumptech/glide/load/data/e;IILv0/h;Ljava/util/List;)Lx0/w;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-interface {v8, v9}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lx0/j$b;->b:Lx0/j;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Lx0/w;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    sget-object v3, Lv0/a;->d:Lv0/a;

    .line 49
    .line 50
    iget-object v0, v0, Lx0/j$b;->a:Lv0/a;

    .line 51
    .line 52
    iget-object v4, v2, Lx0/j;->a:Lx0/i;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    if-eq v0, v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v4, v15}, Lx0/i;->f(Ljava/lang/Class;)Lv0/l;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v6, v2, Lx0/j;->h:Lcom/bumptech/glide/h;

    .line 62
    .line 63
    iget v8, v2, Lx0/j;->m:I

    .line 64
    .line 65
    iget v9, v2, Lx0/j;->n:I

    .line 66
    .line 67
    invoke-interface {v3, v6, v1, v8, v9}, Lv0/l;->b(Lcom/bumptech/glide/h;Lx0/w;II)Lx0/w;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    move-object v14, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v6, v1

    .line 74
    move-object v14, v5

    .line 75
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    invoke-interface {v1}, Lx0/w;->recycle()V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v1, v4, Lx0/i;->c:Lcom/bumptech/glide/h;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/k;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v1, v1, Lcom/bumptech/glide/k;->d:Ll1/f;

    .line 91
    .line 92
    invoke-interface {v6}, Lx0/w;->a()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v1, v3}, Ll1/f;->a(Ljava/lang/Class;)Lv0/k;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v13, 0x1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v1, 0x0

    .line 107
    :goto_1
    if-eqz v1, :cond_4

    .line 108
    .line 109
    iget-object v1, v4, Lx0/i;->c:Lcom/bumptech/glide/h;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/k;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-interface {v6}, Lx0/w;->a()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    iget-object v1, v1, Lcom/bumptech/glide/k;->d:Ll1/f;

    .line 123
    .line 124
    invoke-virtual {v1, v5}, Ll1/f;->a(Ljava/lang/Class;)Lv0/k;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-eqz v5, :cond_3

    .line 129
    .line 130
    iget-object v1, v2, Lx0/j;->q:Lv0/h;

    .line 131
    .line 132
    invoke-interface {v5, v1}, Lv0/k;->a(Lv0/h;)Lv0/c;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    new-instance v0, Lcom/bumptech/glide/k$d;

    .line 138
    .line 139
    invoke-interface {v6}, Lx0/w;->a()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Lcom/bumptech/glide/k$d;-><init>(Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_4
    sget-object v1, Lv0/c;->c:Lv0/c;

    .line 148
    .line 149
    :goto_2
    iget-object v8, v2, Lx0/j;->A:Lv0/f;

    .line 150
    .line 151
    invoke-virtual {v4}, Lx0/i;->b()Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    const/4 v11, 0x0

    .line 160
    :goto_3
    if-ge v11, v10, :cond_6

    .line 161
    .line 162
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    check-cast v12, Lb1/o$a;

    .line 167
    .line 168
    iget-object v12, v12, Lb1/o$a;->a:Lv0/f;

    .line 169
    .line 170
    invoke-interface {v12, v8}, Lv0/f;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-eqz v12, :cond_5

    .line 175
    .line 176
    const/4 v8, 0x1

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    const/4 v8, 0x0

    .line 182
    :goto_4
    xor-int/2addr v8, v13

    .line 183
    iget-object v9, v2, Lx0/j;->p:Lx0/l;

    .line 184
    .line 185
    invoke-virtual {v9, v8, v0, v1}, Lx0/l;->d(ZLv0/a;Lv0/c;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_a

    .line 190
    .line 191
    if-eqz v5, :cond_9

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    if-ne v0, v13, :cond_7

    .line 200
    .line 201
    new-instance v0, Lx0/y;

    .line 202
    .line 203
    iget-object v1, v4, Lx0/i;->c:Lcom/bumptech/glide/h;

    .line 204
    .line 205
    iget-object v9, v1, Lcom/bumptech/glide/h;->a:Ly0/b;

    .line 206
    .line 207
    iget-object v10, v2, Lx0/j;->A:Lv0/f;

    .line 208
    .line 209
    iget-object v11, v2, Lx0/j;->j:Lv0/f;

    .line 210
    .line 211
    iget v12, v2, Lx0/j;->m:I

    .line 212
    .line 213
    iget v1, v2, Lx0/j;->n:I

    .line 214
    .line 215
    iget-object v4, v2, Lx0/j;->q:Lv0/h;

    .line 216
    .line 217
    move-object v8, v0

    .line 218
    move v13, v1

    .line 219
    move-object/from16 v16, v4

    .line 220
    .line 221
    invoke-direct/range {v8 .. v16}, Lx0/y;-><init>(Ly0/b;Lv0/f;Lv0/f;IILv0/l;Ljava/lang/Class;Lv0/h;)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 226
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v3, "Unknown strategy: "

    .line 230
    .line 231
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_8
    new-instance v0, Lx0/f;

    .line 246
    .line 247
    iget-object v1, v2, Lx0/j;->A:Lv0/f;

    .line 248
    .line 249
    iget-object v4, v2, Lx0/j;->j:Lv0/f;

    .line 250
    .line 251
    invoke-direct {v0, v1, v4}, Lx0/f;-><init>(Lv0/f;Lv0/f;)V

    .line 252
    .line 253
    .line 254
    :goto_5
    sget-object v1, Lx0/v;->e:Lr1/a$c;

    .line 255
    .line 256
    invoke-virtual {v1}, Lr1/a$c;->acquire()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Lx0/v;

    .line 261
    .line 262
    invoke-static {v1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    iput-boolean v3, v1, Lx0/v;->d:Z

    .line 266
    .line 267
    const/4 v3, 0x1

    .line 268
    iput-boolean v3, v1, Lx0/v;->c:Z

    .line 269
    .line 270
    iput-object v6, v1, Lx0/v;->b:Lx0/w;

    .line 271
    .line 272
    iget-object v2, v2, Lx0/j;->f:Lx0/j$c;

    .line 273
    .line 274
    iput-object v0, v2, Lx0/j$c;->a:Lv0/f;

    .line 275
    .line 276
    iput-object v5, v2, Lx0/j$c;->b:Lv0/k;

    .line 277
    .line 278
    iput-object v1, v2, Lx0/j$c;->c:Lx0/v;

    .line 279
    .line 280
    move-object v6, v1

    .line 281
    goto :goto_6

    .line 282
    :cond_9
    new-instance v0, Lcom/bumptech/glide/k$d;

    .line 283
    .line 284
    invoke-interface {v6}, Lx0/w;->get()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-direct {v0, v1}, Lcom/bumptech/glide/k$d;-><init>(Ljava/lang/Class;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :cond_a
    :goto_6
    iget-object v0, v7, Lx0/k;->c:Lj1/e;

    .line 297
    .line 298
    move-object/from16 v1, p3

    .line 299
    .line 300
    invoke-interface {v0, v6, v1}, Lj1/e;->a(Lx0/w;Lv0/h;)Lx0/w;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    move-object v1, v0

    .line 307
    invoke-interface {v8, v9}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    throw v1
.end method

.method public final b(Lcom/bumptech/glide/load/data/e;IILv0/h;Ljava/util/List;)Lx0/w;
    .locals 9
    .param p4    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/e<",
            "TDataType;>;II",
            "Lv0/h;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lx0/w<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lx0/r;
        }
    .end annotation

    iget-object v0, p0, Lx0/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/j;

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p4}, Lv0/j;->a(Ljava/lang/Object;Lv0/h;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3, p4}, Lv0/j;->b(Ljava/lang/Object;IILv0/h;)Lx0/w;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    :goto_1
    const-string v6, "DecodePath"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to decode data for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance p1, Lx0/r;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lx0/k;->e:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lx0/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodePath{ dataClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx0/k;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx0/k;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx0/k;->c:Lj1/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
