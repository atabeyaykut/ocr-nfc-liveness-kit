.class public final synthetic Lzd/e;
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

    iput p1, p0, Lzd/e;->a:I

    iput-object p2, p0, Lzd/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    iget v4, v0, Lzd/e;->a:I

    .line 8
    .line 9
    const-string v5, "isFavMenuActive"

    .line 10
    .line 11
    const-string v6, "isCustomPage"

    .line 12
    .line 13
    const-string v7, "serviceName"

    .line 14
    .line 15
    const-string v8, "folderUrl"

    .line 16
    .line 17
    const-string v9, "action.servicepage.open"

    .line 18
    .line 19
    const-string v10, "tr.gov.turkiye.edevlet.kapisi"

    .line 20
    .line 21
    const/16 v11, 0x22

    .line 22
    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x1

    .line 25
    const-string v14, "this$0"

    .line 26
    .line 27
    iget-object v15, v0, Lzd/e;->b:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_9

    .line 33
    .line 34
    :pswitch_0
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/result/MobileAccidentResultFragment;

    .line 35
    .line 36
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/result/MobileAccidentResultFragment;->d:[Lda/m;

    .line 37
    .line 38
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-array v1, v13, [Ll9/g;

    .line 42
    .line 43
    iget-boolean v2, v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/result/MobileAccidentResultFragment;->c:Z

    .line 44
    .line 45
    xor-int/2addr v2, v13

    .line 46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ll9/g;

    .line 51
    .line 52
    const-string v4, "redirectToCompletedTab"

    .line 53
    .line 54
    invoke-direct {v3, v4, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    aput-object v3, v1, v12

    .line 58
    .line 59
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v15}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Landroidx/navigation/NavOptions$Builder;

    .line 68
    .line 69
    invoke-direct {v3}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    const v4, 0x7f0a0271

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4, v12}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const v4, 0x7f0a0274

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4, v1, v3}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    .line 91
    .line 92
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 93
    .line 94
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->F()Lth/d;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lth/d;->d()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 106
    .line 107
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    .line 108
    .line 109
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 113
    .line 114
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {v4, v5}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-nez v1, :cond_0

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance v1, Lrh/g;

    .line 141
    .line 142
    invoke-direct {v1, v4, v3}, Lrh/g;-><init>(Lrh/d;Lp9/d;)V

    .line 143
    .line 144
    .line 145
    iget-object v5, v4, Lr0/z;->c:Lnc/a0;

    .line 146
    .line 147
    invoke-static {v5, v3, v12, v1, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 148
    .line 149
    .line 150
    new-instance v1, Lrh/h;

    .line 151
    .line 152
    invoke-direct {v1, v4, v3}, Lrh/h;-><init>(Lrh/d;Lp9/d;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v4, Lrh/d;->h:Lrh/q;

    .line 156
    .line 157
    invoke-static {v5, v2, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v4}, Lrh/d;->d()V

    .line 162
    .line 163
    .line 164
    :goto_0
    return-void

    .line 165
    :pswitch_3
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;

    .line 166
    .line 167
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    .line 168
    .line 169
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string v1, "HOST"

    .line 173
    .line 174
    iput-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->f:Ljava/lang/String;

    .line 175
    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    .line 178
    const/16 v2, 0x17

    .line 179
    .line 180
    if-lt v1, v2, :cond_1

    .line 181
    .line 182
    invoke-static {v15}, Lc5/y;->y(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 187
    .line 188
    const-string v3, "action.barcode.open"

    .line 189
    .line 190
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    if-lt v1, v11, :cond_2

    .line 194
    .line 195
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    :cond_2
    :goto_1
    return-void

    .line 199
    :pswitch_4
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    .line 200
    .line 201
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    .line 202
    .line 203
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v15}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :pswitch_5
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionGridItemModel;

    .line 215
    .line 216
    invoke-static {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionGridItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionGridItemModel;Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_6
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;

    .line 221
    .line 222
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->e:I

    .line 223
    .line 224
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_7
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;

    .line 232
    .line 233
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->d:[Lda/m;

    .line 234
    .line 235
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const v1, 0x7f13024b

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const-string v2, "getString(R.string.setti\u2026fragment_change_password)"

    .line 246
    .line 247
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Landroid/content/Intent;

    .line 251
    .line 252
    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string v3, "https://giris.turkiye.gov.tr/Giris/Mobil/V2/SifreDegistir?start=1"

    .line 256
    .line 257
    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 270
    .line 271
    if-lt v1, v11, :cond_3

    .line 272
    .line 273
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    :cond_3
    invoke-virtual {v15, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 277
    .line 278
    .line 279
    const-string v1, "ChangePassword_Screen"

    .line 280
    .line 281
    invoke-virtual {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->G(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v1, "Change_Password"

    .line 285
    .line 286
    invoke-virtual {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;->F(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_8
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 291
    .line 292
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    .line 293
    .line 294
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    if-eqz v1, :cond_4

    .line 306
    .line 307
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_4

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    goto :goto_4

    .line 315
    :cond_4
    if-eqz v1, :cond_5

    .line 316
    .line 317
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_5

    .line 322
    .line 323
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    if-eqz v1, :cond_7

    .line 328
    .line 329
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    if-eqz v1, :cond_7

    .line 334
    .line 335
    new-instance v2, Lgg/a;

    .line 336
    .line 337
    invoke-direct {v2}, Lgg/a;-><init>()V

    .line 338
    .line 339
    .line 340
    new-instance v4, Lie/e;

    .line 341
    .line 342
    invoke-direct {v4, v2}, Lie/e;-><init>(Lie/e$a;)V

    .line 343
    .line 344
    .line 345
    const-class v2, Lie/e;

    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v4, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_5
    iget-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    .line 356
    .line 357
    if-eqz v1, :cond_7

    .line 358
    .line 359
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-eqz v2, :cond_6

    .line 364
    .line 365
    const v4, 0x7f0a02dc

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    goto :goto_2

    .line 373
    :cond_6
    move-object v2, v3

    .line 374
    :goto_2
    sget v4, Lke/d;->a:I

    .line 375
    .line 376
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 381
    .line 382
    const-string v14, "mContactInfoFragmentBind\u2026g.profileContactContainer"

    .line 383
    .line 384
    invoke-static {v4, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const v14, 0x7f060025

    .line 388
    .line 389
    .line 390
    invoke-static {v1, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 391
    .line 392
    .line 393
    move-result v14

    .line 394
    const v3, 0x7f060097

    .line 395
    .line 396
    .line 397
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    const v3, 0x7f1301c0

    .line 402
    .line 403
    .line 404
    invoke-static {v4, v3, v2, v14, v1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    if-eqz v1, :cond_7

    .line 409
    .line 410
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 411
    .line 412
    .line 413
    :cond_7
    :goto_3
    const/4 v1, 0x0

    .line 414
    :goto_4
    if-eqz v1, :cond_e

    .line 415
    .line 416
    iget-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->b:Lgf/b;

    .line 417
    .line 418
    if-eqz v1, :cond_d

    .line 419
    .line 420
    if-eqz v1, :cond_c

    .line 421
    .line 422
    invoke-virtual {v1}, Lgf/b;->a()Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_b

    .line 427
    .line 428
    iput-boolean v13, v15, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->h:Z

    .line 429
    .line 430
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->I()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    const-string v2, "tr"

    .line 435
    .line 436
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-eqz v2, :cond_8

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_8
    const-string v2, "en"

    .line 444
    .line 445
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_9

    .line 450
    .line 451
    const-string v1, "edk-verification-by-id-operations-en"

    .line 452
    .line 453
    goto :goto_6

    .line 454
    :cond_9
    :goto_5
    const-string v1, "edk-verification-by-id-operations"

    .line 455
    .line 456
    :goto_6
    const v2, 0x7f130210

    .line 457
    .line 458
    .line 459
    invoke-virtual {v15, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    const-string v3, "getString(R.string.profile_id_verification_page)"

    .line 464
    .line 465
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    new-instance v3, Landroid/content/Intent;

    .line 469
    .line 470
    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    .line 481
    .line 482
    const-string v1, "isEdkFolder"

    .line 483
    .line 484
    invoke-virtual {v3, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    .line 489
    .line 490
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 491
    .line 492
    if-lt v1, v11, :cond_a

    .line 493
    .line 494
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    .line 496
    .line 497
    :cond_a
    invoke-virtual {v15, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 498
    .line 499
    .line 500
    const-string v1, "ContactEdit_Screen"

    .line 501
    .line 502
    invoke-virtual {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->L(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const-string v1, "Contact_Edit"

    .line 506
    .line 507
    invoke-virtual {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->K(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    goto :goto_7

    .line 511
    :cond_b
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->O()V

    .line 512
    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_c
    const-string v1, "mNetworkHelper"

    .line 516
    .line 517
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const/4 v1, 0x0

    .line 521
    throw v1

    .line 522
    :cond_d
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->N()V

    .line 523
    .line 524
    .line 525
    :cond_e
    :goto_7
    return-void

    .line 526
    :pswitch_9
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 527
    .line 528
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    .line 529
    .line 530
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->f:Ll9/e;

    .line 534
    .line 535
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    check-cast v1, Lgg/b;

    .line 540
    .line 541
    invoke-virtual {v1}, Lgg/b;->d()V

    .line 542
    .line 543
    .line 544
    return-void

    .line 545
    :pswitch_a
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;

    .line 546
    .line 547
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;->e:[Lda/m;

    .line 548
    .line 549
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;->b:Ll9/e;

    .line 553
    .line 554
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    check-cast v1, Lyf/e;

    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    new-instance v3, Lyf/f;

    .line 564
    .line 565
    const/4 v4, 0x0

    .line 566
    invoke-direct {v3, v1, v4}, Lyf/f;-><init>(Lyf/e;Lp9/d;)V

    .line 567
    .line 568
    .line 569
    iget-object v5, v1, Lr0/z;->c:Lnc/a0;

    .line 570
    .line 571
    invoke-static {v5, v4, v12, v3, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 572
    .line 573
    .line 574
    new-instance v2, Lyf/g;

    .line 575
    .line 576
    invoke-direct {v2, v1, v4}, Lyf/g;-><init>(Lyf/e;Lp9/d;)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v1, Lyf/e;->h:Lyf/h;

    .line 580
    .line 581
    invoke-static {v5, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 582
    .line 583
    .line 584
    return-void

    .line 585
    :pswitch_b
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;

    .line 586
    .line 587
    invoke-static {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;Landroid/view/View;)V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :pswitch_c
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceDetailListModel;

    .line 592
    .line 593
    invoke-static {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceDetailListModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceDetailListModel;Landroid/view/View;)V

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :pswitch_d
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    .line 598
    .line 599
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l:[Lda/m;

    .line 600
    .line 601
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->b:Ll9/e;

    .line 605
    .line 606
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    check-cast v1, Lrf/g;

    .line 611
    .line 612
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    new-instance v3, Lrf/h;

    .line 616
    .line 617
    const/4 v4, 0x0

    .line 618
    invoke-direct {v3, v1, v4}, Lrf/h;-><init>(Lrf/g;Lp9/d;)V

    .line 619
    .line 620
    .line 621
    iget-object v5, v1, Lr0/z;->c:Lnc/a0;

    .line 622
    .line 623
    invoke-static {v5, v4, v12, v3, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 624
    .line 625
    .line 626
    new-instance v2, Lrf/i;

    .line 627
    .line 628
    invoke-direct {v2, v1, v4}, Lrf/i;-><init>(Lrf/g;Lp9/d;)V

    .line 629
    .line 630
    .line 631
    iget-object v1, v1, Lrf/g;->h:Lrf/c;

    .line 632
    .line 633
    invoke-static {v5, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 634
    .line 635
    .line 636
    return-void

    .line 637
    :pswitch_e
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;

    .line 638
    .line 639
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    .line 640
    .line 641
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object v1, v15, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->b:Ll9/e;

    .line 645
    .line 646
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    check-cast v1, Lpf/d;

    .line 651
    .line 652
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    .line 654
    .line 655
    new-instance v3, Lpf/g;

    .line 656
    .line 657
    const/4 v4, 0x0

    .line 658
    invoke-direct {v3, v1, v4}, Lpf/g;-><init>(Lpf/d;Lp9/d;)V

    .line 659
    .line 660
    .line 661
    iget-object v5, v1, Lr0/z;->c:Lnc/a0;

    .line 662
    .line 663
    invoke-static {v5, v4, v12, v3, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 664
    .line 665
    .line 666
    new-instance v2, Lpf/h;

    .line 667
    .line 668
    invoke-direct {v2, v1, v4}, Lpf/h;-><init>(Lpf/d;Lp9/d;)V

    .line 669
    .line 670
    .line 671
    iget-object v1, v1, Lpf/d;->h:Lpf/m;

    .line 672
    .line 673
    invoke-static {v5, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :pswitch_f
    check-cast v15, Lie/e;

    .line 678
    .line 679
    sget v1, Lie/e;->c:I

    .line 680
    .line 681
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v15}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 685
    .line 686
    .line 687
    return-void

    .line 688
    :pswitch_10
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;

    .line 689
    .line 690
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;->f:[Lda/m;

    .line 691
    .line 692
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-boolean v1, v15, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;->d:Z

    .line 696
    .line 697
    if-eqz v1, :cond_f

    .line 698
    .line 699
    new-instance v1, Landroid/os/Bundle;

    .line 700
    .line 701
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 702
    .line 703
    .line 704
    const-string v2, "isFromLogin"

    .line 705
    .line 706
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    .line 708
    .line 709
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;

    .line 710
    .line 711
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;-><init>()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    if-eqz v1, :cond_10

    .line 722
    .line 723
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    if-eqz v1, :cond_10

    .line 728
    .line 729
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    const-string v3, "beginTransaction()"

    .line 734
    .line 735
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1, v13}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 739
    .line 740
    .line 741
    const v3, 0x7f0a0181

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 748
    .line 749
    .line 750
    goto :goto_8

    .line 751
    :cond_f
    invoke-static {v15}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    const v2, 0x7f0a008b

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v2}, Landroidx/navigation/NavController;->navigate(I)V

    .line 759
    .line 760
    .line 761
    :cond_10
    :goto_8
    const-string v1, "BarcodeVerifyManual_Screen"

    .line 762
    .line 763
    invoke-virtual {v15, v1}, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;->E(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :goto_9
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 768
    .line 769
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->g:I

    .line 770
    .line 771
    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    nop

    .line 779
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
