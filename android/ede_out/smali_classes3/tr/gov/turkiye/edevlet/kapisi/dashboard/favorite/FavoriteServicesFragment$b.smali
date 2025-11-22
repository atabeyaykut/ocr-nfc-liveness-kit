.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lrf/f;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lrf/f;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-boolean v1, p1, Lrf/f;->c:Z

    .line 10
    .line 11
    const-string v2, "tr.gov.turkiye.edevlet.kapisi"

    .line 12
    .line 13
    const/16 v3, 0x22

    .line 14
    .line 15
    const v4, 0x8000

    .line 16
    .line 17
    .line 18
    const-string v5, "action.login.open"

    .line 19
    .line 20
    const-string v6, "mServiceListController"

    .line 21
    .line 22
    const-string v7, "mServiceList"

    .line 23
    .line 24
    iget-object v8, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    .line 25
    .line 26
    if-eqz v1, :cond_8

    .line 27
    .line 28
    iget-object v1, p1, Lrf/f;->b:Lr0/b;

    .line 29
    .line 30
    instance-of v9, v1, Lr0/c1;

    .line 31
    .line 32
    if-eqz v9, :cond_4

    .line 33
    .line 34
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v1, :cond_1a

    .line 37
    .line 38
    iget-object p1, p1, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    xor-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_0
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->F()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_4
    instance-of p1, v1, Lr0/i;

    .line 86
    .line 87
    if-eqz p1, :cond_1a

    .line 88
    .line 89
    check-cast v1, Lr0/i;

    .line 90
    .line 91
    iget-object p1, v1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 92
    .line 93
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l:[Lda/m;

    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-static {v5, v4}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    if-lt v0, v3, :cond_5

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-virtual {v8, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_1a

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_6
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 128
    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->H()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_7
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->G()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_8
    iget-object v1, p1, Lrf/f;->a:Lr0/b;

    .line 142
    .line 143
    instance-of v9, v1, Lr0/d1;

    .line 144
    .line 145
    if-eqz v9, :cond_9

    .line 146
    .line 147
    const/4 v9, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_9
    instance-of v9, v1, Lr0/k;

    .line 150
    .line 151
    :goto_0
    const/4 v10, 0x0

    .line 152
    const/16 v11, 0x8

    .line 153
    .line 154
    if-eqz v9, :cond_a

    .line 155
    .line 156
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l:[Lda/m;

    .line 157
    .line 158
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 163
    .line 164
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 172
    .line 173
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 174
    .line 175
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 183
    .line 184
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 185
    .line 186
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 194
    .line 195
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_a
    instance-of v9, v1, Lr0/c1;

    .line 201
    .line 202
    if-eqz v9, :cond_15

    .line 203
    .line 204
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l:[Lda/m;

    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object p1, p1, Lrf/f;->e:Ljava/util/List;

    .line 210
    .line 211
    check-cast p1, Ljava/util/Collection;

    .line 212
    .line 213
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    xor-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    if-eqz v1, :cond_14

    .line 220
    .line 221
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 222
    .line 223
    if-nez v1, :cond_d

    .line 224
    .line 225
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->J()V

    .line 226
    .line 227
    .line 228
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 229
    .line 230
    invoke-direct {v1, v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController$a;)V

    .line 231
    .line 232
    .line 233
    iput-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 234
    .line 235
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 240
    .line 241
    iget-object v2, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 242
    .line 243
    if-eqz v2, :cond_c

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iput-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 253
    .line 254
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 255
    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    invoke-virtual {v1, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_c
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :cond_d
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 272
    .line 273
    if-eqz p1, :cond_10

    .line 274
    .line 275
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 280
    .line 281
    .line 282
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 283
    .line 284
    invoke-virtual {p1, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 289
    .line 290
    if-eqz v1, :cond_f

    .line 291
    .line 292
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const-string v2, "serviceCode"

    .line 297
    .line 298
    invoke-virtual {p1, v1, v2}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 306
    .line 307
    if-eqz p1, :cond_10

    .line 308
    .line 309
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_10

    .line 314
    .line 315
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 316
    .line 317
    if-eqz v1, :cond_e

    .line 318
    .line 319
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_1

    .line 323
    :cond_e
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_f
    const-string p1, "mService"

    .line 328
    .line 329
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :cond_10
    :goto_1
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 334
    .line 335
    if-eqz p1, :cond_13

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    xor-int/lit8 p1, p1, 0x1

    .line 342
    .line 343
    if-eqz p1, :cond_14

    .line 344
    .line 345
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->J()V

    .line 346
    .line 347
    .line 348
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 349
    .line 350
    if-eqz p1, :cond_12

    .line 351
    .line 352
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 353
    .line 354
    if-eqz v1, :cond_11

    .line 355
    .line 356
    invoke-virtual {p1, v1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v0

    .line 365
    :cond_12
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_14
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->F()V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_15
    instance-of p1, v1, Lr0/i;

    .line 378
    .line 379
    if-eqz p1, :cond_1a

    .line 380
    .line 381
    check-cast v1, Lr0/i;

    .line 382
    .line 383
    iget-object p1, v1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 384
    .line 385
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l:[Lda/m;

    .line 386
    .line 387
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 391
    .line 392
    if-eqz v0, :cond_17

    .line 393
    .line 394
    invoke-static {v5, v4}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 399
    .line 400
    if-lt v0, v3, :cond_16

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    :cond_16
    invoke-virtual {v8, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    if-eqz p1, :cond_1a

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 415
    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_17
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 419
    .line 420
    if-eqz v0, :cond_18

    .line 421
    .line 422
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->F()V

    .line 423
    .line 424
    .line 425
    goto :goto_2

    .line 426
    :cond_18
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 427
    .line 428
    if-eqz p1, :cond_19

    .line 429
    .line 430
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->H()V

    .line 431
    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_19
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 439
    .line 440
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 448
    .line 449
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 457
    .line 458
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 459
    .line 460
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 468
    .line 469
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 470
    .line 471
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 472
    .line 473
    .line 474
    :cond_1a
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 475
    .line 476
    return-object p1
.end method
