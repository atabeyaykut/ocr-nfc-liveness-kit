.class public final synthetic Lxf/d;
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

    iput p1, p0, Lxf/d;->a:I

    iput-object p2, p0, Lxf/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x3

    .line 4
    iget v3, p0, Lxf/d;->a:I

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    const-string v7, "this$0"

    .line 10
    .line 11
    iget-object v8, p0, Lxf/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :pswitch_0
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;

    .line 19
    .line 20
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->j:I

    .line 21
    .line 22
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 30
    .line 31
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 32
    .line 33
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v0, 0x17

    .line 39
    .line 40
    if-lt p1, v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Lc5/y;->s:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1, v1}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->G()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v8, v0, v4}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->G()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    :pswitch_2
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;

    .line 73
    .line 74
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->k:I

    .line 75
    .line 76
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_3
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    .line 84
    .line 85
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 86
    .line 87
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->d:Landroid/content/Context;

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    const-string v0, "market://details?id="

    .line 95
    .line 96
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 97
    .line 98
    const-string v2, "android.intent.action.VIEW"

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catch_0
    const v0, 0x7f13029e

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_1
    return-void

    .line 138
    :pswitch_4
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;

    .line 139
    .line 140
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    .line 141
    .line 142
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v8}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const v0, 0x7f0a0274

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_5
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    .line 157
    .line 158
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->g:[Lda/m;

    .line 159
    .line 160
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->G()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_6
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    .line 168
    .line 169
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->p:[Lda/m;

    .line 170
    .line 171
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->H()Ldh/f;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance v0, Ldh/i;

    .line 182
    .line 183
    invoke-direct {v0, p1, v5}, Ldh/i;-><init>(Ldh/f;Lp9/d;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p1, Lr0/z;->c:Lnc/a0;

    .line 187
    .line 188
    invoke-static {v1, v5, v4, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 189
    .line 190
    .line 191
    new-instance v0, Ldh/j;

    .line 192
    .line 193
    invoke-direct {v0, p1, v5}, Ldh/j;-><init>(Ldh/f;Lp9/d;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Ldh/f;->i:Ldh/c;

    .line 197
    .line 198
    invoke-static {v1, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_7
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    .line 203
    .line 204
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    .line 205
    .line 206
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->b:Ll9/e;

    .line 210
    .line 211
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Lbh/c;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v0, Lbh/f;

    .line 221
    .line 222
    invoke-direct {v0, p1, v5}, Lbh/f;-><init>(Lbh/c;Lp9/d;)V

    .line 223
    .line 224
    .line 225
    iget-object v1, p1, Lr0/z;->c:Lnc/a0;

    .line 226
    .line 227
    invoke-static {v1, v5, v4, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 228
    .line 229
    .line 230
    new-instance v0, Lbh/g;

    .line 231
    .line 232
    invoke-direct {v0, p1, v5}, Lbh/g;-><init>(Lbh/c;Lp9/d;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p1, Lbh/c;->h:Lbh/i;

    .line 236
    .line 237
    invoke-static {v1, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_8
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 242
    .line 243
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 244
    .line 245
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 249
    .line 250
    if-eqz p1, :cond_3

    .line 251
    .line 252
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getRole()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    goto :goto_2

    .line 257
    :cond_3
    move-object p1, v5

    .line 258
    :goto_2
    const-string v2, "HOST"

    .line 259
    .line 260
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_4

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_4
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 268
    .line 269
    const-string v2, "GUEST"

    .line 270
    .line 271
    if-eqz p1, :cond_6

    .line 272
    .line 273
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getParticipants()Lio/realm/q0;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_6

    .line 278
    .line 279
    invoke-virtual {p1}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_6

    .line 288
    .line 289
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 294
    .line 295
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPartyRole()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_5

    .line 304
    .line 305
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getReportPartyId()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_6
    :goto_4
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    .line 310
    .line 311
    if-eqz p1, :cond_7

    .line 312
    .line 313
    new-instance v3, Lv/e;

    .line 314
    .line 315
    invoke-direct {v3, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    const p1, 0x7f130166

    .line 319
    .line 320
    .line 321
    const v4, 0x7f130168

    .line 322
    .line 323
    .line 324
    invoke-static {p1, v3, v5, v1, v4}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    new-instance v1, Lzg/d;

    .line 329
    .line 330
    invoke-direct {v1, v2, v8}, Lzg/d;-><init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v3, p1, v5, v1, v0}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 334
    .line 335
    .line 336
    const p1, 0x7f130167

    .line 337
    .line 338
    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    sget-object v0, Lzg/e;->a:Lzg/e;

    .line 344
    .line 345
    invoke-static {v3, p1, v0}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Lv/e;->show()V

    .line 349
    .line 350
    .line 351
    :cond_7
    return-void

    .line 352
    :pswitch_9
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    .line 353
    .line 354
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;->d(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Landroid/view/View;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :pswitch_a
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    .line 359
    .line 360
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 361
    .line 362
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->a:Ll9/e;

    .line 366
    .line 367
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    check-cast p1, Lqg/i;

    .line 372
    .line 373
    iget v0, v8, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->d:I

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    new-instance v1, Lqg/j;

    .line 379
    .line 380
    invoke-direct {v1, p1, v0, v5}, Lqg/j;-><init>(Lqg/i;ILp9/d;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p1, Lr0/z;->c:Lnc/a0;

    .line 384
    .line 385
    invoke-static {v0, v5, v4, v1, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 386
    .line 387
    .line 388
    new-instance v1, Lqg/k;

    .line 389
    .line 390
    invoke-direct {v1, p1, v5}, Lqg/k;-><init>(Lqg/i;Lp9/d;)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p1, Lqg/i;->h:Lqg/l;

    .line 394
    .line 395
    invoke-static {v0, p1, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :pswitch_b
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 400
    .line 401
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 402
    .line 403
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 407
    .line 408
    const-string v0, "mSearchFragmentBinding"

    .line 409
    .line 410
    if-eqz p1, :cond_a

    .line 411
    .line 412
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 413
    .line 414
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 415
    .line 416
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    if-eqz p1, :cond_8

    .line 421
    .line 422
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 423
    .line 424
    .line 425
    :cond_8
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 426
    .line 427
    if-eqz p1, :cond_9

    .line 428
    .line 429
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 430
    .line 431
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 432
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->H()V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw v5

    .line 444
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw v5

    .line 448
    :pswitch_c
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    .line 449
    .line 450
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->k:I

    .line 451
    .line 452
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_d
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;

    .line 460
    .line 461
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->d:[Lda/m;

    .line 462
    .line 463
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->b:Ljava/lang/String;

    .line 467
    .line 468
    if-eqz p1, :cond_e

    .line 469
    .line 470
    const-string v0, "tr"

    .line 471
    .line 472
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_b

    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_b
    const-string v0, "en"

    .line 480
    .line 481
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    if-eqz p1, :cond_c

    .line 486
    .line 487
    const-string p1, "edk-2fa-operations-en"

    .line 488
    .line 489
    goto :goto_6

    .line 490
    :cond_c
    :goto_5
    const-string p1, "edk-2fa-operations"

    .line 491
    .line 492
    :goto_6
    const v0, 0x7f13025b

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v1, "getString(R.string.settings_fragment_two_factor)"

    .line 500
    .line 501
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    new-instance v1, Landroid/content/Intent;

    .line 505
    .line 506
    const-string v2, "action.servicepage.open"

    .line 507
    .line 508
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const-string v2, "folderUrl"

    .line 512
    .line 513
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    .line 515
    .line 516
    const-string p1, "serviceName"

    .line 517
    .line 518
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    .line 520
    .line 521
    const-string p1, "isCustomPage"

    .line 522
    .line 523
    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    const-string p1, "isEdkFolder"

    .line 527
    .line 528
    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    .line 530
    .line 531
    const-string p1, "isFavMenuActive"

    .line 532
    .line 533
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    .line 535
    .line 536
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 537
    .line 538
    const/16 v0, 0x22

    .line 539
    .line 540
    if-lt p1, v0, :cond_d

    .line 541
    .line 542
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 543
    .line 544
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    .line 546
    .line 547
    :cond_d
    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 548
    .line 549
    .line 550
    const-string p1, "TwoFactorAuthentication_Screen"

    .line 551
    .line 552
    invoke-virtual {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->G(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string p1, "Two_Factor_Authentication"

    .line 556
    .line 557
    invoke-virtual {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->F(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :cond_e
    const-string p1, "mLanguage"

    .line 562
    .line 563
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    throw v5

    .line 567
    :pswitch_e
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 568
    .line 569
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    .line 570
    .line 571
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->e:Ll9/e;

    .line 575
    .line 576
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    check-cast p1, Lgg/b;

    .line 581
    .line 582
    invoke-virtual {p1}, Lgg/b;->d()V

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :pswitch_f
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 587
    .line 588
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 589
    .line 590
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y()Lgf/b;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    if-eqz p1, :cond_f

    .line 602
    .line 603
    iput-boolean v6, v8, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 604
    .line 605
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->H()V

    .line 606
    .line 607
    .line 608
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 609
    .line 610
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 611
    .line 612
    .line 613
    const-string v0, "eDevletMobil"

    .line 614
    .line 615
    const-string v1, "true"

    .line 616
    .line 617
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->x()Ltr/gov/turkiye/edevlet/kapisi/login/databinding/ActivityLoginBinding;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/login/databinding/ActivityLoginBinding;->f:Landroid/webkit/WebView;

    .line 625
    .line 626
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->n:Ljava/lang/String;

    .line 627
    .line 628
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 632
    .line 633
    .line 634
    :cond_f
    return-void

    .line 635
    :pswitch_10
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;

    .line 636
    .line 637
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;Landroid/view/View;)V

    .line 638
    .line 639
    .line 640
    return-void

    .line 641
    :pswitch_11
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel;

    .line 642
    .line 643
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel;Landroid/view/View;)V

    .line 644
    .line 645
    .line 646
    return-void

    .line 647
    :goto_7
    check-cast v8, Lai/c;

    .line 648
    .line 649
    sget-object p1, Lai/c;->m:[Lda/m;

    .line 650
    .line 651
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    :try_start_1
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    if-eqz p1, :cond_11

    .line 663
    .line 664
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    if-eqz v2, :cond_11

    .line 669
    .line 670
    iget-object p1, v8, Lai/c;->b:Landroid/content/Context;

    .line 671
    .line 672
    if-eqz p1, :cond_13

    .line 673
    .line 674
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->w(Landroid/content/Context;)Z

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    if-nez p1, :cond_10

    .line 679
    .line 680
    iget-object p1, v8, Lai/c;->b:Landroid/content/Context;

    .line 681
    .line 682
    if-eqz p1, :cond_13

    .line 683
    .line 684
    new-instance v2, Lv/e;

    .line 685
    .line 686
    invoke-direct {v2, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 687
    .line 688
    .line 689
    const v3, 0x7f1301c5

    .line 690
    .line 691
    .line 692
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    invoke-static {v2, v3, v5, v1}, Lv/e;->c(Lv/e;Ljava/lang/Integer;Ljava/lang/CharSequence;I)V

    .line 697
    .line 698
    .line 699
    const v1, 0x7f1301ef

    .line 700
    .line 701
    .line 702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    new-instance v3, Lai/d;

    .line 707
    .line 708
    invoke-direct {v3, p1}, Lai/d;-><init>(Landroid/content/Context;)V

    .line 709
    .line 710
    .line 711
    invoke-static {v2, v1, v5, v3, v0}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 712
    .line 713
    .line 714
    const p1, 0x7f1301ee

    .line 715
    .line 716
    .line 717
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 718
    .line 719
    .line 720
    move-result-object p1

    .line 721
    sget-object v0, Lai/e;->a:Lai/e;

    .line 722
    .line 723
    invoke-static {v2, p1, v0}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2}, Lv/e;->show()V

    .line 727
    .line 728
    .line 729
    goto/16 :goto_9

    .line 730
    .line 731
    :cond_10
    new-instance p1, Landroid/content/Intent;

    .line 732
    .line 733
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 738
    .line 739
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .line 741
    .line 742
    const-string v0, "uuid"

    .line 743
    .line 744
    iget-object v1, v8, Lai/c;->c:Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    .line 748
    .line 749
    const-string v0, "challenge"

    .line 750
    .line 751
    iget-object v1, v8, Lai/c;->d:Ljava/lang/String;

    .line 752
    .line 753
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    .line 755
    .line 756
    const-string v0, "verificationCode"

    .line 757
    .line 758
    iget-object v1, v8, Lai/c;->h:Ljava/lang/String;

    .line 759
    .line 760
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    .line 762
    .line 763
    const-string v0, "token"

    .line 764
    .line 765
    iget-object v1, v8, Lai/c;->e:Ljava/lang/String;

    .line 766
    .line 767
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    .line 769
    .line 770
    const-string v0, "phoneNumber"

    .line 771
    .line 772
    iget-object v1, v8, Lai/c;->f:Ljava/lang/String;

    .line 773
    .line 774
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    .line 776
    .line 777
    const-string v0, "countryCode"

    .line 778
    .line 779
    iget-object v1, v8, Lai/c;->g:Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    .line 783
    .line 784
    const-string v0, "serialNo"

    .line 785
    .line 786
    iget-object v1, v8, Lai/c;->j:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    .line 790
    .line 791
    const-string v0, "birthDate"

    .line 792
    .line 793
    iget-object v1, v8, Lai/c;->k:Ljava/lang/String;

    .line 794
    .line 795
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    .line 797
    .line 798
    const-string v0, "validationDate"

    .line 799
    .line 800
    iget-object v1, v8, Lai/c;->l:Ljava/lang/String;

    .line 801
    .line 802
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    .line 804
    .line 805
    const/16 v0, 0x10a

    .line 806
    .line 807
    invoke-virtual {v8, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 808
    .line 809
    .line 810
    goto :goto_9

    .line 811
    :cond_11
    const-class v0, Lie/e;

    .line 812
    .line 813
    if-eqz p1, :cond_12

    .line 814
    .line 815
    :try_start_2
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 816
    .line 817
    .line 818
    move-result p1

    .line 819
    if-nez p1, :cond_12

    .line 820
    .line 821
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    if-eqz p1, :cond_13

    .line 826
    .line 827
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 828
    .line 829
    .line 830
    move-result-object p1

    .line 831
    if-eqz p1, :cond_13

    .line 832
    .line 833
    new-instance v1, Lai/a;

    .line 834
    .line 835
    invoke-direct {v1}, Lai/a;-><init>()V

    .line 836
    .line 837
    .line 838
    new-instance v2, Lie/e;

    .line 839
    .line 840
    invoke-direct {v2, v1}, Lie/e;-><init>(Lie/e$a;)V

    .line 841
    .line 842
    .line 843
    goto :goto_8

    .line 844
    :cond_12
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    if-eqz p1, :cond_13

    .line 849
    .line 850
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 851
    .line 852
    .line 853
    move-result-object p1

    .line 854
    if-eqz p1, :cond_13

    .line 855
    .line 856
    new-instance v1, Lai/b;

    .line 857
    .line 858
    invoke-direct {v1}, Lai/b;-><init>()V

    .line 859
    .line 860
    .line 861
    new-instance v2, Lie/c;

    .line 862
    .line 863
    invoke-direct {v2, v1}, Lie/c;-><init>(Lie/c$a;)V

    .line 864
    .line 865
    .line 866
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 871
    .line 872
    .line 873
    :catch_1
    :cond_13
    :goto_9
    return-void

    .line 874
    nop

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
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
