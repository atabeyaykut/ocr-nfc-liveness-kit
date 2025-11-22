.class public final Lrc/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;IIZ)I
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x30

    if-gt v1, v0, :cond_1

    const/16 v1, 0x39

    if-ge v1, v0, :cond_5

    :cond_1
    const/16 v1, 0x61

    if-gt v1, v0, :cond_2

    const/16 v1, 0x7a

    if-ge v1, v0, :cond_5

    :cond_2
    const/16 v1, 0x41

    if-gt v1, v0, :cond_3

    const/16 v1, 0x5a

    if-ge v1, v0, :cond_5

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return p2
.end method

.method public static b(ILjava/lang/String;)J
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, p0, v0}, Lrc/j$a;->a(Ljava/lang/String;IIZ)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sget-object v2, Lrc/j;->m:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, -0x1

    .line 15
    const/4 v6, -0x1

    .line 16
    const/4 v7, -0x1

    .line 17
    const/4 v8, -0x1

    .line 18
    const/4 v9, -0x1

    .line 19
    :goto_0
    const/4 v10, 0x1

    .line 20
    const/4 v11, 0x2

    .line 21
    if-ge v1, p0, :cond_4

    .line 22
    .line 23
    add-int/lit8 v12, v1, 0x1

    .line 24
    .line 25
    invoke-static {p1, v12, p0, v10}, Lrc/j$a;->a(Ljava/lang/String;IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    const-string v1, "matcher.group(1)"

    .line 33
    .line 34
    if-ne v5, v3, :cond_0

    .line 35
    .line 36
    sget-object v13, Lrc/j;->m:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    if-eqz v13, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v8, "matcher.group(2)"

    .line 64
    .line 65
    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v9, "matcher.group(3)"

    .line 78
    .line 79
    invoke-static {v1, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    if-ne v6, v3, :cond_1

    .line 88
    .line 89
    sget-object v11, Lrc/j;->l:Ljava/util/regex/Pattern;

    .line 90
    .line 91
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-eqz v11, :cond_1

    .line 100
    .line 101
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    if-ne v7, v3, :cond_2

    .line 114
    .line 115
    sget-object v11, Lrc/j;->k:Ljava/util/regex/Pattern;

    .line 116
    .line 117
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_2

    .line 126
    .line 127
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 135
    .line 136
    const-string v10, "Locale.US"

    .line 137
    .line 138
    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    .line 146
    .line 147
    invoke-static {v1, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const-string v10, "MONTH_PATTERN.pattern()"

    .line 155
    .line 156
    invoke-static {v7, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 v10, 0x6

    .line 160
    invoke-static {v7, v1, v0, v0, v10}, Lmc/n;->N(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    div-int/lit8 v7, v1, 0x4

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    if-ne v4, v3, :cond_3

    .line 168
    .line 169
    sget-object v11, Lrc/j;->j:Ljava/util/regex/Pattern;

    .line 170
    .line 171
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-eqz v11, :cond_3

    .line 180
    .line 181
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 193
    .line 194
    invoke-static {p1, v12, p0, v0}, Lrc/j$a;->a(Ljava/lang/String;IIZ)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_4
    const/16 p0, 0x46

    .line 201
    .line 202
    if-le p0, v4, :cond_5

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    const/16 p0, 0x63

    .line 206
    .line 207
    if-lt p0, v4, :cond_6

    .line 208
    .line 209
    add-int/lit16 v4, v4, 0x76c

    .line 210
    .line 211
    :cond_6
    :goto_2
    if-gez v4, :cond_7

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    const/16 p0, 0x45

    .line 215
    .line 216
    if-lt p0, v4, :cond_8

    .line 217
    .line 218
    add-int/lit16 v4, v4, 0x7d0

    .line 219
    .line 220
    :cond_8
    :goto_3
    const/16 p0, 0x641

    .line 221
    .line 222
    if-lt v4, p0, :cond_9

    .line 223
    .line 224
    const/4 p0, 0x1

    .line 225
    goto :goto_4

    .line 226
    :cond_9
    const/4 p0, 0x0

    .line 227
    :goto_4
    const-string p1, "Failed requirement."

    .line 228
    .line 229
    if-eqz p0, :cond_18

    .line 230
    .line 231
    if-eq v7, v3, :cond_a

    .line 232
    .line 233
    const/4 p0, 0x1

    .line 234
    goto :goto_5

    .line 235
    :cond_a
    const/4 p0, 0x0

    .line 236
    :goto_5
    if-eqz p0, :cond_17

    .line 237
    .line 238
    if-le v10, v6, :cond_b

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_b
    const/16 p0, 0x1f

    .line 242
    .line 243
    if-lt p0, v6, :cond_c

    .line 244
    .line 245
    const/4 p0, 0x1

    .line 246
    goto :goto_7

    .line 247
    :cond_c
    :goto_6
    const/4 p0, 0x0

    .line 248
    :goto_7
    if-eqz p0, :cond_16

    .line 249
    .line 250
    if-gez v5, :cond_d

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_d
    const/16 p0, 0x17

    .line 254
    .line 255
    if-lt p0, v5, :cond_e

    .line 256
    .line 257
    const/4 p0, 0x1

    .line 258
    goto :goto_9

    .line 259
    :cond_e
    :goto_8
    const/4 p0, 0x0

    .line 260
    :goto_9
    if-eqz p0, :cond_15

    .line 261
    .line 262
    const/16 p0, 0x3b

    .line 263
    .line 264
    if-gez v8, :cond_f

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_f
    if-lt p0, v8, :cond_10

    .line 268
    .line 269
    const/4 v1, 0x1

    .line 270
    goto :goto_b

    .line 271
    :cond_10
    :goto_a
    const/4 v1, 0x0

    .line 272
    :goto_b
    if-eqz v1, :cond_14

    .line 273
    .line 274
    if-gez v9, :cond_11

    .line 275
    .line 276
    goto :goto_c

    .line 277
    :cond_11
    if-lt p0, v9, :cond_12

    .line 278
    .line 279
    const/4 p0, 0x1

    .line 280
    goto :goto_d

    .line 281
    :cond_12
    :goto_c
    const/4 p0, 0x0

    .line 282
    :goto_d
    if-eqz p0, :cond_13

    .line 283
    .line 284
    new-instance p0, Ljava/util/GregorianCalendar;

    .line 285
    .line 286
    sget-object p1, Lsc/c;->d:Ljava/util/TimeZone;

    .line 287
    .line 288
    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 295
    .line 296
    .line 297
    sub-int/2addr v7, v10

    .line 298
    invoke-virtual {p0, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 299
    .line 300
    .line 301
    const/4 p1, 0x5

    .line 302
    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 303
    .line 304
    .line 305
    const/16 p1, 0xb

    .line 306
    .line 307
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 308
    .line 309
    .line 310
    const/16 p1, 0xc

    .line 311
    .line 312
    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    .line 313
    .line 314
    .line 315
    const/16 p1, 0xd

    .line 316
    .line 317
    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    .line 318
    .line 319
    .line 320
    const/16 p1, 0xe

    .line 321
    .line 322
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 326
    .line 327
    .line 328
    move-result-wide p0

    .line 329
    return-wide p0

    .line 330
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p0

    .line 340
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p0

    .line 350
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw p0

    .line 360
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw p0

    .line 370
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p0

    .line 380
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 381
    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw p0
.end method
