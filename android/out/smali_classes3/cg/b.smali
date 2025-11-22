.class public final synthetic Lcg/b;
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

    iput p1, p0, Lcg/b;->a:I

    iput-object p2, p0, Lcg/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcg/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget p1, p0, Lcg/b;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "this$0"

    .line 5
    .line 6
    iget-object v2, p0, Lcg/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lcg/b;->b:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_e

    .line 15
    .line 16
    :pswitch_0
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 17
    .line 18
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 19
    .line 20
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->v:[Lda/m;

    .line 21
    .line 22
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLatitude()Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p1, v4

    .line 39
    :goto_0
    const-string v1, " "

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLatitude()Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object p1, v4

    .line 55
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-object p1, v1

    .line 68
    :goto_2
    iput-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->l:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLongitude()Ljava/lang/Double;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-object p1, v4

    .line 84
    :goto_3
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLongitude()Ljava/lang/Double;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    move-object p1, v4

    .line 98
    :goto_4
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move-object p1, v1

    .line 111
    :goto_5
    iput-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->m:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLatitude()Ljava/lang/Double;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto :goto_6

    .line 126
    :cond_6
    move-object p1, v4

    .line 127
    :goto_6
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLatitude()Ljava/lang/Double;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_7

    .line 140
    :cond_7
    move-object p1, v4

    .line 141
    :goto_7
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 145
    .line 146
    .line 147
    move-result-wide v5

    .line 148
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    goto :goto_8

    .line 153
    :cond_8
    move-object p1, v1

    .line 154
    :goto_8
    iput-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->n:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-eqz p1, :cond_9

    .line 163
    .line 164
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLongitude()Ljava/lang/Double;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_9

    .line 169
    :cond_9
    move-object p1, v4

    .line 170
    :goto_9
    if-eqz p1, :cond_b

    .line 171
    .line 172
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_a

    .line 177
    .line 178
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentLongitude()Ljava/lang/Double;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    goto :goto_a

    .line 183
    :cond_a
    move-object p1, v4

    .line 184
    :goto_a
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 188
    .line 189
    .line 190
    move-result-wide v5

    .line 191
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    goto :goto_b

    .line 196
    :cond_b
    move-object p1, v1

    .line 197
    :goto_b
    iput-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->p:Ljava/lang/String;

    .line 198
    .line 199
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->l:Ljava/lang/String;

    .line 200
    .line 201
    const-string v2, "mLocationLatitude"

    .line 202
    .line 203
    if-eqz p1, :cond_17

    .line 204
    .line 205
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_16

    .line 210
    .line 211
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->m:Ljava/lang/String;

    .line 212
    .line 213
    const-string v5, "mLocationLongitude"

    .line 214
    .line 215
    if-eqz p1, :cond_15

    .line 216
    .line 217
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_16

    .line 222
    .line 223
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->n:Ljava/lang/String;

    .line 224
    .line 225
    const-string v6, "mAccidentLocationLatitude"

    .line 226
    .line 227
    if-eqz p1, :cond_14

    .line 228
    .line 229
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    const-string v7, "longitude"

    .line 234
    .line 235
    const-string v8, "latitude"

    .line 236
    .line 237
    const/4 v9, 0x0

    .line 238
    const/4 v10, 0x2

    .line 239
    if-nez p1, :cond_11

    .line 240
    .line 241
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->p:Ljava/lang/String;

    .line 242
    .line 243
    const-string v11, "mAccidentLocationLongitude"

    .line 244
    .line 245
    if-eqz p1, :cond_10

    .line 246
    .line 247
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_11

    .line 252
    .line 253
    const/4 p1, 0x4

    .line 254
    new-array p1, p1, [Ll9/g;

    .line 255
    .line 256
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->l:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v1, :cond_f

    .line 259
    .line 260
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 261
    .line 262
    .line 263
    move-result-wide v1

    .line 264
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    new-instance v2, Ll9/g;

    .line 269
    .line 270
    invoke-direct {v2, v8, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    aput-object v2, p1, v9

    .line 274
    .line 275
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->m:Ljava/lang/String;

    .line 276
    .line 277
    if-eqz v1, :cond_e

    .line 278
    .line 279
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 280
    .line 281
    .line 282
    move-result-wide v1

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    new-instance v2, Ll9/g;

    .line 288
    .line 289
    invoke-direct {v2, v7, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    aput-object v2, p1, v0

    .line 293
    .line 294
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->n:Ljava/lang/String;

    .line 295
    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 299
    .line 300
    .line 301
    move-result-wide v0

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    new-instance v1, Ll9/g;

    .line 307
    .line 308
    const-string v2, "accidentLatitude"

    .line 309
    .line 310
    invoke-direct {v1, v2, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    aput-object v1, p1, v10

    .line 314
    .line 315
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->p:Ljava/lang/String;

    .line 316
    .line 317
    if-eqz v0, :cond_c

    .line 318
    .line 319
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 320
    .line 321
    .line 322
    move-result-wide v0

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    new-instance v1, Ll9/g;

    .line 328
    .line 329
    const-string v2, "accidentLongitude"

    .line 330
    .line 331
    invoke-direct {v1, v2, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    const/4 v0, 0x3

    .line 335
    aput-object v1, p1, v0

    .line 336
    .line 337
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    goto :goto_c

    .line 342
    :cond_c
    invoke-static {v11}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v4

    .line 346
    :cond_d
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v4

    .line 350
    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v4

    .line 354
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v4

    .line 358
    :cond_10
    invoke-static {v11}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v4

    .line 362
    :cond_11
    new-array p1, v10, [Ll9/g;

    .line 363
    .line 364
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->l:Ljava/lang/String;

    .line 365
    .line 366
    if-eqz v1, :cond_13

    .line 367
    .line 368
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 369
    .line 370
    .line 371
    move-result-wide v1

    .line 372
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    new-instance v2, Ll9/g;

    .line 377
    .line 378
    invoke-direct {v2, v8, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    aput-object v2, p1, v9

    .line 382
    .line 383
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->m:Ljava/lang/String;

    .line 384
    .line 385
    if-eqz v1, :cond_12

    .line 386
    .line 387
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    new-instance v2, Ll9/g;

    .line 396
    .line 397
    invoke-direct {v2, v7, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    aput-object v2, p1, v0

    .line 401
    .line 402
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    :goto_c
    invoke-static {v3}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const v1, 0x7f0a0272

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 414
    .line 415
    .line 416
    goto :goto_d

    .line 417
    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v4

    .line 421
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v4

    .line 425
    :cond_14
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v4

    .line 429
    :cond_15
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v4

    .line 433
    :cond_16
    :goto_d
    return-void

    .line 434
    :cond_17
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw v4

    .line 438
    :pswitch_1
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 439
    .line 440
    check-cast v2, [B

    .line 441
    .line 442
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 443
    .line 444
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string p1, "scenarioArray"

    .line 448
    .line 449
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->K([B)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :pswitch_2
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 457
    .line 458
    check-cast v2, Lkotlin/jvm/internal/v;

    .line 459
    .line 460
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 461
    .line 462
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const-string p1, "$connectionURL"

    .line 466
    .line 467
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y()Lgf/b;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    if-eqz p1, :cond_18

    .line 479
    .line 480
    iput-boolean v0, v3, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 481
    .line 482
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->H()V

    .line 483
    .line 484
    .line 485
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 486
    .line 487
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 488
    .line 489
    .line 490
    const-string v0, "eDevletMobil"

    .line 491
    .line 492
    const-string v1, "true"

    .line 493
    .line 494
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->x()Ltr/gov/turkiye/edevlet/kapisi/login/databinding/ActivityLoginBinding;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/login/databinding/ActivityLoginBinding;->f:Landroid/webkit/WebView;

    .line 502
    .line 503
    iget-object v1, v2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v1, Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->v()V

    .line 511
    .line 512
    .line 513
    :cond_18
    return-void

    .line 514
    :goto_e
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 515
    .line 516
    check-cast v2, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 517
    .line 518
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 519
    .line 520
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string p1, "$validationPicker"

    .line 524
    .line 525
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :try_start_0
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->c:Landroidx/core/widget/NestedScrollView;

    .line 533
    .line 534
    const-string v0, "mCardInfoFragmentBinding.cardInfoContainer"

    .line 535
    .line 536
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .line 541
    .line 542
    :catch_0
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 547
    .line 548
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    if-eqz p1, :cond_19

    .line 556
    .line 557
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-virtual {v2, v4, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    nop

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
