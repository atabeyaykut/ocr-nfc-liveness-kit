.class public final synthetic Ls1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls1/b;->a:I

    iput-object p2, p0, Ls1/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls1/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Ls1/b;->a:I

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Ls1/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Ls1/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    .line 16
    .line 17
    const-string p1, "$customView"

    .line 18
    .line 19
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvAction()Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_1
    check-cast v2, Ls1/c;

    .line 33
    .line 34
    check-cast v1, Ld2/a;

    .line 35
    .line 36
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "$folder"

    .line 40
    .line 41
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Ls1/c;->c:Lx9/l;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_0
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 51
    .line 52
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 53
    .line 54
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->v:[Lda/m;

    .line 55
    .line 56
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->g:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x4

    .line 66
    if-ge p1, v0, :cond_1

    .line 67
    .line 68
    const p1, 0x7f130138

    .line 69
    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/16 v0, 0x14

    .line 92
    .line 93
    if-ge p1, v0, :cond_2

    .line 94
    .line 95
    const p1, 0x7f130104

    .line 96
    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_2
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->q:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "HOST"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/4 v0, 0x1

    .line 108
    const/4 v3, 0x0

    .line 109
    iget-object v4, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->h:Ljava/util/ArrayList;

    .line 110
    .line 111
    if-eqz p1, :cond_1d

    .line 112
    .line 113
    const/4 p1, 0x0

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentAddress()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move-object v5, p1

    .line 128
    :goto_1
    if-eqz v5, :cond_5

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_4

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const/4 v5, 0x0

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 140
    :goto_3
    if-eqz v5, :cond_a

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-eqz v5, :cond_6

    .line 149
    .line 150
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceAddress()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    move-object v5, p1

    .line 156
    :goto_4
    if-eqz v5, :cond_8

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_7

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    const/4 v5, 0x0

    .line 166
    goto :goto_6

    .line 167
    :cond_8
    :goto_5
    const/4 v5, 0x1

    .line 168
    :goto_6
    if-nez v5, :cond_9

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_9
    const p1, 0x7f130105

    .line 172
    .line 173
    .line 174
    :goto_7
    invoke-virtual {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->H(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_18

    .line 178
    .line 179
    :cond_a
    :goto_8
    sget-object v5, Lyd/a;->a:Lyd/a$a;

    .line 180
    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v7, "Test "

    .line 184
    .line 185
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget v7, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->t:I

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    new-array v7, v3, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {v5, v6, v7}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    if-eqz v1, :cond_b

    .line 203
    .line 204
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    if-eqz v5, :cond_b

    .line 209
    .line 210
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLatitude()Ljava/lang/Double;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    goto :goto_9

    .line 215
    :cond_b
    move-object v5, p1

    .line 216
    :goto_9
    const-string v6, " "

    .line 217
    .line 218
    if-eqz v5, :cond_c

    .line 219
    .line 220
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-eqz v5, :cond_e

    .line 225
    .line 226
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLatitude()Ljava/lang/Double;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    goto :goto_b

    .line 231
    :cond_c
    if-eqz v1, :cond_d

    .line 232
    .line 233
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    if-eqz v5, :cond_d

    .line 238
    .line 239
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLatitude()Ljava/lang/Double;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    goto :goto_a

    .line 244
    :cond_d
    move-object v5, p1

    .line 245
    :goto_a
    if-eqz v5, :cond_f

    .line 246
    .line 247
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-eqz v5, :cond_e

    .line 252
    .line 253
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLatitude()Ljava/lang/Double;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    goto :goto_b

    .line 258
    :cond_e
    move-object v5, p1

    .line 259
    :goto_b
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 263
    .line 264
    .line 265
    move-result-wide v7

    .line 266
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    goto :goto_c

    .line 271
    :cond_f
    move-object v5, v6

    .line 272
    :goto_c
    iput-object v5, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->l:Ljava/lang/String;

    .line 273
    .line 274
    if-eqz v1, :cond_10

    .line 275
    .line 276
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    if-eqz v5, :cond_10

    .line 281
    .line 282
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLongitude()Ljava/lang/Double;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    goto :goto_d

    .line 287
    :cond_10
    move-object v5, p1

    .line 288
    :goto_d
    if-eqz v5, :cond_11

    .line 289
    .line 290
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    if-eqz v1, :cond_13

    .line 295
    .line 296
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLongitude()Ljava/lang/Double;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    goto :goto_f

    .line 301
    :cond_11
    if-eqz v1, :cond_12

    .line 302
    .line 303
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    if-eqz v5, :cond_12

    .line 308
    .line 309
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLongitude()Ljava/lang/Double;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    goto :goto_e

    .line 314
    :cond_12
    move-object v5, p1

    .line 315
    :goto_e
    if-eqz v5, :cond_14

    .line 316
    .line 317
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    if-eqz v1, :cond_13

    .line 322
    .line 323
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLongitude()Ljava/lang/Double;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    goto :goto_f

    .line 328
    :cond_13
    move-object v1, p1

    .line 329
    :goto_f
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 333
    .line 334
    .line 335
    move-result-wide v5

    .line 336
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    :cond_14
    iput-object v6, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->m:Ljava/lang/String;

    .line 341
    .line 342
    iput-boolean v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->r:Z

    .line 343
    .line 344
    new-instance v1, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    :cond_15
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_17

    .line 358
    .line 359
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    move-object v7, v6

    .line 364
    check-cast v7, Lhh/i;

    .line 365
    .line 366
    iget-boolean v8, v7, Lhh/i;->f:Z

    .line 367
    .line 368
    if-nez v8, :cond_16

    .line 369
    .line 370
    iget-boolean v7, v7, Lhh/i;->e:Z

    .line 371
    .line 372
    if-nez v7, :cond_16

    .line 373
    .line 374
    const/4 v7, 0x1

    .line 375
    goto :goto_11

    .line 376
    :cond_16
    const/4 v7, 0x0

    .line 377
    :goto_11
    if-eqz v7, :cond_15

    .line 378
    .line 379
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_10

    .line 383
    :cond_17
    invoke-static {v1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iput-object v1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->k:Ljava/util/ArrayList;

    .line 388
    .line 389
    new-instance v1, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    :cond_18
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_1a

    .line 403
    .line 404
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    move-object v6, v5

    .line 409
    check-cast v6, Lhh/i;

    .line 410
    .line 411
    iget-boolean v7, v6, Lhh/i;->f:Z

    .line 412
    .line 413
    if-eqz v7, :cond_19

    .line 414
    .line 415
    iget-boolean v6, v6, Lhh/i;->e:Z

    .line 416
    .line 417
    if-nez v6, :cond_19

    .line 418
    .line 419
    const/4 v6, 0x1

    .line 420
    goto :goto_13

    .line 421
    :cond_19
    const/4 v6, 0x0

    .line 422
    :goto_13
    if-eqz v6, :cond_18

    .line 423
    .line 424
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    goto :goto_12

    .line 428
    :cond_1a
    invoke-static {v1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    iput-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->j:Ljava/util/ArrayList;

    .line 433
    .line 434
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->k:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_24

    .line 441
    .line 442
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    iget-object v1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->l:Ljava/lang/String;

    .line 447
    .line 448
    if-eqz v1, :cond_1c

    .line 449
    .line 450
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->m:Ljava/lang/String;

    .line 451
    .line 452
    if-eqz v2, :cond_1b

    .line 453
    .line 454
    invoke-virtual {v0, v1, v2}, Lhh/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_18

    .line 458
    .line 459
    :cond_1b
    const-string v0, "mLocationLongitude"

    .line 460
    .line 461
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw p1

    .line 465
    :cond_1c
    const-string v0, "mLocationLatitude"

    .line 466
    .line 467
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p1

    .line 471
    :cond_1d
    iput-boolean v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->r:Z

    .line 472
    .line 473
    new-instance p1, Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    :cond_1e
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_20

    .line 487
    .line 488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    move-object v6, v5

    .line 493
    check-cast v6, Lhh/i;

    .line 494
    .line 495
    iget-boolean v7, v6, Lhh/i;->f:Z

    .line 496
    .line 497
    if-nez v7, :cond_1f

    .line 498
    .line 499
    iget-boolean v6, v6, Lhh/i;->e:Z

    .line 500
    .line 501
    if-nez v6, :cond_1f

    .line 502
    .line 503
    const/4 v6, 0x1

    .line 504
    goto :goto_15

    .line 505
    :cond_1f
    const/4 v6, 0x0

    .line 506
    :goto_15
    if-eqz v6, :cond_1e

    .line 507
    .line 508
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_14

    .line 512
    :cond_20
    invoke-static {p1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    iput-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->k:Ljava/util/ArrayList;

    .line 517
    .line 518
    new-instance p1, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    :cond_21
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_23

    .line 532
    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    move-object v5, v4

    .line 538
    check-cast v5, Lhh/i;

    .line 539
    .line 540
    iget-boolean v6, v5, Lhh/i;->f:Z

    .line 541
    .line 542
    if-eqz v6, :cond_22

    .line 543
    .line 544
    iget-boolean v5, v5, Lhh/i;->e:Z

    .line 545
    .line 546
    if-nez v5, :cond_22

    .line 547
    .line 548
    const/4 v5, 0x1

    .line 549
    goto :goto_17

    .line 550
    :cond_22
    const/4 v5, 0x0

    .line 551
    :goto_17
    if-eqz v5, :cond_21

    .line 552
    .line 553
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_16

    .line 557
    :cond_23
    invoke-static {p1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    iput-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->j:Ljava/util/ArrayList;

    .line 562
    .line 563
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->k:Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    if-eqz p1, :cond_24

    .line 570
    .line 571
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 580
    .line 581
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Lhh/g;->d(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    goto :goto_18

    .line 593
    :cond_24
    iput v3, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->t:I

    .line 594
    .line 595
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->k:Ljava/util/ArrayList;

    .line 600
    .line 601
    iget v1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->t:I

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    check-cast v0, Lhh/i;

    .line 608
    .line 609
    iget v1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->t:I

    .line 610
    .line 611
    invoke-virtual {p1, v0, v1}, Lhh/g;->f(Lhh/i;I)V

    .line 612
    .line 613
    .line 614
    :goto_18
    return-void

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
