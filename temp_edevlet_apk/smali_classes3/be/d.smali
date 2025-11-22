.class public final synthetic Lbe/d;
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

    iput p1, p0, Lbe/d;->a:I

    iput-object p2, p0, Lbe/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    const-string v0, "firebaseAnalytics"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget v2, p0, Lbe/d;->a:I

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
    iget-object v7, p0, Lbe/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_e

    .line 17
    .line 18
    :pswitch_0
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;

    .line 19
    .line 20
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->j:I

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
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 30
    .line 31
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 32
    .line 33
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_0

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    const/4 v6, 0x0

    .line 111
    :goto_0
    const v8, 0x7f1302b1

    .line 112
    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-object v6, v6, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->i:Lcom/google/android/material/textfield/TextInputLayout;

    .line 121
    .line 122
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-eqz v9, :cond_1

    .line 127
    .line 128
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    move-object v9, v3

    .line 134
    :goto_1
    invoke-virtual {v6, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    iget-object v6, v6, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->i:Lcom/google/android/material/textfield/TextInputLayout;

    .line 144
    .line 145
    invoke-virtual {v6, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-nez v9, :cond_3

    .line 154
    .line 155
    const/4 v9, 0x1

    .line 156
    goto :goto_3

    .line 157
    :cond_3
    const/4 v9, 0x0

    .line 158
    :goto_3
    if-eqz v9, :cond_5

    .line 159
    .line 160
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget-object v6, v6, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 165
    .line 166
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-eqz v9, :cond_4

    .line 171
    .line 172
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move-object v9, v3

    .line 178
    :goto_4
    invoke-virtual {v6, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    goto :goto_5

    .line 183
    :cond_5
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    iget-object v9, v9, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 188
    .line 189
    invoke-virtual {v9, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-nez v9, :cond_6

    .line 197
    .line 198
    const/4 v9, 0x1

    .line 199
    goto :goto_6

    .line 200
    :cond_6
    const/4 v9, 0x0

    .line 201
    :goto_6
    if-eqz v9, :cond_7

    .line 202
    .line 203
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 208
    .line 209
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_b

    .line 214
    .line 215
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    goto :goto_9

    .line 220
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    const/16 v9, 0x9

    .line 225
    .line 226
    if-ne v8, v9, :cond_9

    .line 227
    .line 228
    const/4 v8, 0x0

    .line 229
    const/4 v10, 0x0

    .line 230
    :goto_7
    if-ge v8, v9, :cond_a

    .line 231
    .line 232
    if-eqz v8, :cond_8

    .line 233
    .line 234
    if-eq v8, v1, :cond_8

    .line 235
    .line 236
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    const-string v11, "^[0-9]"

    .line 245
    .line 246
    invoke-static {v11, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-eqz v10, :cond_9

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    const-string v11, "^[A-Za-z]*$"

    .line 262
    .line 263
    invoke-static {v11, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-eqz v10, :cond_9

    .line 268
    .line 269
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 270
    .line 271
    const/4 v10, 0x1

    .line 272
    goto :goto_7

    .line 273
    :cond_9
    const/4 v10, 0x0

    .line 274
    :cond_a
    if-nez v10, :cond_c

    .line 275
    .line 276
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 281
    .line 282
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    if-eqz v6, :cond_b

    .line 287
    .line 288
    const v3, 0x7f1302b3

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :cond_b
    :goto_9
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_c
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 304
    .line 305
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    move v4, v6

    .line 309
    :goto_a
    if-eqz v4, :cond_d

    .line 310
    .line 311
    new-instance v1, Landroid/os/Bundle;

    .line 312
    .line 313
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v3, "uuid"

    .line 317
    .line 318
    iget-object v4, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->c:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v3, "challenge"

    .line 324
    .line 325
    iget-object v4, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->d:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v3, "verificationCode"

    .line 331
    .line 332
    iget-object v4, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->h:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v3, "token"

    .line 338
    .line 339
    iget-object v4, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->e:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v3, "phoneNumber"

    .line 345
    .line 346
    iget-object v4, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->f:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string v3, "countryCode"

    .line 352
    .line 353
    iget-object v4, v7, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->g:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v3, "serialNo"

    .line 359
    .line 360
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v2, "birthDate"

    .line 364
    .line 365
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string v0, "validationDate"

    .line 369
    .line 370
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    new-instance p1, Lai/c;

    .line 374
    .line 375
    invoke-direct {p1}, Lai/c;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    if-eqz v0, :cond_d

    .line 386
    .line 387
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_d

    .line 392
    .line 393
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    const-string v1, "beginTransaction()"

    .line 398
    .line 399
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 403
    .line 404
    .line 405
    const v1, 0x7f0a0181

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 412
    .line 413
    .line 414
    :cond_d
    return-void

    .line 415
    :pswitch_2
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    .line 416
    .line 417
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->g:[Lda/m;

    .line 418
    .line 419
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 423
    .line 424
    const/16 v0, 0x17

    .line 425
    .line 426
    if-lt p1, v0, :cond_f

    .line 427
    .line 428
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    sget-object v0, Lc5/e0;->b:[Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    check-cast v1, [Ljava/lang/String;

    .line 439
    .line 440
    invoke-static {p1, v1}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-eqz p1, :cond_e

    .line 445
    .line 446
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->F()V

    .line 447
    .line 448
    .line 449
    goto :goto_b

    .line 450
    :cond_e
    invoke-virtual {v7, v0, v4}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_f
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->F()V

    .line 455
    .line 456
    .line 457
    :goto_b
    return-void

    .line 458
    :pswitch_3
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    .line 459
    .line 460
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->p:[Lda/m;

    .line 461
    .line 462
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->k:Ljava/lang/Integer;

    .line 466
    .line 467
    if-eqz p1, :cond_10

    .line 468
    .line 469
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    iput-boolean v5, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->l:Z

    .line 474
    .line 475
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->H()Ldh/f;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    sget-object v2, Ldh/k;->a:Ldh/k;

    .line 480
    .line 481
    invoke-virtual {v0, v2}, Lr0/z;->c(Lx9/l;)V

    .line 482
    .line 483
    .line 484
    new-instance v2, Ldh/l;

    .line 485
    .line 486
    invoke-direct {v2, v0, p1, v3}, Ldh/l;-><init>(Ldh/f;ILp9/d;)V

    .line 487
    .line 488
    .line 489
    iget-object p1, v0, Lr0/z;->c:Lnc/a0;

    .line 490
    .line 491
    invoke-static {p1, v3, v4, v2, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 492
    .line 493
    .line 494
    new-instance v1, Ldh/m;

    .line 495
    .line 496
    invoke-direct {v1, v0, v3}, Ldh/m;-><init>(Ldh/f;Lp9/d;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, v0, Ldh/f;->j:Ldh/d;

    .line 500
    .line 501
    invoke-static {p1, v0, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 502
    .line 503
    .line 504
    :cond_10
    return-void

    .line 505
    :pswitch_4
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 506
    .line 507
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 508
    .line 509
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->d:Lgf/b;

    .line 513
    .line 514
    if-eqz p1, :cond_12

    .line 515
    .line 516
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_11

    .line 521
    .line 522
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->E()V

    .line 523
    .line 524
    .line 525
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 526
    .line 527
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 528
    .line 529
    .line 530
    const-string v0, "eDevletMobil"

    .line 531
    .line 532
    const-string v1, "true"

    .line 533
    .line 534
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 542
    .line 543
    iget-object v1, v7, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->F:Ljava/lang/String;

    .line 544
    .line 545
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 549
    .line 550
    .line 551
    :cond_11
    return-void

    .line 552
    :cond_12
    const-string p1, "mNetworkHelper"

    .line 553
    .line 554
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v3

    .line 558
    :pswitch_5
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;

    .line 559
    .line 560
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->g:[Lda/m;

    .line 561
    .line 562
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    iput-object v3, v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->e:Lke/d;

    .line 566
    .line 567
    iput-boolean v5, v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->d:Z

    .line 568
    .line 569
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->f:Ll9/e;

    .line 570
    .line 571
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    check-cast p1, Lfg/f;

    .line 576
    .line 577
    sget-object v2, Lfg/i;->a:Lfg/i;

    .line 578
    .line 579
    invoke-virtual {p1, v2}, Lr0/z;->c(Lx9/l;)V

    .line 580
    .line 581
    .line 582
    new-instance v2, Lfg/j;

    .line 583
    .line 584
    invoke-direct {v2, p1, v3}, Lfg/j;-><init>(Lfg/f;Lp9/d;)V

    .line 585
    .line 586
    .line 587
    iget-object v5, p1, Lr0/z;->c:Lnc/a0;

    .line 588
    .line 589
    invoke-static {v5, v3, v4, v2, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 590
    .line 591
    .line 592
    new-instance v1, Lfg/k;

    .line 593
    .line 594
    invoke-direct {v1, p1, v3}, Lfg/k;-><init>(Lfg/f;Lp9/d;)V

    .line 595
    .line 596
    .line 597
    iget-object p1, p1, Lfg/f;->h:Lfg/l;

    .line 598
    .line 599
    invoke-static {v5, p1, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 600
    .line 601
    .line 602
    const-string p1, "ProfileUpdate_Screen"

    .line 603
    .line 604
    const/4 v1, 0x2

    .line 605
    :try_start_0
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 606
    .line 607
    if-eqz v2, :cond_13

    .line 608
    .line 609
    const-string v5, "screen_view"

    .line 610
    .line 611
    new-instance v6, Lc5/b4;

    .line 612
    .line 613
    invoke-direct {v6, v1, v4}, Lc5/b4;-><init>(II)V

    .line 614
    .line 615
    .line 616
    const-string v8, "screen_name"

    .line 617
    .line 618
    invoke-virtual {v6, v8, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    const-string p1, "screen_class"

    .line 622
    .line 623
    const-string v8, "ProfileFragment"

    .line 624
    .line 625
    invoke-virtual {v6, p1, v8}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    iget-object p1, v6, Lc5/b4;->a:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast p1, Landroid/os/Bundle;

    .line 631
    .line 632
    invoke-virtual {v2, p1, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    goto :goto_c

    .line 636
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :catch_0
    :goto_c
    const-string p1, "Profile_Update"

    .line 641
    .line 642
    :try_start_1
    iget-object v2, v7, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 643
    .line 644
    if-eqz v2, :cond_14

    .line 645
    .line 646
    const-string v0, "EDK_Profile"

    .line 647
    .line 648
    new-instance v3, Lc5/b4;

    .line 649
    .line 650
    invoke-direct {v3, v1, v4}, Lc5/b4;-><init>(II)V

    .line 651
    .line 652
    .line 653
    const-string v1, "action"

    .line 654
    .line 655
    invoke-virtual {v3, v1, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    iget-object p1, v3, Lc5/b4;->a:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast p1, Landroid/os/Bundle;

    .line 661
    .line 662
    invoke-virtual {v2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    goto :goto_d

    .line 666
    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :catch_1
    :goto_d
    return-void

    .line 671
    :pswitch_6
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel;

    .line 672
    .line 673
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel;Landroid/view/View;)V

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :pswitch_7
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel;

    .line 678
    .line 679
    invoke-static {v7, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel;Landroid/view/View;)V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :pswitch_8
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;

    .line 684
    .line 685
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 686
    .line 687
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->c:Ll9/e;

    .line 691
    .line 692
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    check-cast p1, Luf/d;

    .line 697
    .line 698
    iget v0, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->h:I

    .line 699
    .line 700
    iget v1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->g:I

    .line 701
    .line 702
    invoke-virtual {p1, v0, v1}, Luf/d;->d(II)V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :pswitch_9
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;

    .line 707
    .line 708
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    .line 709
    .line 710
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->b:Ll9/e;

    .line 714
    .line 715
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    check-cast p1, Lof/d;

    .line 720
    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    new-instance v0, Lof/e;

    .line 725
    .line 726
    invoke-direct {v0, p1, v3}, Lof/e;-><init>(Lof/d;Lp9/d;)V

    .line 727
    .line 728
    .line 729
    iget-object v2, p1, Lr0/z;->c:Lnc/a0;

    .line 730
    .line 731
    invoke-static {v2, v3, v4, v0, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 732
    .line 733
    .line 734
    new-instance v0, Lof/f;

    .line 735
    .line 736
    invoke-direct {v0, p1, v3}, Lof/f;-><init>(Lof/d;Lp9/d;)V

    .line 737
    .line 738
    .line 739
    iget-object p1, p1, Lof/d;->h:Lof/i;

    .line 740
    .line 741
    invoke-static {v2, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 742
    .line 743
    .line 744
    return-void

    .line 745
    :pswitch_a
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    .line 746
    .line 747
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 748
    .line 749
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object p1, v7, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->b:Ll9/e;

    .line 753
    .line 754
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object p1

    .line 758
    check-cast p1, Lbe/j;

    .line 759
    .line 760
    iget-object v0, v7, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->d:Ljava/lang/String;

    .line 761
    .line 762
    if-eqz v0, :cond_15

    .line 763
    .line 764
    invoke-virtual {p1, v0}, Lbe/j;->d(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    return-void

    .line 768
    :cond_15
    const-string p1, "mBarcodeNumber"

    .line 769
    .line 770
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    throw v3

    .line 774
    :goto_e
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;

    .line 775
    .line 776
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->p:I

    .line 777
    .line 778
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 782
    .line 783
    .line 784
    return-void

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
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
