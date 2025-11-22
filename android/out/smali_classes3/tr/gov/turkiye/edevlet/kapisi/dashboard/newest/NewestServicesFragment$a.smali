.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lvf/b;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lvf/b;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lvf/b;->a:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;

    .line 12
    .line 13
    iget-object v3, p1, Lvf/b;->c:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 14
    .line 15
    iget-object v4, p1, Lvf/b;->e:Lr0/b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    instance-of p1, v4, Lr0/c1;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {v2, v3, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    instance-of p1, v4, Lr0/i;

    .line 29
    .line 30
    if-eqz p1, :cond_18

    .line 31
    .line 32
    check-cast v4, Lr0/i;

    .line 33
    .line 34
    iget-object p1, v4, Lr0/i;->b:Ljava/lang/Throwable;

    .line 35
    .line 36
    invoke-static {v2, p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;Ljava/lang/Throwable;Z)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p1, Lvf/b;->b:Z

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    instance-of p1, v4, Lr0/c1;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-static {v2, v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_2
    instance-of p1, v4, Lr0/i;

    .line 56
    .line 57
    if-eqz p1, :cond_18

    .line 58
    .line 59
    check-cast v4, Lr0/i;

    .line 60
    .line 61
    iget-object p1, v4, Lr0/i;->b:Ljava/lang/Throwable;

    .line 62
    .line 63
    invoke-static {v2, p1, v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;Ljava/lang/Throwable;Z)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_3
    iget-object v0, p1, Lvf/b;->f:Lr0/b;

    .line 69
    .line 70
    instance-of v3, v0, Lr0/d1;

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    instance-of v3, v0, Lr0/k;

    .line 77
    .line 78
    :goto_0
    const/16 v4, 0x8

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->h:[Lda/m;

    .line 83
    .line 84
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 98
    .line 99
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 109
    .line 110
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 120
    .line 121
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_5
    instance-of v3, v0, Lr0/c1;

    .line 127
    .line 128
    if-eqz v3, :cond_13

    .line 129
    .line 130
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->h:[Lda/m;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object p1, p1, Lvf/b;->d:Ljava/util/List;

    .line 136
    .line 137
    move-object v0, p1

    .line 138
    check-cast v0, Ljava/util/Collection;

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    const/4 v1, 0x0

    .line 150
    :cond_7
    :goto_1
    if-nez v1, :cond_12

    .line 151
    .line 152
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 166
    .line 167
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 177
    .line 178
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    const-string v3, "mServiceController"

    .line 196
    .line 197
    if-nez v0, :cond_a

    .line 198
    .line 199
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;

    .line 200
    .line 201
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController$a;)V

    .line 202
    .line 203
    .line 204
    iput-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;

    .line 205
    .line 206
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 211
    .line 212
    iget-object v4, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;

    .line 213
    .line 214
    if-eqz v4, :cond_9

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 217
    .line 218
    .line 219
    iput-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->f:Ljava/util/List;

    .line 220
    .line 221
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;

    .line 222
    .line 223
    if-eqz v0, :cond_8

    .line 224
    .line 225
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_4

    .line 229
    .line 230
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v1

    .line 234
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v1

    .line 238
    :cond_a
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 239
    .line 240
    if-eqz p1, :cond_18

    .line 241
    .line 242
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 247
    .line 248
    .line 249
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 256
    .line 257
    if-eqz v0, :cond_11

    .line 258
    .line 259
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v4, "serviceCode"

    .line 264
    .line 265
    invoke-virtual {p1, v0, v4}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 273
    .line 274
    const-string v0, "mServiceList"

    .line 275
    .line 276
    if-eqz p1, :cond_e

    .line 277
    .line 278
    iget-object v4, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->f:Ljava/util/List;

    .line 279
    .line 280
    if-eqz v4, :cond_d

    .line 281
    .line 282
    check-cast v4, Ljava/lang/Iterable;

    .line 283
    .line 284
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_c

    .line 293
    .line 294
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    move-object v6, v5

    .line 299
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 300
    .line 301
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_b

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_c
    move-object v5, v1

    .line 317
    :goto_2
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 318
    .line 319
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-static {p1, v4}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertNormalStatus(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v1

    .line 331
    :cond_e
    :goto_3
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController;

    .line 332
    .line 333
    if-eqz p1, :cond_10

    .line 334
    .line 335
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->f:Ljava/util/List;

    .line 336
    .line 337
    if-eqz v2, :cond_f

    .line 338
    .line 339
    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_4

    .line 343
    .line 344
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v1

    .line 348
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v1

    .line 352
    :cond_11
    const-string p1, "mService"

    .line 353
    .line 354
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v1

    .line 358
    :cond_12
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->H()V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :cond_13
    instance-of p1, v0, Lr0/i;

    .line 364
    .line 365
    if-eqz p1, :cond_18

    .line 366
    .line 367
    check-cast v0, Lr0/i;

    .line 368
    .line 369
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 370
    .line 371
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->h:[Lda/m;

    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 377
    .line 378
    if-eqz v0, :cond_15

    .line 379
    .line 380
    const-string p1, "action.login.open"

    .line 381
    .line 382
    const v0, 0x8000

    .line 383
    .line 384
    .line 385
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 390
    .line 391
    const/16 v1, 0x22

    .line 392
    .line 393
    if-lt v0, v1, :cond_14

    .line 394
    .line 395
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    :cond_14
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    if-eqz p1, :cond_18

    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 410
    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_15
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 414
    .line 415
    if-eqz v0, :cond_16

    .line 416
    .line 417
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->H()V

    .line 418
    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_16
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 422
    .line 423
    if-eqz p1, :cond_17

    .line 424
    .line 425
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 430
    .line 431
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 439
    .line 440
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 448
    .line 449
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 450
    .line 451
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 459
    .line 460
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 461
    .line 462
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 470
    .line 471
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 472
    .line 473
    new-instance v0, Lzd/a;

    .line 474
    .line 475
    const/4 v1, 0x3

    .line 476
    invoke-direct {v0, v1, v2}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    .line 481
    .line 482
    goto :goto_4

    .line 483
    :cond_17
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 488
    .line 489
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 497
    .line 498
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 506
    .line 507
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 508
    .line 509
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 517
    .line 518
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 519
    .line 520
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 521
    .line 522
    .line 523
    :cond_18
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 524
    .line 525
    return-object p1
.end method
