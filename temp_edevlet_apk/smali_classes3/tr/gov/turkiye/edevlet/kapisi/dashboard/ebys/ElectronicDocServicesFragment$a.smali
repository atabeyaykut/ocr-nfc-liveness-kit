.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lpf/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lpf/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 9
    .line 10
    const/16 v1, 0x22

    .line 11
    .line 12
    const v2, 0x8000

    .line 13
    .line 14
    .line 15
    const-string v3, "action.login.open"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iget-boolean v5, p1, Lpf/c;->d:Z

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    iget-object v7, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;

    .line 22
    .line 23
    iget-object v8, p1, Lpf/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 24
    .line 25
    iget-object v9, p1, Lpf/c;->c:Lr0/b;

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    instance-of p1, v9, Lr0/c1;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-static {v7, v8, v6}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    instance-of p1, v9, Lr0/i;

    .line 39
    .line 40
    if-eqz p1, :cond_1c

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-boolean v5, p1, Lpf/c;->e:Z

    .line 44
    .line 45
    if-eqz v5, :cond_7

    .line 46
    .line 47
    instance-of p1, v9, Lr0/c1;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-static {v7, v8, v4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_2
    instance-of p1, v9, Lr0/i;

    .line 57
    .line 58
    if-eqz p1, :cond_1c

    .line 59
    .line 60
    :goto_0
    check-cast v9, Lr0/i;

    .line 61
    .line 62
    iget-object p1, v9, Lr0/i;->b:Ljava/lang/Throwable;

    .line 63
    .line 64
    sget-object v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    if-lt v2, v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v7, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_1c

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->G()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_5
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->I()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_6
    invoke-virtual {v7, v4, v6}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->H(ZZ)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_7
    iget-object v5, p1, Lpf/c;->a:Lr0/b;

    .line 122
    .line 123
    instance-of v8, v5, Lr0/d1;

    .line 124
    .line 125
    if-eqz v8, :cond_8

    .line 126
    .line 127
    const/4 v8, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_8
    instance-of v8, v5, Lr0/k;

    .line 130
    .line 131
    :goto_1
    const/16 v9, 0x8

    .line 132
    .line 133
    if-eqz v8, :cond_9

    .line 134
    .line 135
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    .line 136
    .line 137
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 142
    .line 143
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 151
    .line 152
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 153
    .line 154
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 162
    .line 163
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 164
    .line 165
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 173
    .line 174
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_5

    .line 178
    .line 179
    :cond_9
    instance-of v8, v5, Lr0/c1;

    .line 180
    .line 181
    if-eqz v8, :cond_17

    .line 182
    .line 183
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object p1, p1, Lpf/c;->b:Ljava/util/List;

    .line 189
    .line 190
    move-object v0, p1

    .line 191
    check-cast v0, Ljava/util/Collection;

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_a
    const/4 v6, 0x0

    .line 203
    :cond_b
    :goto_2
    if-nez v6, :cond_16

    .line 204
    .line 205
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 210
    .line 211
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 219
    .line 220
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 221
    .line 222
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 230
    .line 231
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 232
    .line 233
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    const-string v2, "mServiceController"

    .line 249
    .line 250
    if-nez v0, :cond_e

    .line 251
    .line 252
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 253
    .line 254
    invoke-direct {v0, v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController$a;)V

    .line 255
    .line 256
    .line 257
    iput-object v0, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 258
    .line 259
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 264
    .line 265
    iget-object v3, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 266
    .line 267
    if-eqz v3, :cond_d

    .line 268
    .line 269
    invoke-virtual {v0, v3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 270
    .line 271
    .line 272
    iput-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 273
    .line 274
    iget-object v0, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 275
    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_5

    .line 282
    .line 283
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v1

    .line 287
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v1

    .line 291
    :cond_e
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 292
    .line 293
    if-eqz p1, :cond_1c

    .line 294
    .line 295
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 300
    .line 301
    .line 302
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object v0, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 309
    .line 310
    if-eqz v0, :cond_15

    .line 311
    .line 312
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string v3, "serviceCode"

    .line 317
    .line 318
    invoke-virtual {p1, v0, v3}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 326
    .line 327
    const-string v0, "mServiceList"

    .line 328
    .line 329
    if-eqz p1, :cond_12

    .line 330
    .line 331
    iget-object v3, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 332
    .line 333
    if-eqz v3, :cond_11

    .line 334
    .line 335
    check-cast v3, Ljava/lang/Iterable;

    .line 336
    .line 337
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_10

    .line 346
    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    move-object v5, v4

    .line 352
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 353
    .line 354
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-eqz v5, :cond_f

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_10
    move-object v4, v1

    .line 370
    :goto_3
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 371
    .line 372
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    invoke-static {p1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertNormalStatus(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 377
    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v1

    .line 384
    :cond_12
    :goto_4
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 385
    .line 386
    if-eqz p1, :cond_14

    .line 387
    .line 388
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 389
    .line 390
    if-eqz v2, :cond_13

    .line 391
    .line 392
    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_5

    .line 396
    .line 397
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v1

    .line 401
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v1

    .line 405
    :cond_15
    const-string p1, "mService"

    .line 406
    .line 407
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v1

    .line 411
    :cond_16
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->G()V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_5

    .line 415
    .line 416
    :cond_17
    instance-of p1, v5, Lr0/i;

    .line 417
    .line 418
    if-eqz p1, :cond_1c

    .line 419
    .line 420
    check-cast v5, Lr0/i;

    .line 421
    .line 422
    iget-object p1, v5, Lr0/i;->b:Ljava/lang/Throwable;

    .line 423
    .line 424
    sget-object v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    .line 425
    .line 426
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 430
    .line 431
    if-eqz v5, :cond_19

    .line 432
    .line 433
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 438
    .line 439
    if-lt v2, v1, :cond_18

    .line 440
    .line 441
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    .line 443
    .line 444
    :cond_18
    invoke-virtual {v7, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    if-eqz p1, :cond_1c

    .line 452
    .line 453
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 454
    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_19
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 458
    .line 459
    if-eqz v0, :cond_1a

    .line 460
    .line 461
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->G()V

    .line 462
    .line 463
    .line 464
    goto :goto_5

    .line 465
    :cond_1a
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 466
    .line 467
    if-eqz p1, :cond_1b

    .line 468
    .line 469
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 474
    .line 475
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 483
    .line 484
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 492
    .line 493
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 494
    .line 495
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 503
    .line 504
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 505
    .line 506
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 514
    .line 515
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 516
    .line 517
    new-instance v0, Lzd/e;

    .line 518
    .line 519
    const/4 v1, 0x2

    .line 520
    invoke-direct {v0, v1, v7}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    .line 525
    .line 526
    goto :goto_5

    .line 527
    :cond_1b
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 532
    .line 533
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 541
    .line 542
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 550
    .line 551
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 552
    .line 553
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 561
    .line 562
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 563
    .line 564
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    :cond_1c
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 568
    .line 569
    return-object p1
.end method
