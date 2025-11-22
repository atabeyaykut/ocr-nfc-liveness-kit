.class public final Lva/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c;

.field public static final b:[Llb/c;

.field public static final c:Lva/a0;

.field public static final d:Lva/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Llb/c;

    .line 2
    .line 3
    const-string v1, "org.jspecify.nullness"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lva/q;->a:Llb/c;

    .line 9
    .line 10
    new-instance v1, Llb/c;

    .line 11
    .line 12
    const-string v2, "io.reactivex.rxjava3.annotations"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Llb/c;

    .line 18
    .line 19
    const-string v3, "org.checkerframework.checker.nullness.compatqual"

    .line 20
    .line 21
    invoke-direct {v2, v3}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Llb/c;->b()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x2

    .line 29
    new-array v5, v4, [Llb/c;

    .line 30
    .line 31
    new-instance v6, Llb/c;

    .line 32
    .line 33
    const-string v7, ".Nullable"

    .line 34
    .line 35
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-direct {v6, v7}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    aput-object v6, v5, v7

    .line 44
    .line 45
    new-instance v6, Llb/c;

    .line 46
    .line 47
    const-string v8, ".NonNull"

    .line 48
    .line 49
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v6, v3}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    aput-object v6, v5, v3

    .line 58
    .line 59
    sput-object v5, Lva/q;->b:[Llb/c;

    .line 60
    .line 61
    new-instance v5, Lva/a0;

    .line 62
    .line 63
    const/16 v6, 0x10

    .line 64
    .line 65
    new-array v6, v6, [Ll9/g;

    .line 66
    .line 67
    new-instance v8, Llb/c;

    .line 68
    .line 69
    const-string v9, "org.jetbrains.annotations"

    .line 70
    .line 71
    invoke-direct {v8, v9}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v9, Lva/r;->d:Lva/r;

    .line 75
    .line 76
    new-instance v10, Ll9/g;

    .line 77
    .line 78
    invoke-direct {v10, v8, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    aput-object v10, v6, v7

    .line 82
    .line 83
    new-instance v8, Llb/c;

    .line 84
    .line 85
    const-string v10, "androidx.annotation"

    .line 86
    .line 87
    invoke-direct {v8, v10}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v10, Ll9/g;

    .line 91
    .line 92
    invoke-direct {v10, v8, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    aput-object v10, v6, v3

    .line 96
    .line 97
    new-instance v3, Llb/c;

    .line 98
    .line 99
    const-string v8, "android.support.annotation"

    .line 100
    .line 101
    invoke-direct {v3, v8}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v8, Ll9/g;

    .line 105
    .line 106
    invoke-direct {v8, v3, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    aput-object v8, v6, v4

    .line 110
    .line 111
    new-instance v3, Llb/c;

    .line 112
    .line 113
    const-string v4, "android.annotation"

    .line 114
    .line 115
    invoke-direct {v3, v4}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Ll9/g;

    .line 119
    .line 120
    invoke-direct {v4, v3, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/4 v3, 0x3

    .line 124
    aput-object v4, v6, v3

    .line 125
    .line 126
    new-instance v3, Llb/c;

    .line 127
    .line 128
    const-string v4, "com.android.annotations"

    .line 129
    .line 130
    invoke-direct {v3, v4}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Ll9/g;

    .line 134
    .line 135
    invoke-direct {v4, v3, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const/4 v3, 0x4

    .line 139
    aput-object v4, v6, v3

    .line 140
    .line 141
    new-instance v4, Llb/c;

    .line 142
    .line 143
    const-string v8, "org.eclipse.jdt.annotation"

    .line 144
    .line 145
    invoke-direct {v4, v8}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v8, Ll9/g;

    .line 149
    .line 150
    invoke-direct {v8, v4, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const/4 v4, 0x5

    .line 154
    aput-object v8, v6, v4

    .line 155
    .line 156
    new-instance v4, Llb/c;

    .line 157
    .line 158
    const-string v8, "org.checkerframework.checker.nullness.qual"

    .line 159
    .line 160
    invoke-direct {v4, v8}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v8, Ll9/g;

    .line 164
    .line 165
    invoke-direct {v8, v4, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    const/4 v4, 0x6

    .line 169
    aput-object v8, v6, v4

    .line 170
    .line 171
    new-instance v4, Ll9/g;

    .line 172
    .line 173
    invoke-direct {v4, v2, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    const/4 v2, 0x7

    .line 177
    aput-object v4, v6, v2

    .line 178
    .line 179
    new-instance v2, Llb/c;

    .line 180
    .line 181
    const-string v4, "javax.annotation"

    .line 182
    .line 183
    invoke-direct {v2, v4}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v4, Ll9/g;

    .line 187
    .line 188
    invoke-direct {v4, v2, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    const/16 v2, 0x8

    .line 192
    .line 193
    aput-object v4, v6, v2

    .line 194
    .line 195
    new-instance v4, Llb/c;

    .line 196
    .line 197
    const-string v8, "edu.umd.cs.findbugs.annotations"

    .line 198
    .line 199
    invoke-direct {v4, v8}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v8, Ll9/g;

    .line 203
    .line 204
    invoke-direct {v8, v4, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    const/16 v4, 0x9

    .line 208
    .line 209
    aput-object v8, v6, v4

    .line 210
    .line 211
    new-instance v8, Llb/c;

    .line 212
    .line 213
    const-string v10, "io.reactivex.annotations"

    .line 214
    .line 215
    invoke-direct {v8, v10}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v10, Ll9/g;

    .line 219
    .line 220
    invoke-direct {v10, v8, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/16 v8, 0xa

    .line 224
    .line 225
    aput-object v10, v6, v8

    .line 226
    .line 227
    new-instance v8, Llb/c;

    .line 228
    .line 229
    const-string v10, "androidx.annotation.RecentlyNullable"

    .line 230
    .line 231
    invoke-direct {v8, v10}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v10, Lva/r;

    .line 235
    .line 236
    sget-object v11, Lva/b0;->c:Lva/b0;

    .line 237
    .line 238
    invoke-direct {v10, v11, v3}, Lva/r;-><init>(Lva/b0;I)V

    .line 239
    .line 240
    .line 241
    new-instance v12, Ll9/g;

    .line 242
    .line 243
    invoke-direct {v12, v8, v10}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    const/16 v8, 0xb

    .line 247
    .line 248
    aput-object v12, v6, v8

    .line 249
    .line 250
    new-instance v8, Llb/c;

    .line 251
    .line 252
    const-string v10, "androidx.annotation.RecentlyNonNull"

    .line 253
    .line 254
    invoke-direct {v8, v10}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v10, Lva/r;

    .line 258
    .line 259
    invoke-direct {v10, v11, v3}, Lva/r;-><init>(Lva/b0;I)V

    .line 260
    .line 261
    .line 262
    new-instance v12, Ll9/g;

    .line 263
    .line 264
    invoke-direct {v12, v8, v10}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    const/16 v8, 0xc

    .line 268
    .line 269
    aput-object v12, v6, v8

    .line 270
    .line 271
    new-instance v8, Llb/c;

    .line 272
    .line 273
    const-string v10, "lombok"

    .line 274
    .line 275
    invoke-direct {v8, v10}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v10, Ll9/g;

    .line 279
    .line 280
    invoke-direct {v10, v8, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    const/16 v8, 0xd

    .line 284
    .line 285
    aput-object v10, v6, v8

    .line 286
    .line 287
    new-instance v8, Lva/r;

    .line 288
    .line 289
    new-instance v9, Ll9/d;

    .line 290
    .line 291
    invoke-direct {v9, v4, v7}, Ll9/d;-><init>(II)V

    .line 292
    .line 293
    .line 294
    sget-object v4, Lva/b0;->d:Lva/b0;

    .line 295
    .line 296
    invoke-direct {v8, v11, v9, v4}, Lva/r;-><init>(Lva/b0;Ll9/d;Lva/b0;)V

    .line 297
    .line 298
    .line 299
    new-instance v9, Ll9/g;

    .line 300
    .line 301
    invoke-direct {v9, v0, v8}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    const/16 v0, 0xe

    .line 305
    .line 306
    aput-object v9, v6, v0

    .line 307
    .line 308
    new-instance v0, Lva/r;

    .line 309
    .line 310
    new-instance v8, Ll9/d;

    .line 311
    .line 312
    invoke-direct {v8, v2, v7}, Ll9/d;-><init>(II)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v0, v11, v8, v4}, Lva/r;-><init>(Lva/b0;Ll9/d;Lva/b0;)V

    .line 316
    .line 317
    .line 318
    new-instance v2, Ll9/g;

    .line 319
    .line 320
    invoke-direct {v2, v1, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    const/16 v0, 0xf

    .line 324
    .line 325
    aput-object v2, v6, v0

    .line 326
    .line 327
    invoke-static {v6}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-direct {v5, v0}, Lva/a0;-><init>(Ljava/util/Map;)V

    .line 332
    .line 333
    .line 334
    sput-object v5, Lva/q;->c:Lva/a0;

    .line 335
    .line 336
    new-instance v0, Lva/r;

    .line 337
    .line 338
    invoke-direct {v0, v11, v3}, Lva/r;-><init>(Lva/b0;I)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lva/q;->d:Lva/r;

    .line 342
    .line 343
    return-void
.end method
