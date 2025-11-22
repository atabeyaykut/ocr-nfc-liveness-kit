.class public final Lcom/google/android/gms/internal/measurement/n8;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp4/c7;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/n8;->c:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/n8;->d:Ljava/lang/Object;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lqd/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/n8;->c:I

    const-string v0, "internal.registerCallback"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/n8;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n8;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n8;->d:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :pswitch_0
    const-string v0, "getValue"

    .line 13
    .line 14
    invoke-static {v0, v4, p2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast v1, Lp4/c7;

    .line 42
    .line 43
    iget-object v0, v1, Lp4/c7;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lc5/c4;

    .line 46
    .line 47
    iget-object v0, v0, Lc5/c4;->d:Landroidx/collection/ArrayMap;

    .line 48
    .line 49
    iget-object v1, v1, Lp4/c7;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/Map;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 76
    :goto_1
    if-eqz p2, :cond_2

    .line 77
    .line 78
    new-instance p1, Lcom/google/android/gms/internal/measurement/t;

    .line 79
    .line 80
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-object p1

    .line 84
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v5, 0x3

    .line 87
    invoke-static {v0, v5, p2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 114
    .line 115
    if-eqz v3, :cond_a

    .line 116
    .line 117
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/m;

    .line 128
    .line 129
    if-eqz p2, :cond_9

    .line 130
    .line 131
    check-cast p1, Lcom/google/android/gms/internal/measurement/m;

    .line 132
    .line 133
    const-string p2, "type"

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/m;->m(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_8

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/m;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v3, "priority"

    .line 150
    .line 151
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/m;->m(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_3

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/m;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    invoke-static {v3, v4}, Lc5/w;->Q(D)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    goto :goto_3

    .line 174
    :cond_3
    const/16 p1, 0x3e8

    .line 175
    .line 176
    :goto_3
    check-cast v1, Lqd/f;

    .line 177
    .line 178
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v3, "create"

    .line 184
    .line 185
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_4

    .line 190
    .line 191
    iget-object p2, v1, Lqd/f;->b:Ljava/lang/Object;

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_4
    const-string v3, "edit"

    .line 195
    .line 196
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    iget-object p2, v1, Lqd/f;->a:Ljava/lang/Object;

    .line 203
    .line 204
    :goto_4
    check-cast p2, Ljava/util/TreeMap;

    .line 205
    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_5

    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ljava/lang/Integer;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    add-int/2addr p1, v2

    .line 227
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p2, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    .line 235
    .line 236
    return-object p1

    .line 237
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 238
    .line 239
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    const-string v1, "Unknown callback type: "

    .line 248
    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    goto :goto_5

    .line 256
    :cond_7
    new-instance p2, Ljava/lang/String;

    .line 257
    .line 258
    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :goto_5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    const-string p2, "Undefined rule type"

    .line 268
    .line 269
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p1

    .line 273
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    const-string p2, "Invalid callback params"

    .line 276
    .line 277
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p1

    .line 281
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 282
    .line 283
    const-string p2, "Invalid callback type"

    .line 284
    .line 285
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
