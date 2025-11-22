.class public final Lcom/google/android/gms/internal/measurement/e0;
.super Lcom/google/android/gms/internal/measurement/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->b:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->y:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->Y:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->Z:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->a0:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->p0:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->q0:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->s0:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->t0:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/gms/internal/measurement/h0;->w0:Lcom/google/android/gms/internal/measurement/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h0;->b:Lcom/google/android/gms/internal/measurement/h0;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->Y(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    const/16 v4, 0x15

    .line 17
    .line 18
    if-eq v0, v4, :cond_4

    .line 19
    .line 20
    const/16 v4, 0x3b

    .line 21
    .line 22
    if-eq v0, v4, :cond_2

    .line 23
    .line 24
    const/16 v4, 0x34

    .line 25
    .line 26
    if-eq v0, v4, :cond_1

    .line 27
    .line 28
    const/16 v4, 0x35

    .line 29
    .line 30
    if-eq v0, v4, :cond_1

    .line 31
    .line 32
    const/16 v4, 0x37

    .line 33
    .line 34
    if-eq v0, v4, :cond_0

    .line 35
    .line 36
    const/16 v4, 0x38

    .line 37
    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    packed-switch v0, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/w;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    throw p1

    .line 48
    :pswitch_0
    const-string p1, "NEGATE"

    .line 49
    .line 50
    invoke-static {p1, v2, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Lcom/google/android/gms/internal/measurement/i;

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    neg-double v0, v0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 79
    .line 80
    .line 81
    return-object p2

    .line 82
    :pswitch_1
    const-string p1, "MULTIPLY"

    .line 83
    .line 84
    invoke-static {p1, v1, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 120
    .line 121
    .line 122
    move-result-wide p1

    .line 123
    new-instance p3, Lcom/google/android/gms/internal/measurement/i;

    .line 124
    .line 125
    mul-double v0, v0, p1

    .line 126
    .line 127
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 132
    .line 133
    .line 134
    return-object p3

    .line 135
    :pswitch_2
    const-string p1, "MODULUS"

    .line 136
    .line 137
    invoke-static {p1, v1, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 173
    .line 174
    .line 175
    move-result-wide p1

    .line 176
    new-instance p3, Lcom/google/android/gms/internal/measurement/i;

    .line 177
    .line 178
    rem-double/2addr v0, p1

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 184
    .line 185
    .line 186
    return-object p3

    .line 187
    :cond_0
    invoke-static {p1, v2, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    return-object p1

    .line 201
    :cond_1
    invoke-static {p1, v1, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 209
    .line 210
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    check-cast p3, Lcom/google/android/gms/internal/measurement/p;

    .line 219
    .line 220
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :cond_2
    const-string p1, "SUBTRACT"

    .line 225
    .line 226
    invoke-static {p1, v1, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    check-cast p3, Lcom/google/android/gms/internal/measurement/p;

    .line 244
    .line 245
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 254
    .line 255
    .line 256
    move-result-wide p2

    .line 257
    neg-double p2, p2

    .line 258
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    if-nez p2, :cond_3

    .line 263
    .line 264
    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    .line 265
    .line 266
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    :cond_3
    new-instance p3, Lcom/google/android/gms/internal/measurement/i;

    .line 271
    .line 272
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 277
    .line 278
    .line 279
    move-result-wide v0

    .line 280
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 281
    .line 282
    .line 283
    move-result-wide p1

    .line 284
    add-double/2addr p1, v0

    .line 285
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 290
    .line 291
    .line 292
    return-object p3

    .line 293
    :cond_4
    const-string p1, "DIVIDE"

    .line 294
    .line 295
    invoke-static {p1, v1, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 303
    .line 304
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 313
    .line 314
    .line 315
    move-result-wide v0

    .line 316
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 331
    .line 332
    .line 333
    move-result-wide p1

    .line 334
    new-instance p3, Lcom/google/android/gms/internal/measurement/i;

    .line 335
    .line 336
    div-double/2addr v0, p1

    .line 337
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 342
    .line 343
    .line 344
    return-object p3

    .line 345
    :cond_5
    const-string p1, "ADD"

    .line 346
    .line 347
    invoke-static {p1, v1, p3}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 355
    .line 356
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p3

    .line 364
    check-cast p3, Lcom/google/android/gms/internal/measurement/p;

    .line 365
    .line 366
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    instance-of p3, p1, Lcom/google/android/gms/internal/measurement/l;

    .line 371
    .line 372
    if-nez p3, :cond_7

    .line 373
    .line 374
    instance-of p3, p1, Lcom/google/android/gms/internal/measurement/t;

    .line 375
    .line 376
    if-nez p3, :cond_7

    .line 377
    .line 378
    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/l;

    .line 379
    .line 380
    if-nez p3, :cond_7

    .line 381
    .line 382
    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/t;

    .line 383
    .line 384
    if-eqz p3, :cond_6

    .line 385
    .line 386
    goto :goto_0

    .line 387
    :cond_6
    new-instance p3, Lcom/google/android/gms/internal/measurement/i;

    .line 388
    .line 389
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 394
    .line 395
    .line 396
    move-result-wide v0

    .line 397
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 402
    .line 403
    .line 404
    move-result-wide p1

    .line 405
    add-double/2addr p1, v0

    .line 406
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 411
    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_7
    :goto_0
    new-instance p3, Lcom/google/android/gms/internal/measurement/t;

    .line 415
    .line 416
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_8

    .line 437
    .line 438
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    goto :goto_1

    .line 443
    :cond_8
    new-instance p2, Ljava/lang/String;

    .line 444
    .line 445
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    move-object p1, p2

    .line 449
    :goto_1
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :goto_2
    return-object p3

    .line 453
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
