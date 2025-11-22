.class public final synthetic Lio/realm/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lg/d;->d(I)[I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v1, v1

    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    sput-object v1, Lio/realm/p$a;->b:[I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    :try_start_0
    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    :catch_0
    :try_start_1
    sget-object v1, Lio/realm/p$a;->b:[I

    .line 16
    .line 17
    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    :try_start_2
    sget-object v1, Lio/realm/p$a;->b:[I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput v0, v1, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    .line 24
    :catch_2
    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v1, v1

    .line 29
    new-array v1, v1, [I

    .line 30
    .line 31
    sput-object v1, Lio/realm/p$a;->a:[I

    .line 32
    .line 33
    :try_start_3
    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v2, v1, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 40
    .line 41
    :catch_3
    :try_start_4
    sget-object v1, Lio/realm/p$a;->a:[I

    .line 42
    .line 43
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 50
    .line 51
    :catch_4
    :try_start_5
    sget-object v1, Lio/realm/p$a;->a:[I

    .line 52
    .line 53
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 60
    .line 61
    :catch_5
    :try_start_6
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 62
    .line 63
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x4

    .line 70
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 71
    .line 72
    :catch_6
    :try_start_7
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 73
    .line 74
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x5

    .line 81
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 82
    .line 83
    :catch_7
    :try_start_8
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 84
    .line 85
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x6

    .line 92
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 93
    .line 94
    :catch_8
    :try_start_9
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 95
    .line 96
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/4 v2, 0x7

    .line 103
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 104
    .line 105
    :catch_9
    :try_start_a
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 106
    .line 107
    sget-object v1, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    const/16 v2, 0x8

    .line 114
    .line 115
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 116
    .line 117
    :catch_a
    :try_start_b
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 118
    .line 119
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/16 v2, 0x9

    .line 126
    .line 127
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 128
    .line 129
    :catch_b
    :try_start_c
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 130
    .line 131
    sget-object v1, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    const/16 v2, 0xa

    .line 138
    .line 139
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 140
    .line 141
    :catch_c
    :try_start_d
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 142
    .line 143
    sget-object v1, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/16 v2, 0xb

    .line 150
    .line 151
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 152
    .line 153
    :catch_d
    :try_start_e
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 154
    .line 155
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const/16 v2, 0xc

    .line 162
    .line 163
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 164
    .line 165
    :catch_e
    :try_start_f
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 166
    .line 167
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const/16 v2, 0xd

    .line 174
    .line 175
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 176
    .line 177
    :catch_f
    :try_start_10
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 178
    .line 179
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    const/16 v2, 0xe

    .line 186
    .line 187
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 188
    .line 189
    :catch_10
    :try_start_11
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 190
    .line 191
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    const/16 v2, 0xf

    .line 198
    .line 199
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 200
    .line 201
    :catch_11
    :try_start_12
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 202
    .line 203
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    const/16 v2, 0x10

    .line 210
    .line 211
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 212
    .line 213
    :catch_12
    :try_start_13
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 214
    .line 215
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const/16 v2, 0x11

    .line 222
    .line 223
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 224
    .line 225
    :catch_13
    :try_start_14
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 226
    .line 227
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    const/16 v2, 0x12

    .line 234
    .line 235
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 236
    .line 237
    :catch_14
    :try_start_15
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 238
    .line 239
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    const/16 v2, 0x13

    .line 246
    .line 247
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 248
    .line 249
    :catch_15
    :try_start_16
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 250
    .line 251
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const/16 v2, 0x14

    .line 258
    .line 259
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 260
    .line 261
    :catch_16
    :try_start_17
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 262
    .line 263
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    const/16 v2, 0x15

    .line 270
    .line 271
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 272
    .line 273
    :catch_17
    :try_start_18
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 274
    .line 275
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    const/16 v2, 0x16

    .line 282
    .line 283
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 284
    .line 285
    :catch_18
    :try_start_19
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 286
    .line 287
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    const/16 v2, 0x17

    .line 294
    .line 295
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 296
    .line 297
    :catch_19
    :try_start_1a
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 298
    .line 299
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/16 v2, 0x18

    .line 306
    .line 307
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 308
    .line 309
    :catch_1a
    :try_start_1b
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 310
    .line 311
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    const/16 v2, 0x19

    .line 318
    .line 319
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 320
    .line 321
    :catch_1b
    :try_start_1c
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 322
    .line 323
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    const/16 v2, 0x1a

    .line 330
    .line 331
    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 332
    .line 333
    :catch_1c
    :try_start_1d
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 334
    .line 335
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    const/16 v2, 0x1b

    .line 342
    .line 343
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 344
    .line 345
    :catch_1d
    :try_start_1e
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 346
    .line 347
    sget-object v1, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    const/16 v2, 0x1c

    .line 354
    .line 355
    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 356
    .line 357
    :catch_1e
    :try_start_1f
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 358
    .line 359
    sget-object v1, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    const/16 v2, 0x1d

    .line 366
    .line 367
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 368
    .line 369
    :catch_1f
    :try_start_20
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 370
    .line 371
    sget-object v1, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    const/16 v2, 0x1e

    .line 378
    .line 379
    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    .line 380
    .line 381
    :catch_20
    :try_start_21
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 382
    .line 383
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    const/16 v2, 0x1f

    .line 390
    .line 391
    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    .line 392
    .line 393
    :catch_21
    :try_start_22
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 394
    .line 395
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    const/16 v2, 0x20

    .line 402
    .line 403
    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 404
    .line 405
    :catch_22
    :try_start_23
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 406
    .line 407
    sget-object v1, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    const/16 v2, 0x21

    .line 414
    .line 415
    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    .line 416
    .line 417
    :catch_23
    :try_start_24
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 418
    .line 419
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    const/16 v2, 0x22

    .line 426
    .line 427
    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    .line 428
    .line 429
    :catch_24
    :try_start_25
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 430
    .line 431
    sget-object v1, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    const/16 v2, 0x23

    .line 438
    .line 439
    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    .line 440
    .line 441
    :catch_25
    :try_start_26
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 442
    .line 443
    sget-object v1, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    const/16 v2, 0x24

    .line 450
    .line 451
    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    .line 452
    .line 453
    :catch_26
    :try_start_27
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 454
    .line 455
    sget-object v1, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    const/16 v2, 0x25

    .line 462
    .line 463
    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    .line 464
    .line 465
    :catch_27
    :try_start_28
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 466
    .line 467
    sget-object v1, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    const/16 v2, 0x26

    .line 474
    .line 475
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    .line 476
    .line 477
    :catch_28
    :try_start_29
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 478
    .line 479
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    const/16 v2, 0x27

    .line 486
    .line 487
    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    .line 488
    .line 489
    :catch_29
    :try_start_2a
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 490
    .line 491
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    const/16 v2, 0x28

    .line 498
    .line 499
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 500
    .line 501
    :catch_2a
    :try_start_2b
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 502
    .line 503
    sget-object v1, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    const/16 v2, 0x29

    .line 510
    .line 511
    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 512
    .line 513
    :catch_2b
    :try_start_2c
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 514
    .line 515
    sget-object v1, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    const/16 v2, 0x2a

    .line 522
    .line 523
    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    .line 524
    .line 525
    :catch_2c
    :try_start_2d
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 526
    .line 527
    sget-object v1, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    const/16 v2, 0x2b

    .line 534
    .line 535
    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 536
    .line 537
    :catch_2d
    :try_start_2e
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 538
    .line 539
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    const/16 v2, 0x2c

    .line 546
    .line 547
    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    .line 548
    .line 549
    :catch_2e
    :try_start_2f
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 550
    .line 551
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    const/16 v2, 0x2d

    .line 558
    .line 559
    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 560
    .line 561
    :catch_2f
    :try_start_30
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 562
    .line 563
    sget-object v1, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    const/16 v2, 0x2e

    .line 570
    .line 571
    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    .line 572
    .line 573
    :catch_30
    :try_start_31
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 574
    .line 575
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    const/16 v2, 0x2f

    .line 582
    .line 583
    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    .line 584
    .line 585
    :catch_31
    :try_start_32
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 586
    .line 587
    sget-object v1, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    const/16 v2, 0x30

    .line 594
    .line 595
    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    .line 596
    .line 597
    :catch_32
    :try_start_33
    sget-object v0, Lio/realm/p$a;->a:[I

    .line 598
    .line 599
    sget-object v1, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    const/16 v2, 0x31

    .line 606
    .line 607
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    .line 608
    .line 609
    :catch_33
    return-void
.end method
