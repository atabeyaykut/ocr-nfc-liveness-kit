.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Luf/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Luf/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Luf/c;->a:Lr0/b;

    .line 9
    .line 10
    instance-of v1, v0, Lr0/d1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v1, v0, Lr0/k;

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 23
    .line 24
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->H()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    if-eqz v1, :cond_f

    .line 35
    .line 36
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Luf/c;->b:Ljava/util/List;

    .line 42
    .line 43
    move-object v0, p1

    .line 44
    check-cast v0, Ljava/util/Collection;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 58
    :goto_2
    if-nez v0, :cond_e

    .line 59
    .line 60
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->g:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 74
    .line 75
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 85
    .line 86
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->h:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    const v0, 0x7f1301f5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "getString(R.string.plural_service_count_text)"

    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const v1, 0x7f130248

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v3, "getString(R.string.service_count_text)"

    .line 120
    .line 121
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v4, "realm"

    .line 129
    .line 130
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const-string v4, "code"

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Lio/realm/RealmQuery;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    const/4 v6, 0x0

    .line 158
    if-nez v5, :cond_a

    .line 159
    .line 160
    move-object v5, p1

    .line 161
    check-cast v5, Ljava/lang/Iterable;

    .line 162
    .line 163
    new-instance v7, Luf/a;

    .line 164
    .line 165
    invoke-direct {v7}, Luf/a;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {v5, v7}, Lm9/t;->s1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Ljava/lang/Iterable;

    .line 173
    .line 174
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_5

    .line 188
    .line 189
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    move-object v9, v8

    .line 194
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 195
    .line 196
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getSectionCode()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    if-nez v10, :cond_4

    .line 209
    .line 210
    new-instance v10, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    :cond_4
    check-cast v10, Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_5
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-eqz v7, :cond_a

    .line 237
    .line 238
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    check-cast v7, Ljava/util/Map$Entry;

    .line 243
    .line 244
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    check-cast v8, Ljava/lang/Number;

    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    new-instance v9, Lio/realm/d0$c;

    .line 255
    .line 256
    invoke-direct {v9, v3}, Lio/realm/d0$c;-><init>(Lio/realm/d0;)V

    .line 257
    .line 258
    .line 259
    :cond_7
    invoke-virtual {v9}, Lio/realm/internal/OsResults$a;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-eqz v10, :cond_9

    .line 264
    .line 265
    invoke-virtual {v9}, Lio/realm/internal/OsResults$a;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    move-object v11, v10

    .line 270
    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 271
    .line 272
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;->getCode()I

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-ne v11, v8, :cond_8

    .line 277
    .line 278
    const/4 v11, 0x1

    .line 279
    goto :goto_5

    .line 280
    :cond_8
    const/4 v11, 0x0

    .line 281
    :goto_5
    if-eqz v11, :cond_7

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_9
    move-object v10, v6

    .line 285
    :goto_6
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 286
    .line 287
    if-eqz v10, :cond_6

    .line 288
    .line 289
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_a
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;

    .line 298
    .line 299
    invoke-direct {v3, v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;)V

    .line 300
    .line 301
    .line 302
    iput-object v3, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;

    .line 303
    .line 304
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->h:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 309
    .line 310
    iget-object v5, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;

    .line 311
    .line 312
    const-string v7, "mInstitutionListController"

    .line 313
    .line 314
    if-eqz v5, :cond_d

    .line 315
    .line 316
    invoke-virtual {v3, v5}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 317
    .line 318
    .line 319
    iput-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->e:Ljava/util/List;

    .line 320
    .line 321
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;

    .line 322
    .line 323
    if-eqz v2, :cond_c

    .line 324
    .line 325
    if-eqz p1, :cond_b

    .line 326
    .line 327
    invoke-virtual {v2, p1, v4, v0, v1}, Lcom/airbnb/epoxy/Typed4EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_7

    .line 331
    .line 332
    :cond_b
    const-string p1, "mInstitutionList"

    .line 333
    .line 334
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v6

    .line 338
    :cond_c
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v6

    .line 342
    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v6

    .line 346
    :cond_e
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->G()V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_7

    .line 350
    .line 351
    :cond_f
    instance-of p1, v0, Lr0/i;

    .line 352
    .line 353
    if-eqz p1, :cond_14

    .line 354
    .line 355
    check-cast v0, Lr0/i;

    .line 356
    .line 357
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 358
    .line 359
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 365
    .line 366
    if-eqz v0, :cond_11

    .line 367
    .line 368
    const-string p1, "action.login.open"

    .line 369
    .line 370
    const v0, 0x8000

    .line 371
    .line 372
    .line 373
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 378
    .line 379
    const/16 v1, 0x22

    .line 380
    .line 381
    if-lt v0, v1, :cond_10

    .line 382
    .line 383
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 384
    .line 385
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    .line 387
    .line 388
    :cond_10
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    if-eqz p1, :cond_14

    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_11
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 402
    .line 403
    if-eqz v0, :cond_12

    .line 404
    .line 405
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->G()V

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_12
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 410
    .line 411
    if-eqz p1, :cond_13

    .line 412
    .line 413
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->h:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 418
    .line 419
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->g:Landroid/widget/ProgressBar;

    .line 427
    .line 428
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 436
    .line 437
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 438
    .line 439
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 447
    .line 448
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 449
    .line 450
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 458
    .line 459
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 460
    .line 461
    new-instance v0, Lbe/d;

    .line 462
    .line 463
    const/4 v1, 0x2

    .line 464
    invoke-direct {v0, v1, v2}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_13
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->h:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 476
    .line 477
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->g:Landroid/widget/ProgressBar;

    .line 485
    .line 486
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 494
    .line 495
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 496
    .line 497
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 505
    .line 506
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 507
    .line 508
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    :cond_14
    :goto_7
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 512
    .line 513
    return-object p1
.end method
