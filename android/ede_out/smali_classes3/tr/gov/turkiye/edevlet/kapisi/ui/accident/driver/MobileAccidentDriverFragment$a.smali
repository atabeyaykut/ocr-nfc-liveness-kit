.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldh/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ldh/e;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "SaveDriver"

    .line 9
    .line 10
    iget-object v1, p1, Ldh/e;->d:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    const-string v5, "tr.gov.turkiye.edevlet.kapisi"

    .line 21
    .line 22
    const/16 v6, 0x22

    .line 23
    .line 24
    const v7, 0x8000

    .line 25
    .line 26
    .line 27
    const-string v8, "action.login.open"

    .line 28
    .line 29
    const-string v9, "Success"

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    iget-object v11, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    .line 33
    .line 34
    if-eqz v0, :cond_12

    .line 35
    .line 36
    iget-object v0, p1, Ldh/e;->b:Lr0/b;

    .line 37
    .line 38
    instance-of v1, v0, Lr0/d1;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    instance-of v1, v0, Lr0/k;

    .line 45
    .line 46
    :goto_0
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_a

    .line 49
    .line 50
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 51
    .line 52
    if-eqz v1, :cond_a

    .line 53
    .line 54
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 55
    .line 56
    new-array v1, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v0, v9, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    .line 62
    .line 63
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;->getDriverSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->p:[Lda/m;

    .line 68
    .line 69
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getDrivingSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;->getDriverSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;->getDriverSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getPhoneNumber()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-lez v0, :cond_2

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 v0, 0x0

    .line 113
    :goto_1
    if-ne v0, v4, :cond_3

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const/4 v0, 0x0

    .line 118
    :goto_2
    if-eqz v0, :cond_9

    .line 119
    .line 120
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getDrivingSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;->getDriverSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;->getDriverSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-lez v0, :cond_4

    .line 155
    .line 156
    const/4 v0, 0x1

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    const/4 v0, 0x0

    .line 159
    :goto_3
    if-ne v0, v4, :cond_5

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    const/4 v4, 0x0

    .line 163
    :goto_4
    if-eqz v4, :cond_9

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getDrivingSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;->getDriverSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;->getDriverSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    goto :goto_5

    .line 199
    :cond_6
    move-object v1, v10

    .line 200
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const/16 v1, 0x20

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getDrivingSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_7

    .line 213
    .line 214
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;->getDriverSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;->getDriverSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getSurname()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_6

    .line 237
    :cond_7
    move-object v1, v10

    .line 238
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->j:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->k:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getDrivingSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-eqz p1, :cond_8

    .line 265
    .line 266
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;->getDriverSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_8

    .line 271
    .line 272
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;->getDriverSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eqz p1, :cond_8

    .line 277
    .line 278
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-eqz p1, :cond_8

    .line 283
    .line 284
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getPhoneNumber()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    goto :goto_7

    .line 289
    :cond_8
    move-object p1, v10

    .line 290
    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_9
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->j:Landroid/widget/TextView;

    .line 299
    .line 300
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->j:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->k:Landroid/widget/TextView;

    .line 310
    .line 311
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->h:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    :goto_8
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->H()Ldh/f;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    new-instance v0, Ldh/g;

    .line 324
    .line 325
    invoke-direct {v0, p1, v10}, Ldh/g;-><init>(Ldh/f;Lp9/d;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, p1, Lr0/z;->c:Lnc/a0;

    .line 329
    .line 330
    const/4 v2, 0x3

    .line 331
    invoke-static {v1, v10, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 332
    .line 333
    .line 334
    new-instance v0, Ldh/h;

    .line 335
    .line 336
    invoke-direct {v0, p1, v10}, Ldh/h;-><init>(Ldh/f;Lp9/d;)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p1, Ldh/f;->h:Ldh/n;

    .line 340
    .line 341
    invoke-static {v1, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_12

    .line 345
    .line 346
    :cond_a
    instance-of p1, v0, Lr0/i;

    .line 347
    .line 348
    if-eqz p1, :cond_27

    .line 349
    .line 350
    check-cast v0, Lr0/i;

    .line 351
    .line 352
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 353
    .line 354
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

    .line 355
    .line 356
    if-eqz v0, :cond_b

    .line 357
    .line 358
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 359
    .line 360
    .line 361
    :cond_b
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 362
    .line 363
    if-eqz v0, :cond_d

    .line 364
    .line 365
    invoke-static {v8, v7}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 370
    .line 371
    if-lt v0, v6, :cond_c

    .line 372
    .line 373
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    :cond_c
    invoke-virtual {v11, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    if-eqz p1, :cond_27

    .line 384
    .line 385
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_12

    .line 389
    .line 390
    :cond_d
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 391
    .line 392
    if-eqz v0, :cond_e

    .line 393
    .line 394
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 399
    .line 400
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 408
    .line 409
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 410
    .line 411
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 419
    .line 420
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 421
    .line 422
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 430
    .line 431
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 432
    .line 433
    new-instance v0, Lxf/d;

    .line 434
    .line 435
    const/16 v1, 0xb

    .line 436
    .line 437
    invoke-direct {v0, v1, v11}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_12

    .line 444
    .line 445
    :cond_e
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 446
    .line 447
    if-eqz v0, :cond_11

    .line 448
    .line 449
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 450
    .line 451
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 460
    .line 461
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 469
    .line 470
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 471
    .line 472
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 480
    .line 481
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 482
    .line 483
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    if-eqz p1, :cond_f

    .line 487
    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-nez v0, :cond_10

    .line 493
    .line 494
    :cond_f
    const/4 v3, 0x1

    .line 495
    :cond_10
    if-nez v3, :cond_27

    .line 496
    .line 497
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 502
    .line 503
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_12

    .line 509
    .line 510
    :cond_11
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 515
    .line 516
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 524
    .line 525
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 526
    .line 527
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 535
    .line 536
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 537
    .line 538
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_12

    .line 542
    .line 543
    :cond_12
    const-string v0, "ListOfCar"

    .line 544
    .line 545
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_27

    .line 550
    .line 551
    iget-object v0, p1, Ldh/e;->a:Lr0/b;

    .line 552
    .line 553
    instance-of v1, v0, Lr0/d1;

    .line 554
    .line 555
    if-eqz v1, :cond_13

    .line 556
    .line 557
    const/4 v1, 0x1

    .line 558
    goto :goto_9

    .line 559
    :cond_13
    instance-of v1, v0, Lr0/k;

    .line 560
    .line 561
    :goto_9
    if-eqz v1, :cond_15

    .line 562
    .line 563
    iget-object p1, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

    .line 564
    .line 565
    if-eqz p1, :cond_14

    .line 566
    .line 567
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    if-nez p1, :cond_14

    .line 572
    .line 573
    const/4 v3, 0x1

    .line 574
    :cond_14
    if-eqz v3, :cond_27

    .line 575
    .line 576
    :goto_a
    invoke-static {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_12

    .line 580
    .line 581
    :cond_15
    instance-of v1, v0, Lr0/c1;

    .line 582
    .line 583
    if-eqz v1, :cond_18

    .line 584
    .line 585
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 586
    .line 587
    new-array v1, v3, [Ljava/lang/Object;

    .line 588
    .line 589
    invoke-virtual {v0, v9, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

    .line 593
    .line 594
    if-eqz v0, :cond_16

    .line 595
    .line 596
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-ne v0, v4, :cond_16

    .line 601
    .line 602
    const/4 v0, 0x1

    .line 603
    goto :goto_b

    .line 604
    :cond_16
    const/4 v0, 0x0

    .line 605
    :goto_b
    if-eqz v0, :cond_17

    .line 606
    .line 607
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

    .line 608
    .line 609
    if-eqz v0, :cond_17

    .line 610
    .line 611
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 612
    .line 613
    .line 614
    :cond_17
    iget-object p1, p1, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    .line 615
    .line 616
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;->getVehicleListData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListData;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    if-eqz p1, :cond_21

    .line 621
    .line 622
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListData;->getVehicleList()Ljava/util/List;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    goto/16 :goto_10

    .line 627
    .line 628
    :cond_18
    instance-of p1, v0, Lr0/i;

    .line 629
    .line 630
    if-eqz p1, :cond_27

    .line 631
    .line 632
    check-cast v0, Lr0/i;

    .line 633
    .line 634
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 635
    .line 636
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

    .line 637
    .line 638
    if-eqz v0, :cond_19

    .line 639
    .line 640
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 641
    .line 642
    .line 643
    :cond_19
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 644
    .line 645
    if-eqz v0, :cond_1b

    .line 646
    .line 647
    invoke-static {v8, v7}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 652
    .line 653
    if-lt v0, v6, :cond_1a

    .line 654
    .line 655
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    .line 657
    .line 658
    :cond_1a
    invoke-virtual {v11, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    if-eqz p1, :cond_21

    .line 666
    .line 667
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 668
    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_1b
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 672
    .line 673
    if-eqz v0, :cond_1c

    .line 674
    .line 675
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->I()V

    .line 676
    .line 677
    .line 678
    goto :goto_f

    .line 679
    :cond_1c
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 680
    .line 681
    if-eqz v0, :cond_1d

    .line 682
    .line 683
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 684
    .line 685
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    goto :goto_c

    .line 690
    :cond_1d
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 691
    .line 692
    if-nez p1, :cond_21

    .line 693
    .line 694
    move-object p1, v10

    .line 695
    :goto_c
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->g:Landroid/content/Context;

    .line 696
    .line 697
    if-eqz v0, :cond_21

    .line 698
    .line 699
    if-eqz p1, :cond_1f

    .line 700
    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_1e

    .line 706
    .line 707
    goto :goto_d

    .line 708
    :cond_1e
    const/4 v1, 0x0

    .line 709
    goto :goto_e

    .line 710
    :cond_1f
    :goto_d
    const/4 v1, 0x1

    .line 711
    :goto_e
    if-eqz v1, :cond_20

    .line 712
    .line 713
    const p1, 0x7f130249

    .line 714
    .line 715
    .line 716
    invoke-virtual {v11, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    :cond_20
    const-string v1, "if (errorMessage.isNullO\u2026rrorMessage\n            }"

    .line 721
    .line 722
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    sget v1, Lke/d;->a:I

    .line 726
    .line 727
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->f:Landroidx/core/widget/NestedScrollView;

    .line 732
    .line 733
    const-string v5, "mDriverCarBinding.mktDriverParentContainer"

    .line 734
    .line 735
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    const v5, 0x7f060088

    .line 739
    .line 740
    .line 741
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    invoke-static {v1, p1, v0}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    if-eqz p1, :cond_21

    .line 750
    .line 751
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 752
    .line 753
    .line 754
    :cond_21
    :goto_f
    move-object p1, v10

    .line 755
    :goto_10
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->p:[Lda/m;

    .line 756
    .line 757
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 762
    .line 763
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 764
    .line 765
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 773
    .line 774
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 775
    .line 776
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 784
    .line 785
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 786
    .line 787
    .line 788
    move-object v0, p1

    .line 789
    check-cast v0, Ljava/util/Collection;

    .line 790
    .line 791
    if-eqz v0, :cond_23

    .line 792
    .line 793
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    if-eqz v0, :cond_22

    .line 798
    .line 799
    goto :goto_11

    .line 800
    :cond_22
    const/4 v4, 0x0

    .line 801
    :cond_23
    :goto_11
    if-eqz v4, :cond_24

    .line 802
    .line 803
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    .line 808
    .line 809
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->h:Lcom/google/android/material/card/MaterialCardView;

    .line 817
    .line 818
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 819
    .line 820
    .line 821
    goto :goto_12

    .line 822
    :cond_24
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->h:Lcom/google/android/material/card/MaterialCardView;

    .line 827
    .line 828
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    .line 836
    .line 837
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 838
    .line 839
    .line 840
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;

    .line 841
    .line 842
    invoke-direct {v0, v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;)V

    .line 843
    .line 844
    .line 845
    iput-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;

    .line 846
    .line 847
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->l:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 852
    .line 853
    iget-object v1, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;

    .line 854
    .line 855
    const-string v2, "mServiceListController"

    .line 856
    .line 857
    if-eqz v1, :cond_26

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v11}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;->l:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 867
    .line 868
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 869
    .line 870
    iget-object v3, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->g:Landroid/content/Context;

    .line 871
    .line 872
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 876
    .line 877
    .line 878
    iput-object p1, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->d:Ljava/util/List;

    .line 879
    .line 880
    iget-object v0, v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;

    .line 881
    .line 882
    if-eqz v0, :cond_25

    .line 883
    .line 884
    invoke-virtual {v0, p1, v10}, Lcom/airbnb/epoxy/Typed2EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    goto :goto_12

    .line 888
    :cond_25
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    throw v10

    .line 892
    :cond_26
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    throw v10

    .line 896
    :cond_27
    :goto_12
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 897
    .line 898
    return-object p1
.end method
