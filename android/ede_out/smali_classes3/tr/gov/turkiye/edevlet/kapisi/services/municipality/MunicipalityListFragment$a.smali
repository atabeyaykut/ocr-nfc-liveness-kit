.class public final Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lwg/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lwg/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lwg/c;->a:Lr0/b;

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
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->j:[Lda/m;

    .line 26
    .line 27
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 41
    .line 42
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 52
    .line 53
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 70
    .line 71
    if-eqz v1, :cond_13

    .line 72
    .line 73
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->j:[Lda/m;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lwg/c;->b:Ljava/util/List;

    .line 79
    .line 80
    move-object v0, p1

    .line 81
    check-cast v0, Ljava/util/Collection;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 95
    :goto_2
    if-nez v0, :cond_12

    .line 96
    .line 97
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 111
    .line 112
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 122
    .line 123
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    const v0, 0x7f1301f5

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "getString(R.string.plural_service_count_text)"

    .line 145
    .line 146
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const v1, 0x7f130248

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "getString(R.string.service_count_text)"

    .line 157
    .line 158
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v3, "realm"

    .line 166
    .line 167
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v3, "code"

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Lio/realm/RealmQuery;->h(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    const/4 v6, 0x0

    .line 195
    if-nez v5, :cond_a

    .line 196
    .line 197
    move-object v5, p1

    .line 198
    check-cast v5, Ljava/lang/Iterable;

    .line 199
    .line 200
    new-instance v7, Lwg/a;

    .line 201
    .line 202
    invoke-direct {v7}, Lwg/a;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-static {v5, v7}, Lm9/t;->s1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Ljava/lang/Iterable;

    .line 210
    .line 211
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 212
    .line 213
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_5

    .line 225
    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    move-object v9, v8

    .line 231
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 232
    .line 233
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getSectionCode()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    if-nez v10, :cond_4

    .line 246
    .line 247
    new-instance v10, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    :cond_4
    check-cast v10, Ljava/util/List;

    .line 256
    .line 257
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-eqz v7, :cond_a

    .line 274
    .line 275
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    check-cast v7, Ljava/util/Map$Entry;

    .line 280
    .line 281
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    check-cast v8, Ljava/lang/Number;

    .line 286
    .line 287
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    new-instance v9, Lio/realm/d0$c;

    .line 292
    .line 293
    invoke-direct {v9, v2}, Lio/realm/d0$c;-><init>(Lio/realm/d0;)V

    .line 294
    .line 295
    .line 296
    :cond_7
    invoke-virtual {v9}, Lio/realm/internal/OsResults$a;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    if-eqz v10, :cond_9

    .line 301
    .line 302
    invoke-virtual {v9}, Lio/realm/internal/OsResults$a;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    move-object v11, v10

    .line 307
    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 308
    .line 309
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;->getCode()I

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    if-ne v11, v8, :cond_8

    .line 314
    .line 315
    const/4 v11, 0x1

    .line 316
    goto :goto_5

    .line 317
    :cond_8
    const/4 v11, 0x0

    .line 318
    :goto_5
    if-eqz v11, :cond_7

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_9
    move-object v10, v6

    .line 322
    :goto_6
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 323
    .line 324
    if-eqz v10, :cond_6

    .line 325
    .line 326
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_a
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 335
    .line 336
    const-string v5, "mInstitutionList"

    .line 337
    .line 338
    const-string v7, "mInstitutionListController"

    .line 339
    .line 340
    if-nez v2, :cond_e

    .line 341
    .line 342
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 343
    .line 344
    invoke-direct {v2, v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController$a;)V

    .line 345
    .line 346
    .line 347
    iput-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 348
    .line 349
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 354
    .line 355
    iget-object v8, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 356
    .line 357
    if-eqz v8, :cond_d

    .line 358
    .line 359
    invoke-virtual {v2, v8}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 360
    .line 361
    .line 362
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->d:Ljava/util/List;

    .line 363
    .line 364
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 365
    .line 366
    if-eqz v2, :cond_c

    .line 367
    .line 368
    if-eqz p1, :cond_b

    .line 369
    .line 370
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/airbnb/epoxy/Typed4EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v6

    .line 379
    :cond_c
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v6

    .line 383
    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v6

    .line 387
    :cond_e
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->d:Ljava/util/List;

    .line 388
    .line 389
    if-eqz p1, :cond_18

    .line 390
    .line 391
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 396
    .line 397
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 398
    .line 399
    if-eqz v2, :cond_11

    .line 400
    .line 401
    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 402
    .line 403
    .line 404
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController;

    .line 405
    .line 406
    if-eqz p1, :cond_10

    .line 407
    .line 408
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->d:Ljava/util/List;

    .line 409
    .line 410
    if-eqz v2, :cond_f

    .line 411
    .line 412
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/airbnb/epoxy/Typed4EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_7

    .line 416
    .line 417
    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v6

    .line 421
    :cond_10
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v6

    .line 425
    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v6

    .line 429
    :cond_12
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->G()V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_7

    .line 433
    .line 434
    :cond_13
    instance-of p1, v0, Lr0/i;

    .line 435
    .line 436
    if-eqz p1, :cond_18

    .line 437
    .line 438
    check-cast v0, Lr0/i;

    .line 439
    .line 440
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 441
    .line 442
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->j:[Lda/m;

    .line 443
    .line 444
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 448
    .line 449
    if-eqz v0, :cond_15

    .line 450
    .line 451
    const-string p1, "action.login.open"

    .line 452
    .line 453
    const v0, 0x8000

    .line 454
    .line 455
    .line 456
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 461
    .line 462
    const/16 v1, 0x22

    .line 463
    .line 464
    if-lt v0, v1, :cond_14

    .line 465
    .line 466
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 467
    .line 468
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    .line 470
    .line 471
    :cond_14
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    if-eqz p1, :cond_18

    .line 479
    .line 480
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 481
    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_15
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 485
    .line 486
    if-eqz v0, :cond_16

    .line 487
    .line 488
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->G()V

    .line 489
    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_16
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 493
    .line 494
    if-eqz p1, :cond_17

    .line 495
    .line 496
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 501
    .line 502
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 510
    .line 511
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 519
    .line 520
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 521
    .line 522
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 530
    .line 531
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 532
    .line 533
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 541
    .line 542
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 543
    .line 544
    new-instance v0, Lnf/a;

    .line 545
    .line 546
    const/16 v1, 0xa

    .line 547
    .line 548
    invoke-direct {v0, v1, v4}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    .line 553
    .line 554
    goto :goto_7

    .line 555
    :cond_17
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 560
    .line 561
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 569
    .line 570
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 578
    .line 579
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 580
    .line 581
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 589
    .line 590
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 591
    .line 592
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 593
    .line 594
    .line 595
    :cond_18
    :goto_7
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 596
    .line 597
    return-object p1
.end method
