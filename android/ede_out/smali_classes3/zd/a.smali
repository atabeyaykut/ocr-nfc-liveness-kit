.class public final synthetic Lzd/a;
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

    iput p1, p0, Lzd/a;->a:I

    iput-object p2, p0, Lzd/a;->b:Ljava/lang/Object;

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
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lzd/a;->a:I

    .line 6
    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v7, "this$0"

    .line 12
    .line 13
    iget-object v8, p0, Lzd/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v3, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :pswitch_0
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;

    .line 21
    .line 22
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->h:I

    .line 23
    .line 24
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 32
    .line 33
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->g:I

    .line 34
    .line 35
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->b:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    const-string v0, "tr"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "en"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const-string p1, "edk-2fa-operations-en"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const-string p1, "edk-2fa-operations"

    .line 63
    .line 64
    :goto_1
    const v0, 0x7f13025b

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "getString(R.string.settings_fragment_two_factor)"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Landroid/content/Intent;

    .line 77
    .line 78
    const-string v2, "action.servicepage.open"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "folderUrl"

    .line 84
    .line 85
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const-string p1, "serviceName"

    .line 89
    .line 90
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string p1, "isCustomPage"

    .line 94
    .line 95
    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string p1, "isEdkFolder"

    .line 99
    .line 100
    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string p1, "isFavMenuActive"

    .line 104
    .line 105
    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v0, 0x22

    .line 111
    .line 112
    if-lt p1, v0, :cond_2

    .line 113
    .line 114
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    const-string p1, "mLanguage"

    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v2

    .line 132
    :pswitch_2
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;

    .line 133
    .line 134
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->c:I

    .line 135
    .line 136
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_3
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;

    .line 144
    .line 145
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_4
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;

    .line 150
    .line 151
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_5
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    .line 156
    .line 157
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->g:[Lda/m;

    .line 158
    .line 159
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const-string v0, "mDifferentCarBinding.headerCardFormTitle"

    .line 173
    .line 174
    if-nez p1, :cond_5

    .line 175
    .line 176
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->d:Landroid/content/Context;

    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->h:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const v0, 0x7f08012b

    .line 190
    .line 191
    .line 192
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v1, p1}, Lge/a;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->d:Landroid/content/Context;

    .line 207
    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->h:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const v0, 0x7f08012c

    .line 220
    .line 221
    .line 222
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v1, p1}, Lge/a;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 234
    .line 235
    const/4 v4, 0x0

    .line 236
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_6
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    .line 241
    .line 242
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->p:[Lda/m;

    .line 243
    .line 244
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v8}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    const v0, 0x7f0a026d

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_7
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;

    .line 259
    .line 260
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->b(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;Landroid/view/View;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_8
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

    .line 265
    .line 266
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->e:[Lda/m;

    .line 267
    .line 268
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->c:Landroid/widget/CheckBox;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_8

    .line 282
    .line 283
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->d:Lv/e;

    .line 284
    .line 285
    if-eqz p1, :cond_7

    .line 286
    .line 287
    invoke-virtual {p1}, Lv/e;->show()V

    .line 288
    .line 289
    .line 290
    :cond_7
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->b:Ll9/e;

    .line 291
    .line 292
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Lyg/d;

    .line 297
    .line 298
    iget-object v0, p1, Lr0/z;->c:Lnc/a0;

    .line 299
    .line 300
    new-instance v3, Lyg/e;

    .line 301
    .line 302
    invoke-direct {v3, p1, v2}, Lyg/e;-><init>(Lyg/d;Lp9/d;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v2, v6, v3, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 306
    .line 307
    .line 308
    new-instance v0, Lyg/f;

    .line 309
    .line 310
    invoke-direct {v0, p1, v2}, Lyg/f;-><init>(Lyg/d;Lp9/d;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, p1, Lr0/z;->c:Lnc/a0;

    .line 314
    .line 315
    iget-object p1, p1, Lyg/d;->i:Lyg/a;

    .line 316
    .line 317
    invoke-static {v1, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_8
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->c:Landroid/content/Context;

    .line 322
    .line 323
    if-eqz p1, :cond_9

    .line 324
    .line 325
    sget v0, Lke/d;->a:I

    .line 326
    .line 327
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 332
    .line 333
    const-string v1, "mAgreementBinding.mktAgreementParentContainer"

    .line 334
    .line 335
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const v1, 0x7f060025

    .line 339
    .line 340
    .line 341
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    const v3, 0x7f060097

    .line 346
    .line 347
    .line 348
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    const v3, 0x7f13010a

    .line 353
    .line 354
    .line 355
    invoke-static {v0, v3, v2, v1, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    if-eqz p1, :cond_9

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 362
    .line 363
    .line 364
    :cond_9
    :goto_3
    return-void

    .line 365
    :pswitch_9
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 366
    .line 367
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y:I

    .line 368
    .line 369
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->d:Lgf/b;

    .line 373
    .line 374
    if-eqz p1, :cond_b

    .line 375
    .line 376
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-eqz p1, :cond_a

    .line 381
    .line 382
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y()V

    .line 383
    .line 384
    .line 385
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 386
    .line 387
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v0, "eDevletMobil"

    .line 391
    .line 392
    const-string v1, "true"

    .line 393
    .line 394
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 402
    .line 403
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->v:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 409
    .line 410
    .line 411
    :cond_a
    return-void

    .line 412
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v2

    .line 416
    :pswitch_a
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;

    .line 417
    .line 418
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;Landroid/view/View;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_b
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel;

    .line 423
    .line 424
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel;Landroid/view/View;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :pswitch_c
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;

    .line 429
    .line 430
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->b(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :pswitch_d
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;

    .line 435
    .line 436
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;Landroid/view/View;)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_e
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;

    .line 441
    .line 442
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;->c(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;Landroid/view/View;)V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :pswitch_f
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 447
    .line 448
    invoke-static {v8, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->b(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :pswitch_10
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;

    .line 453
    .line 454
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->h:[Lda/m;

    .line 455
    .line 456
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;->b:Ll9/e;

    .line 460
    .line 461
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Lvf/c;

    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    new-instance v0, Lvf/f;

    .line 471
    .line 472
    invoke-direct {v0, p1, v2}, Lvf/f;-><init>(Lvf/c;Lp9/d;)V

    .line 473
    .line 474
    .line 475
    iget-object v3, p1, Lr0/z;->c:Lnc/a0;

    .line 476
    .line 477
    invoke-static {v3, v2, v6, v0, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 478
    .line 479
    .line 480
    new-instance v0, Lvf/g;

    .line 481
    .line 482
    invoke-direct {v0, p1, v2}, Lvf/g;-><init>(Lvf/c;Lp9/d;)V

    .line 483
    .line 484
    .line 485
    iget-object p1, p1, Lvf/c;->h:Lvf/j;

    .line 486
    .line 487
    invoke-static {v3, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :pswitch_11
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;

    .line 492
    .line 493
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 494
    .line 495
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->H()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    iput v0, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->g:I

    .line 506
    .line 507
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 512
    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    .line 518
    .line 519
    .line 520
    iget-object v0, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->c:Ll9/e;

    .line 521
    .line 522
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    check-cast v0, Luf/d;

    .line 527
    .line 528
    const/16 v1, 0x5b

    .line 529
    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    invoke-virtual {v0, v1, p1}, Luf/d;->d(II)V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    :pswitch_12
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    .line 539
    .line 540
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->e:[Lda/m;

    .line 541
    .line 542
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->b:Ll9/e;

    .line 546
    .line 547
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    check-cast p1, Lmf/f;

    .line 552
    .line 553
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    new-instance v0, Lmf/g;

    .line 557
    .line 558
    invoke-direct {v0, p1, v2}, Lmf/g;-><init>(Lmf/f;Lp9/d;)V

    .line 559
    .line 560
    .line 561
    iget-object v3, p1, Lr0/z;->c:Lnc/a0;

    .line 562
    .line 563
    invoke-static {v3, v2, v6, v0, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 564
    .line 565
    .line 566
    new-instance v0, Lmf/h;

    .line 567
    .line 568
    invoke-direct {v0, p1, v2}, Lmf/h;-><init>(Lmf/f;Lp9/d;)V

    .line 569
    .line 570
    .line 571
    iget-object p1, p1, Lmf/f;->h:Lmf/k;

    .line 572
    .line 573
    invoke-static {v3, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :pswitch_13
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodePDFViewActivity;

    .line 578
    .line 579
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodePDFViewActivity;->e:I

    .line 580
    .line 581
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :goto_4
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;

    .line 589
    .line 590
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->p:I

    .line 591
    .line 592
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->b:Lgf/b;

    .line 596
    .line 597
    if-eqz p1, :cond_e

    .line 598
    .line 599
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 600
    .line 601
    .line 602
    move-result p1

    .line 603
    if-eqz p1, :cond_d

    .line 604
    .line 605
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->f:Landroid/widget/ProgressBar;

    .line 610
    .line 611
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->c:Landroidx/constraintlayout/widget/Group;

    .line 619
    .line 620
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 621
    .line 622
    .line 623
    const/4 p1, 0x2

    .line 624
    new-array v0, p1, [Ll9/g;

    .line 625
    .line 626
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->j:Ljava/lang/String;

    .line 627
    .line 628
    new-instance v2, Ll9/g;

    .line 629
    .line 630
    const-string v3, "token"

    .line 631
    .line 632
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    aput-object v2, v0, v6

    .line 636
    .line 637
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->h:Ljava/lang/String;

    .line 638
    .line 639
    new-instance v2, Ll9/g;

    .line 640
    .line 641
    const-string v3, "uuid"

    .line 642
    .line 643
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    aput-object v2, v0, v5

    .line 647
    .line 648
    new-instance v1, Landroidx/work/Data$Builder;

    .line 649
    .line 650
    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 651
    .line 652
    .line 653
    :goto_5
    if-ge v6, p1, :cond_c

    .line 654
    .line 655
    aget-object v2, v0, v6

    .line 656
    .line 657
    add-int/lit8 v6, v6, 0x1

    .line 658
    .line 659
    iget-object v3, v2, Ll9/g;->a:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v3, Ljava/lang/String;

    .line 662
    .line 663
    iget-object v2, v2, Ll9/g;->b:Ljava/lang/Object;

    .line 664
    .line 665
    invoke-virtual {v1, v3, v2}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 666
    .line 667
    .line 668
    goto :goto_5

    .line 669
    :cond_c
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    const-string v0, "dataBuilder.build()"

    .line 674
    .line 675
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 679
    .line 680
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;

    .line 681
    .line 682
    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 690
    .line 691
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 692
    .line 693
    .line 694
    move-result-object p1

    .line 695
    const-string v0, "OneTimeWorkRequestBuilde\u2026                 .build()"

    .line 696
    .line 697
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 701
    .line 702
    invoke-static {v8}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 707
    .line 708
    .line 709
    goto :goto_6

    .line 710
    :cond_d
    const-string p1, "warning"

    .line 711
    .line 712
    const v0, 0x7f130066

    .line 713
    .line 714
    .line 715
    invoke-virtual {v8, v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->u(ILjava/lang/String;)V

    .line 716
    .line 717
    .line 718
    :goto_6
    return-void

    .line 719
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    throw v2

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
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
