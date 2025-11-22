.class public final Lcom/google/android/gms/internal/measurement/q7;
.super Lcom/google/android/gms/internal/measurement/m;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/internal/measurement/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q7;->b:Lcom/google/android/gms/internal/measurement/c;

    return-void
.end method


# virtual methods
.method public final w(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v7, 0x3

    .line 13
    const-string v8, "setEventName"

    .line 14
    .line 15
    const-string v9, "setParamValue"

    .line 16
    .line 17
    const-string v10, "getParams"

    .line 18
    .line 19
    const-string v11, "getParamValue"

    .line 20
    .line 21
    const-string v12, "getTimestamp"

    .line 22
    .line 23
    const-string v13, "getEventName"

    .line 24
    .line 25
    const/4 v14, 0x2

    .line 26
    const/4 v15, 0x1

    .line 27
    sparse-switch v3, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :sswitch_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    goto :goto_1

    .line 39
    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x5

    .line 46
    goto :goto_1

    .line 47
    :sswitch_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    goto :goto_1

    .line 55
    :sswitch_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    goto :goto_1

    .line 63
    :sswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 80
    :goto_1
    move-object/from16 v5, p0

    .line 81
    .line 82
    iget-object v4, v5, Lcom/google/android/gms/internal/measurement/q7;->b:Lcom/google/android/gms/internal/measurement/c;

    .line 83
    .line 84
    if-eqz v3, :cond_a

    .line 85
    .line 86
    if-eq v3, v15, :cond_8

    .line 87
    .line 88
    if-eq v3, v14, :cond_6

    .line 89
    .line 90
    if-eq v3, v7, :cond_5

    .line 91
    .line 92
    if-eq v3, v6, :cond_3

    .line 93
    .line 94
    const/4 v6, 0x5

    .line 95
    if-eq v3, v6, :cond_1

    .line 96
    .line 97
    invoke-super/range {p0 .. p3}, Lcom/google/android/gms/internal/measurement/m;->w(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    :cond_1
    invoke-static {v9, v14, v2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 103
    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 131
    .line 132
    invoke-static {v1}, Lc5/w;->Z(Lcom/google/android/gms/internal/measurement/p;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 137
    .line 138
    if-nez v3, :cond_2

    .line 139
    .line 140
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :goto_2
    return-object v1

    .line 148
    :cond_3
    invoke-static {v8, v15, v2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/u;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_4

    .line 169
    .line 170
    sget-object v1, Lcom/google/android/gms/internal/measurement/p;->o:Lcom/google/android/gms/internal/measurement/n;

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/n;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_4

    .line 177
    .line 178
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 179
    .line 180
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 185
    .line 186
    new-instance v1, Lcom/google/android/gms/internal/measurement/t;

    .line 187
    .line 188
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object v1

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    const-string v1, "Illegal event name"

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :cond_5
    const/4 v0, 0x0

    .line 205
    invoke-static {v12, v0, v2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 209
    .line 210
    new-instance v1, Lcom/google/android/gms/internal/measurement/i;

    .line 211
    .line 212
    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/b;->b:J

    .line 213
    .line 214
    long-to-double v2, v2

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 220
    .line 221
    .line 222
    return-object v1

    .line 223
    :cond_6
    const/4 v0, 0x0

    .line 224
    invoke-static {v10, v0, v2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 230
    .line 231
    new-instance v1, Lcom/google/android/gms/internal/measurement/m;

    .line 232
    .line 233
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/m;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_7

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Ljava/lang/String;

    .line 255
    .line 256
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v4}, Lb8/f;->G0(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/m;->u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_7
    return-object v1

    .line 269
    :cond_8
    invoke-static {v11, v15, v2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 270
    .line 271
    .line 272
    const/4 v0, 0x0

    .line 273
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 288
    .line 289
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_9

    .line 296
    .line 297
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    goto :goto_4

    .line 302
    :cond_9
    const/4 v0, 0x0

    .line 303
    :goto_4
    invoke-static {v0}, Lb8/f;->G0(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    return-object v0

    .line 308
    :cond_a
    const/4 v0, 0x0

    .line 309
    invoke-static {v13, v0, v2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 313
    .line 314
    new-instance v1, Lcom/google/android/gms/internal/measurement/t;

    .line 315
    .line 316
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 317
    .line 318
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-object v1

    .line 322
    nop

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
