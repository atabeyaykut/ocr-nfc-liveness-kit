.class public final synthetic Lnf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lnf/a;->a:I

    iput-object p2, p0, Lnf/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "mNetworkHelper"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget v2, p0, Lnf/a;->a:I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const-string v6, "this$0"

    .line 10
    .line 11
    iget-object v7, p0, Lnf/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :pswitch_0
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;

    .line 19
    .line 20
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->h:I

    .line 21
    .line 22
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 30
    .line 31
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->g:I

    .line 32
    .line 33
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;

    .line 41
    .line 42
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    .line 47
    .line 48
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 49
    .line 50
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-boolean v5, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->l:Z

    .line 54
    .line 55
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->j:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 69
    :goto_1
    if-nez p1, :cond_4

    .line 70
    .line 71
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->k:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 v5, 0x0

    .line 83
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 84
    .line 85
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->b:Ll9/e;

    .line 86
    .line 87
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lkh/e;

    .line 92
    .line 93
    iget-object v0, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->j:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->k:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance v5, Lkh/f;

    .line 107
    .line 108
    invoke-direct {v5, p1, v0, v2, v3}, Lkh/f;-><init>(Lkh/e;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p1, Lr0/z;->c:Lnc/a0;

    .line 112
    .line 113
    invoke-static {v0, v3, v4, v5, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 114
    .line 115
    .line 116
    new-instance v1, Lkh/g;

    .line 117
    .line 118
    invoke-direct {v1, p1, v3}, Lkh/g;-><init>(Lkh/e;Lp9/d;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Lkh/e;->h:Lkh/h;

    .line 122
    .line 123
    invoke-static {v0, p1, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    invoke-static {v7}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 132
    .line 133
    .line 134
    :goto_3
    return-void

    .line 135
    :pswitch_4
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    .line 136
    .line 137
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->p:[Lda/m;

    .line 138
    .line 139
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const v0, 0x7f0a026d

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_5
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;

    .line 154
    .line 155
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;->e:I

    .line 156
    .line 157
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;->onBackPressed()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_6
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;

    .line 165
    .line 166
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->j:[Lda/m;

    .line 167
    .line 168
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->b:Ll9/e;

    .line 172
    .line 173
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lwg/d;

    .line 178
    .line 179
    iget v0, v7, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->g:I

    .line 180
    .line 181
    iget v2, v7, Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;->f:I

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    new-instance v5, Lwg/e;

    .line 187
    .line 188
    invoke-direct {v5, p1, v0, v2, v3}, Lwg/e;-><init>(Lwg/d;IILp9/d;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p1, Lr0/z;->c:Lnc/a0;

    .line 192
    .line 193
    invoke-static {v0, v3, v4, v5, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 194
    .line 195
    .line 196
    new-instance v1, Lwg/f;

    .line 197
    .line 198
    invoke-direct {v1, p1, v3}, Lwg/f;-><init>(Lwg/d;Lp9/d;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, Lwg/d;->h:Lwg/g;

    .line 202
    .line 203
    invoke-static {v0, p1, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_7
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;

    .line 208
    .line 209
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    .line 210
    .line 211
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->c:Ll9/e;

    .line 215
    .line 216
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Lvg/d;

    .line 221
    .line 222
    iget v0, v7, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->h:I

    .line 223
    .line 224
    iget v2, v7, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->g:I

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance v5, Lvg/e;

    .line 230
    .line 231
    invoke-direct {v5, p1, v0, v2, v3}, Lvg/e;-><init>(Lvg/d;IILp9/d;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p1, Lr0/z;->c:Lnc/a0;

    .line 235
    .line 236
    invoke-static {v0, v3, v4, v5, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 237
    .line 238
    .line 239
    new-instance v1, Lvg/f;

    .line 240
    .line 241
    invoke-direct {v1, p1, v3}, Lvg/f;-><init>(Lvg/d;Lp9/d;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p1, Lvg/d;->h:Lvg/g;

    .line 245
    .line 246
    invoke-static {v0, p1, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_8
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    .line 251
    .line 252
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;->c(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_9
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 257
    .line 258
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y:I

    .line 259
    .line 260
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->d:Lgf/b;

    .line 264
    .line 265
    if-eqz p1, :cond_6

    .line 266
    .line 267
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-eqz p1, :cond_5

    .line 272
    .line 273
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y()V

    .line 274
    .line 275
    .line 276
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 277
    .line 278
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v0, "eDevletMobil"

    .line 282
    .line 283
    const-string v1, "true"

    .line 284
    .line 285
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 293
    .line 294
    iget-object v1, v7, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->v:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 300
    .line 301
    .line 302
    :cond_5
    return-void

    .line 303
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v3

    .line 307
    :pswitch_a
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchHistoryItem;

    .line 308
    .line 309
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchHistoryItem;->a(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchHistoryItem;Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_b
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;

    .line 314
    .line 315
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->a(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :pswitch_c
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;

    .line 320
    .line 321
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->g:[Lda/m;

    .line 322
    .line 323
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->f:Ll9/e;

    .line 327
    .line 328
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Lfg/f;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    new-instance v0, Lfg/g;

    .line 338
    .line 339
    invoke-direct {v0, p1, v3}, Lfg/g;-><init>(Lfg/f;Lp9/d;)V

    .line 340
    .line 341
    .line 342
    iget-object v2, p1, Lr0/z;->c:Lnc/a0;

    .line 343
    .line 344
    invoke-static {v2, v3, v4, v0, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 345
    .line 346
    .line 347
    new-instance v0, Lfg/h;

    .line 348
    .line 349
    invoke-direct {v0, p1, v3}, Lfg/h;-><init>(Lfg/f;Lp9/d;)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p1, Lfg/f;->h:Lfg/l;

    .line 353
    .line 354
    invoke-static {v2, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :pswitch_d
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;

    .line 359
    .line 360
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;->b(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;Landroid/view/View;)V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :pswitch_e
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel;

    .line 365
    .line 366
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel;Landroid/view/View;)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :pswitch_f
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;

    .line 371
    .line 372
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 373
    .line 374
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v7}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    const v0, 0x7f0a02d5

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v0, v5}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 385
    .line 386
    .line 387
    new-array p1, v5, [Ll9/g;

    .line 388
    .line 389
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 390
    .line 391
    new-instance v1, Ll9/g;

    .line 392
    .line 393
    const-string v2, "mustAtLeastOne"

    .line 394
    .line 395
    invoke-direct {v1, v2, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    aput-object v1, p1, v4

    .line 399
    .line 400
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-static {v7}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    const v1, 0x7f0a02d6

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_10
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/barcode/BarcodeServicesFragment;

    .line 416
    .line 417
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/barcode/BarcodeServicesFragment;->h:[Lda/m;

    .line 418
    .line 419
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/barcode/BarcodeServicesFragment;->b:Ll9/e;

    .line 423
    .line 424
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Lnf/e;

    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    new-instance v0, Lnf/h;

    .line 434
    .line 435
    invoke-direct {v0, p1, v3}, Lnf/h;-><init>(Lnf/e;Lp9/d;)V

    .line 436
    .line 437
    .line 438
    iget-object v2, p1, Lr0/z;->c:Lnc/a0;

    .line 439
    .line 440
    invoke-static {v2, v3, v4, v0, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 441
    .line 442
    .line 443
    new-instance v0, Lnf/i;

    .line 444
    .line 445
    invoke-direct {v0, p1, v3}, Lnf/i;-><init>(Lnf/e;Lp9/d;)V

    .line 446
    .line 447
    .line 448
    iget-object p1, p1, Lnf/e;->h:Lnf/m;

    .line 449
    .line 450
    invoke-static {v2, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :goto_4
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;

    .line 455
    .line 456
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->p:I

    .line 457
    .line 458
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->b:Lgf/b;

    .line 462
    .line 463
    if-eqz p1, :cond_d

    .line 464
    .line 465
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-eqz p1, :cond_c

    .line 470
    .line 471
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->b:Lcom/google/android/material/textfield/TextInputEditText;

    .line 476
    .line 477
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    invoke-static {p1}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    iput-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->n:Ljava/lang/String;

    .line 494
    .line 495
    const-string v0, "mSMSVerification"

    .line 496
    .line 497
    if-eqz p1, :cond_b

    .line 498
    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    if-lez p1, :cond_7

    .line 504
    .line 505
    const/4 p1, 0x1

    .line 506
    goto :goto_5

    .line 507
    :cond_7
    const/4 p1, 0x0

    .line 508
    :goto_5
    if-eqz p1, :cond_a

    .line 509
    .line 510
    :try_start_0
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->f:Landroid/widget/ProgressBar;

    .line 515
    .line 516
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->d:Landroidx/constraintlayout/widget/Group;

    .line 524
    .line 525
    const/16 v2, 0x8

    .line 526
    .line 527
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 535
    .line 536
    const-string v2, "mSMSVerificationBinding.txtInputSmsCode"

    .line 537
    .line 538
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .line 543
    .line 544
    goto :goto_6

    .line 545
    :catch_0
    nop

    .line 546
    :goto_6
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 551
    .line 552
    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    new-array p1, v1, [Ll9/g;

    .line 556
    .line 557
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->j:Ljava/lang/String;

    .line 558
    .line 559
    new-instance v6, Ll9/g;

    .line 560
    .line 561
    const-string v8, "token"

    .line 562
    .line 563
    invoke-direct {v6, v8, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    aput-object v6, p1, v4

    .line 567
    .line 568
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->h:Ljava/lang/String;

    .line 569
    .line 570
    new-instance v6, Ll9/g;

    .line 571
    .line 572
    const-string v8, "uuid"

    .line 573
    .line 574
    invoke-direct {v6, v8, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    aput-object v6, p1, v5

    .line 578
    .line 579
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->n:Ljava/lang/String;

    .line 580
    .line 581
    if-eqz v2, :cond_9

    .line 582
    .line 583
    new-instance v0, Ll9/g;

    .line 584
    .line 585
    const-string v3, "smsCode"

    .line 586
    .line 587
    invoke-direct {v0, v3, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    const/4 v2, 0x2

    .line 591
    aput-object v0, p1, v2

    .line 592
    .line 593
    new-instance v0, Landroidx/work/Data$Builder;

    .line 594
    .line 595
    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 596
    .line 597
    .line 598
    :goto_7
    if-ge v4, v1, :cond_8

    .line 599
    .line 600
    aget-object v2, p1, v4

    .line 601
    .line 602
    add-int/lit8 v4, v4, 0x1

    .line 603
    .line 604
    iget-object v3, v2, Ll9/g;->a:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v3, Ljava/lang/String;

    .line 607
    .line 608
    iget-object v2, v2, Ll9/g;->b:Ljava/lang/Object;

    .line 609
    .line 610
    invoke-virtual {v0, v3, v2}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 611
    .line 612
    .line 613
    goto :goto_7

    .line 614
    :cond_8
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    const-string v0, "dataBuilder.build()"

    .line 619
    .line 620
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 624
    .line 625
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;

    .line 626
    .line 627
    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 635
    .line 636
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    const-string v0, "OneTimeWorkRequestBuilde\u2026                 .build()"

    .line 641
    .line 642
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 646
    .line 647
    invoke-static {v7}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 652
    .line 653
    .line 654
    goto :goto_8

    .line 655
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v3

    .line 659
    :cond_a
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 664
    .line 665
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->getResources()Landroid/content/res/Resources;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    const v1, 0x7f1302b2

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 677
    .line 678
    .line 679
    goto :goto_8

    .line 680
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    throw v3

    .line 684
    :cond_c
    const-string p1, "warning"

    .line 685
    .line 686
    const v0, 0x7f130066

    .line 687
    .line 688
    .line 689
    invoke-virtual {v7, v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->u(ILjava/lang/String;)V

    .line 690
    .line 691
    .line 692
    :goto_8
    return-void

    .line 693
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v3

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
