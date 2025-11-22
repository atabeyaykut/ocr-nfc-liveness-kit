.class public final Ls1/g;
.super Ls1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a<",
        "Ls1/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ll9/j;

.field public final e:Ljava/util/ArrayList;

.field public f:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ljava/util/List<",
            "Ld2/b;",
            ">;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly1/b;Ljava/util/List;Lt1/j;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ls1/a;-><init>(Landroid/content/Context;Ly1/b;)V

    iput-object p4, p0, Ls1/g;->c:Lx9/l;

    new-instance p1, Ls1/h;

    invoke-direct {p1, p0}, Ls1/h;-><init>(Ls1/g;)V

    invoke-static {p1}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object p1

    iput-object p1, p0, Ls1/g;->d:Ll9/j;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/g;->e:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ls1/g;->g:Ljava/util/HashMap;

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/g;->d:Ll9/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Ls1/g$a;

    .line 8
    .line 9
    const-string v3, "viewHolder"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Ls1/g;->d:Ll9/j;

    .line 15
    .line 16
    invoke-virtual {v3}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "listDiffer.currentList"

    .line 27
    .line 28
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ld2/b;

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    move-object v5, v0

    .line 40
    goto/16 :goto_a

    .line 41
    .line 42
    :cond_0
    iget-object v4, v0, Ls1/g;->e:Ljava/util/ArrayList;

    .line 43
    .line 44
    instance-of v5, v4, Ljava/util/Collection;

    .line 45
    .line 46
    iget-object v8, v3, Ld2/b;->c:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ld2/b;

    .line 72
    .line 73
    iget-object v5, v5, Ld2/b;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    const/4 v4, 0x0

    .line 84
    :goto_1
    sget-object v5, Ly1/c;->b:Ly1/c;

    .line 85
    .line 86
    iget-object v9, v0, Ls1/a;->b:Ly1/b;

    .line 87
    .line 88
    iget-object v10, v2, Ls1/g$a;->a:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-interface {v9, v3, v10, v5}, Ly1/b;->a(Ld2/b;Landroid/widget/ImageView;Ly1/c;)V

    .line 91
    .line 92
    .line 93
    const-string v5, "path"

    .line 94
    .line 95
    invoke-static {v8, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v8}, La2/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v8, "gif"

    .line 103
    .line 104
    invoke-static {v5, v8}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const-string v8, ""

    .line 109
    .line 110
    iget-object v9, v0, Ls1/a;->a:Landroid/content/Context;

    .line 111
    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const v10, 0x7f13007e

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const/4 v10, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move-object v5, v8

    .line 128
    const/4 v10, 0x0

    .line 129
    :goto_2
    invoke-static {v3}, La2/b;->k(Ld2/b;)Z

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    if-eqz v11, :cond_8

    .line 134
    .line 135
    iget-object v5, v0, Ls1/g;->g:Ljava/util/HashMap;

    .line 136
    .line 137
    iget-wide v10, v3, Ld2/b;->a:J

    .line 138
    .line 139
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-nez v12, :cond_7

    .line 148
    .line 149
    const-string v12, "external"

    .line 150
    .line 151
    invoke-static {v12}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    new-instance v13, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-static {v12, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    const-string v13, "uri"

    .line 176
    .line 177
    invoke-static {v8, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :try_start_0
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    .line 181
    .line 182
    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13, v9, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 186
    .line 187
    .line 188
    const/16 v8, 0x9

    .line 189
    .line 190
    invoke-virtual {v13, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 195
    .line 196
    .line 197
    if-eqz v8, :cond_6

    .line 198
    .line 199
    invoke-static {v8}, Lmc/i;->u(Ljava/lang/String;)Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    if-eqz v8, :cond_6

    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 206
    .line 207
    .line 208
    move-result-wide v13

    .line 209
    const/16 v8, 0x3e8

    .line 210
    .line 211
    int-to-long v6, v8

    .line 212
    div-long v6, v13, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    const/16 v8, 0x3c

    .line 215
    .line 216
    move-object/from16 v16, v9

    .line 217
    .line 218
    int-to-long v8, v8

    .line 219
    :try_start_1
    rem-long/2addr v6, v8

    .line 220
    const v15, 0xea60

    .line 221
    .line 222
    .line 223
    int-to-long v0, v15

    .line 224
    div-long v0, v13, v0

    .line 225
    .line 226
    rem-long/2addr v0, v8

    .line 227
    const v8, 0x36ee80

    .line 228
    .line 229
    .line 230
    int-to-long v8, v8

    .line 231
    div-long/2addr v13, v8

    .line 232
    const/16 v8, 0x18

    .line 233
    .line 234
    int-to-long v8, v8

    .line 235
    rem-long/2addr v13, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    const-string v8, "format(format, *args)"

    .line 237
    .line 238
    const-wide/16 v17, 0x0

    .line 239
    .line 240
    cmp-long v15, v13, v17

    .line 241
    .line 242
    if-lez v15, :cond_5

    .line 243
    .line 244
    :try_start_2
    const-string v15, "%02d:%02d:%02d"

    .line 245
    .line 246
    const/4 v9, 0x3

    .line 247
    move-object/from16 v18, v15

    .line 248
    .line 249
    new-array v15, v9, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    const/4 v14, 0x0

    .line 256
    aput-object v13, v15, v14

    .line 257
    .line 258
    move-object/from16 v13, v18

    .line 259
    .line 260
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const/4 v1, 0x1

    .line 265
    aput-object v0, v15, v1

    .line 266
    .line 267
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const/4 v1, 0x2

    .line 272
    aput-object v0, v15, v1

    .line 273
    .line 274
    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const/4 v1, 0x0

    .line 283
    const/4 v6, 0x1

    .line 284
    goto :goto_3

    .line 285
    :cond_5
    const-string v9, "%02d:%02d"

    .line 286
    .line 287
    const/4 v13, 0x2

    .line 288
    new-array v15, v13, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    const/4 v1, 0x0

    .line 295
    :try_start_3
    aput-object v0, v15, v1

    .line 296
    .line 297
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 298
    .line 299
    .line 300
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    const/4 v6, 0x1

    .line 302
    :try_start_4
    aput-object v0, v15, v6

    .line 303
    .line 304
    const/4 v0, 0x2

    .line 305
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :goto_3
    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :catch_0
    :cond_6
    move-object/from16 v16, v9

    .line 318
    .line 319
    :catch_1
    const/4 v1, 0x0

    .line 320
    :catch_2
    const/4 v6, 0x1

    .line 321
    :catch_3
    const-string v0, "00:00"

    .line 322
    .line 323
    :goto_4
    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_7
    move-object/from16 v16, v9

    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    const/4 v6, 0x1

    .line 331
    :goto_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    goto :goto_6

    .line 340
    :cond_8
    move-object/from16 v16, v9

    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    move v6, v10

    .line 344
    :goto_6
    check-cast v5, Ljava/lang/CharSequence;

    .line 345
    .line 346
    iget-object v0, v2, Ls1/g$a;->c:Landroid/widget/TextView;

    .line 347
    .line 348
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    if-eqz v6, :cond_9

    .line 352
    .line 353
    const/4 v7, 0x0

    .line 354
    goto :goto_7

    .line 355
    :cond_9
    const/16 v7, 0x8

    .line 356
    .line 357
    :goto_7
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    if-eqz v4, :cond_a

    .line 361
    .line 362
    const/high16 v0, 0x3f000000    # 0.5f

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_a
    const/4 v0, 0x0

    .line 366
    :goto_8
    iget-object v1, v2, Ls1/g$a;->b:Landroid/view/View;

    .line 367
    .line 368
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 372
    .line 373
    new-instance v1, Ls1/d;

    .line 374
    .line 375
    move-object/from16 v5, p0

    .line 376
    .line 377
    move/from16 v6, p2

    .line 378
    .line 379
    invoke-direct {v1, v5, v4, v3, v6}, Ls1/d;-><init>(Ls1/g;ZLd2/b;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    .line 384
    .line 385
    if-eqz v4, :cond_b

    .line 386
    .line 387
    const v0, 0x7f0800a5

    .line 388
    .line 389
    .line 390
    move-object/from16 v1, v16

    .line 391
    .line 392
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    goto :goto_9

    .line 397
    :cond_b
    const/4 v0, 0x0

    .line 398
    :goto_9
    iget-object v1, v2, Ls1/g$a;->d:Lcom/esafirm/imagepicker/view/SquareFrameLayout;

    .line 399
    .line 400
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    .line 402
    .line 403
    :goto_a
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v0, 0x7f0d004b

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;->bind(Landroid/view/View;)Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "inflate(\n            Lay\u2026          false\n        )"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Ls1/g$a;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Ls1/g$a;-><init>(Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;)V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method
