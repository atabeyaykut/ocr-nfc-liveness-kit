.class public final Lfd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Led/h;

.field public static final b:Led/h;

.field public static final c:Led/h;

.field public static final d:Led/h;

.field public static final e:Led/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Led/h;->d:Led/h;

    const-string v0, "/"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lfd/l;->a:Led/h;

    const-string v0, "\\"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lfd/l;->b:Led/h;

    const-string v0, "/\\"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lfd/l;->c:Led/h;

    const-string v0, "."

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lfd/l;->d:Led/h;

    const-string v0, ".."

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lfd/l;->e:Led/h;

    return-void
.end method

.method public static final a(Led/z;)I
    .locals 7

    .line 1
    iget-object v0, p0, Led/z;->a:Led/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Led/h;->r()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Led/z;->a:Led/h;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Led/h;->x(I)B

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x2f

    .line 20
    .line 21
    int-to-byte v3, v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Led/h;->x(I)B

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v3, 0x5c

    .line 31
    .line 32
    int-to-byte v3, v3

    .line 33
    const/4 v5, 0x2

    .line 34
    if-ne v2, v3, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Led/h;->r()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-le v0, v5, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Led/h;->x(I)B

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v3, :cond_3

    .line 47
    .line 48
    sget-object v0, Lfd/l;->b:Led/h;

    .line 49
    .line 50
    const-string v2, "other"

    .line 51
    .line 52
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Led/h;->a:[B

    .line 56
    .line 57
    invoke-virtual {p0, v5, v0}, Led/h;->u(I[B)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v0, v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Led/h;->r()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v1, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {p0}, Led/h;->r()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-le v2, v5, :cond_8

    .line 77
    .line 78
    invoke-virtual {p0, v4}, Led/h;->x(I)B

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/16 v6, 0x3a

    .line 83
    .line 84
    int-to-byte v6, v6

    .line 85
    if-ne v2, v6, :cond_8

    .line 86
    .line 87
    invoke-virtual {p0, v5}, Led/h;->x(I)B

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v2, v3, :cond_8

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Led/h;->x(I)B

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    int-to-char p0, p0

    .line 98
    const/16 v2, 0x61

    .line 99
    .line 100
    if-gt v2, p0, :cond_5

    .line 101
    .line 102
    const/16 v2, 0x7a

    .line 103
    .line 104
    if-gt p0, v2, :cond_5

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 v2, 0x0

    .line 109
    :goto_1
    if-nez v2, :cond_7

    .line 110
    .line 111
    const/16 v2, 0x41

    .line 112
    .line 113
    if-gt v2, p0, :cond_6

    .line 114
    .line 115
    const/16 v2, 0x5a

    .line 116
    .line 117
    if-gt p0, v2, :cond_6

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    :cond_6
    if-nez v0, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    const/4 v1, 0x3

    .line 124
    :cond_8
    :goto_2
    return v1
.end method

.method public static final b(Led/z;Led/z;Z)Led/z;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "child"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lfd/l;->a(Led/z;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Led/z;->t()Ljava/lang/Character;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p0}, Lfd/l;->c(Led/z;)Led/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Lfd/l;->c(Led/z;)Led/h;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    sget-object v0, Led/z;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Lfd/l;->f(Ljava/lang/String;)Led/h;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    new-instance v1, Led/e;

    .line 49
    .line 50
    invoke-direct {v1}, Led/e;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Led/z;->a:Led/h;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Led/e;->F(Led/h;)V

    .line 56
    .line 57
    .line 58
    iget-wide v2, v1, Led/e;->b:J

    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    cmp-long p0, v2, v4

    .line 63
    .line 64
    if-lez p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Led/e;->F(Led/h;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object p0, p1, Led/z;->a:Led/h;

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Led/e;->F(Led/h;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1, p2}, Lfd/l;->d(Led/e;Z)Led/z;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final c(Led/z;)Led/h;
    .locals 3

    .line 1
    iget-object v0, p0, Led/z;->a:Led/h;

    .line 2
    .line 3
    sget-object v1, Lfd/l;->a:Led/h;

    .line 4
    .line 5
    invoke-static {v0, v1}, Led/h;->v(Led/h;Led/h;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lfd/l;->b:Led/h;

    .line 14
    .line 15
    iget-object p0, p0, Led/z;->a:Led/h;

    .line 16
    .line 17
    invoke-static {p0, v1}, Led/h;->v(Led/h;Led/h;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eq p0, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return-object v1
.end method

.method public static final d(Led/e;Z)Led/z;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Led/e;

    .line 4
    .line 5
    invoke-direct {v1}, Led/e;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    sget-object v5, Lfd/l;->a:Led/h;

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Led/e;->G(Led/h;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_1d

    .line 18
    .line 19
    sget-object v5, Lfd/l;->b:Led/h;

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Led/e;->G(Led/h;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    goto/16 :goto_10

    .line 28
    .line 29
    :cond_0
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x1

    .line 31
    if-lt v4, v6, :cond_1

    .line 32
    .line 33
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v6, 0x0

    .line 42
    :goto_1
    sget-object v8, Lfd/l;->c:Led/h;

    .line 43
    .line 44
    const-wide/16 v9, -0x1

    .line 45
    .line 46
    const-wide/16 v11, 0x0

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Led/e;->F(Led/h;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    if-lez v4, :cond_3

    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-virtual {v1, v2}, Led/e;->F(Led/h;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0, v8}, Led/e;->H(Led/h;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v13

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    cmp-long v2, v13, v9

    .line 74
    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    sget-object v2, Led/z;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v2}, Lfd/l;->f(Ljava/lang/String;)Led/h;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v0, v13, v14}, Led/e;->f(J)B

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v2}, Lfd/l;->e(B)Led/h;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_5
    :goto_3
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const-wide/16 v9, 0x2

    .line 97
    .line 98
    if-nez v4, :cond_6

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    iget-wide v4, v0, Led/e;->b:J

    .line 102
    .line 103
    cmp-long v17, v4, v9

    .line 104
    .line 105
    if-gez v17, :cond_7

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_7
    const-wide/16 v4, 0x1

    .line 109
    .line 110
    invoke-virtual {v0, v4, v5}, Led/e;->f(J)B

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/16 v5, 0x3a

    .line 115
    .line 116
    int-to-byte v5, v5

    .line 117
    if-eq v4, v5, :cond_8

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_8
    invoke-virtual {v0, v11, v12}, Led/e;->f(J)B

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    int-to-char v4, v4

    .line 125
    const/16 v5, 0x61

    .line 126
    .line 127
    if-gt v5, v4, :cond_9

    .line 128
    .line 129
    const/16 v5, 0x7a

    .line 130
    .line 131
    if-gt v4, v5, :cond_9

    .line 132
    .line 133
    const/4 v5, 0x1

    .line 134
    goto :goto_4

    .line 135
    :cond_9
    const/4 v5, 0x0

    .line 136
    :goto_4
    if-nez v5, :cond_c

    .line 137
    .line 138
    const/16 v5, 0x41

    .line 139
    .line 140
    if-gt v5, v4, :cond_a

    .line 141
    .line 142
    const/16 v5, 0x5a

    .line 143
    .line 144
    if-gt v4, v5, :cond_a

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    goto :goto_5

    .line 148
    :cond_a
    const/4 v4, 0x0

    .line 149
    :goto_5
    if-eqz v4, :cond_b

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_b
    :goto_6
    const/4 v4, 0x0

    .line 153
    goto :goto_8

    .line 154
    :cond_c
    :goto_7
    const/4 v4, 0x1

    .line 155
    :goto_8
    if-eqz v4, :cond_e

    .line 156
    .line 157
    cmp-long v4, v13, v9

    .line 158
    .line 159
    if-nez v4, :cond_d

    .line 160
    .line 161
    const-wide/16 v4, 0x3

    .line 162
    .line 163
    invoke-virtual {v1, v0, v4, v5}, Led/e;->M(Led/e;J)V

    .line 164
    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_d
    invoke-virtual {v1, v0, v9, v10}, Led/e;->M(Led/e;J)V

    .line 168
    .line 169
    .line 170
    :cond_e
    :goto_9
    iget-wide v4, v1, Led/e;->b:J

    .line 171
    .line 172
    cmp-long v9, v4, v11

    .line 173
    .line 174
    if-lez v9, :cond_f

    .line 175
    .line 176
    const/4 v4, 0x1

    .line 177
    goto :goto_a

    .line 178
    :cond_f
    const/4 v4, 0x0

    .line 179
    :goto_a
    new-instance v5, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    :cond_10
    :goto_b
    invoke-virtual/range {p0 .. p0}, Led/e;->I()Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    sget-object v10, Lfd/l;->d:Led/h;

    .line 189
    .line 190
    if-nez v9, :cond_18

    .line 191
    .line 192
    invoke-virtual {v0, v8}, Led/e;->H(Led/h;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v13

    .line 196
    const-wide/16 v15, -0x1

    .line 197
    .line 198
    cmp-long v9, v13, v15

    .line 199
    .line 200
    if-nez v9, :cond_11

    .line 201
    .line 202
    invoke-virtual/range {p0 .. p0}, Led/e;->n()Led/h;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    goto :goto_c

    .line 207
    :cond_11
    invoke-virtual {v0, v13, v14}, Led/e;->z(J)Led/h;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual/range {p0 .. p0}, Led/e;->readByte()B

    .line 212
    .line 213
    .line 214
    :goto_c
    sget-object v13, Lfd/l;->e:Led/h;

    .line 215
    .line 216
    invoke-static {v9, v13}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    if-eqz v14, :cond_16

    .line 221
    .line 222
    if-eqz v4, :cond_12

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_12

    .line 229
    .line 230
    goto :goto_b

    .line 231
    :cond_12
    if-eqz p1, :cond_17

    .line 232
    .line 233
    if-nez v4, :cond_13

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-nez v10, :cond_17

    .line 240
    .line 241
    invoke-static {v5}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-static {v10, v13}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-eqz v10, :cond_13

    .line 250
    .line 251
    goto :goto_d

    .line 252
    :cond_13
    if-eqz v6, :cond_14

    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-ne v9, v7, :cond_14

    .line 259
    .line 260
    goto :goto_b

    .line 261
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_15

    .line 266
    .line 267
    goto :goto_b

    .line 268
    :cond_15
    invoke-static {v5}, Lb8/f;->M(Ljava/util/List;)I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_16
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    if-nez v10, :cond_10

    .line 281
    .line 282
    sget-object v10, Led/h;->d:Led/h;

    .line 283
    .line 284
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-nez v10, :cond_10

    .line 289
    .line 290
    :cond_17
    :goto_d
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-lez v0, :cond_1b

    .line 299
    .line 300
    :goto_e
    add-int/lit8 v4, v3, 0x1

    .line 301
    .line 302
    if-lez v3, :cond_19

    .line 303
    .line 304
    invoke-virtual {v1, v2}, Led/e;->F(Led/h;)V

    .line 305
    .line 306
    .line 307
    :cond_19
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Led/h;

    .line 312
    .line 313
    invoke-virtual {v1, v3}, Led/e;->F(Led/h;)V

    .line 314
    .line 315
    .line 316
    if-lt v4, v0, :cond_1a

    .line 317
    .line 318
    goto :goto_f

    .line 319
    :cond_1a
    move v3, v4

    .line 320
    goto :goto_e

    .line 321
    :cond_1b
    :goto_f
    iget-wide v2, v1, Led/e;->b:J

    .line 322
    .line 323
    cmp-long v0, v2, v11

    .line 324
    .line 325
    if-nez v0, :cond_1c

    .line 326
    .line 327
    invoke-virtual {v1, v10}, Led/e;->F(Led/h;)V

    .line 328
    .line 329
    .line 330
    :cond_1c
    new-instance v0, Led/z;

    .line 331
    .line 332
    invoke-virtual {v1}, Led/e;->n()Led/h;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-direct {v0, v1}, Led/z;-><init>(Led/h;)V

    .line 337
    .line 338
    .line 339
    return-object v0

    .line 340
    :cond_1d
    :goto_10
    invoke-virtual/range {p0 .. p0}, Led/e;->readByte()B

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-nez v2, :cond_1e

    .line 345
    .line 346
    invoke-static {v5}, Lfd/l;->e(B)Led/h;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 351
    .line 352
    goto/16 :goto_0
.end method

.method public static final e(B)Led/h;
    .locals 2

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    sget-object p0, Lfd/l;->a:Led/h;

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    sget-object p0, Lfd/l;->b:Led/h;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final f(Ljava/lang/String;)Led/h;
    .locals 2

    const-string v0, "/"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lfd/l;->a:Led/h;

    goto :goto_0

    :cond_0
    const-string v0, "\\"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lfd/l;->b:Led/h;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
