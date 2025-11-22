.class public final synthetic Lt1/f;
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

    iput p1, p0, Lt1/f;->a:I

    iput-object p2, p0, Lt1/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget v0, p0, Lt1/f;->a:I

    .line 2
    .line 3
    const-string v1, "tr.gov.turkiye.edevlet.kapisi"

    .line 4
    .line 5
    const/16 v2, 0x22

    .line 6
    .line 7
    const-string v3, "isFavMenuActive"

    .line 8
    .line 9
    const-string v4, "isEdkFolder"

    .line 10
    .line 11
    const-string v5, "isCustomPage"

    .line 12
    .line 13
    const-string v6, "serviceName"

    .line 14
    .line 15
    const-string v7, "folderUrl"

    .line 16
    .line 17
    const-string v8, "action.servicepage.open"

    .line 18
    .line 19
    const/16 v9, 0x17

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x1

    .line 23
    const-string v12, "this$0"

    .line 24
    .line 25
    iget-object v13, p0, Lt1/f;->b:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :pswitch_0
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;

    .line 33
    .line 34
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->e:[Lda/m;

    .line 35
    .line 36
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v13}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v0, 0x7f0a0270

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    .line 51
    .line 52
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 53
    .line 54
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->F()Lth/d;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lth/d;->d()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;

    .line 66
    .line 67
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    .line 68
    .line 69
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "GUEST"

    .line 73
    .line 74
    iput-object p1, v13, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->f:Ljava/lang/String;

    .line 75
    .line 76
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    if-lt p1, v9, :cond_0

    .line 79
    .line 80
    invoke-static {v13}, Lc5/y;->y(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->F()V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    :pswitch_3
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    .line 89
    .line 90
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->g:[Lda/m;

    .line 91
    .line 92
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->G()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_4
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    .line 100
    .line 101
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    .line 102
    .line 103
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Landroid/content/Intent;

    .line 107
    .line 108
    const-string v0, "android.intent.action.VIEW"

    .line 109
    .line 110
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "tel:112"

    .line 114
    .line 115
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v13, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_5
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionListItemModel;

    .line 127
    .line 128
    invoke-static {v13, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionListItemModel;Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_6
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/FirmGridItemModel;

    .line 133
    .line 134
    invoke-static {v13, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/FirmGridItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/FirmGridItemModel;Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_7
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 139
    .line 140
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y:I

    .line 141
    .line 142
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_8
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;

    .line 150
    .line 151
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->d:[Lda/m;

    .line 152
    .line 153
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const p1, 0x7f13025c

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v0, "getString(R.string.setti\u2026s_fragment_usage_history)"

    .line 164
    .line 165
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Landroid/content/Intent;

    .line 169
    .line 170
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v8, "edk-login-history"

    .line 174
    .line 175
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 191
    .line 192
    if-lt p1, v2, :cond_1

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    :cond_1
    invoke-virtual {v13, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 198
    .line 199
    .line 200
    const-string p1, "UsageHistory_Screen"

    .line 201
    .line 202
    invoke-virtual {v13, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->G(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p1, "Usage_History"

    .line 206
    .line 207
    invoke-virtual {v13, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->F(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_9
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 212
    .line 213
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    .line 214
    .line 215
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->I()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v0, "tr"

    .line 223
    .line 224
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_2
    const-string v0, "en"

    .line 232
    .line 233
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_3

    .line 238
    .line 239
    const-string p1, "edk-what-is-verified-by-id-en"

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_3
    :goto_1
    const-string p1, "edk-what-is-verified-by-id"

    .line 243
    .line 244
    :goto_2
    const v0, 0x7f1301d9

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v9, "getString(R.string.page_\u2026_what_is_id_verification)"

    .line 252
    .line 253
    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v9, Landroid/content/Intent;

    .line 257
    .line 258
    invoke-direct {v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 277
    .line 278
    if-lt p1, v2, :cond_4

    .line 279
    .line 280
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    :cond_4
    invoke-virtual {v13, v9}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_a
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;

    .line 288
    .line 289
    invoke-static {v13, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;->b(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :pswitch_b
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;

    .line 294
    .line 295
    invoke-static {v13, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;Landroid/view/View;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_c
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    .line 300
    .line 301
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 302
    .line 303
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->G()V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :pswitch_d
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;

    .line 311
    .line 312
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;->f:[Lda/m;

    .line 313
    .line 314
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 318
    .line 319
    if-lt p1, v9, :cond_6

    .line 320
    .line 321
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    sget-object v0, Lb0/a;->d:[Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, [Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {p1, v1}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_5

    .line 338
    .line 339
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;->F()V

    .line 340
    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_5
    invoke-virtual {v13, v0, v10}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_6
    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;->F()V

    .line 348
    .line 349
    .line 350
    :goto_3
    return-void

    .line 351
    :pswitch_e
    check-cast v13, Lt1/g;

    .line 352
    .line 353
    sget p1, Lt1/g;->j:I

    .line 354
    .line 355
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance p1, Landroid/content/Intent;

    .line 359
    .line 360
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const/4 v1, 0x0

    .line 369
    const-string v2, "package"

    .line 370
    .line 371
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 376
    .line 377
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 378
    .line 379
    .line 380
    const/high16 v0, 0x10000000

    .line 381
    .line 382
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v13, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :goto_4
    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 390
    .line 391
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->g:I

    .line 392
    .line 393
    invoke-static {v13, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    nop

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
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
