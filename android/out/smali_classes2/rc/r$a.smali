.class public final Lrc/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lrc/r$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lrc/r$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lrc/r$a;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrc/r$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lrc/r;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v2, :cond_7

    .line 6
    .line 7
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 8
    .line 9
    iget-object v4, v0, Lrc/r$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v12, 0x7

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x7

    .line 19
    move-object v3, v1

    .line 20
    invoke-static/range {v3 .. v8}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v13

    .line 24
    iget-object v4, v0, Lrc/r$a;->c:Ljava/lang/String;

    .line 25
    .line 26
    move v5, v9

    .line 27
    move v6, v10

    .line 28
    move v7, v11

    .line 29
    move v8, v12

    .line 30
    invoke-static/range {v3 .. v8}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v5, v0, Lrc/r$a;->d:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v5, :cond_6

    .line 37
    .line 38
    iget v3, v0, Lrc/r$a;->e:I

    .line 39
    .line 40
    const/4 v6, -0x1

    .line 41
    if-eq v3, v6, :cond_0

    .line 42
    .line 43
    move v6, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v3, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lrc/r$b;->b(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    move v6, v1

    .line 58
    :goto_0
    iget-object v1, v0, Lrc/r$a;->f:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v7, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object v15, v3

    .line 84
    check-cast v15, Ljava/lang/String;

    .line 85
    .line 86
    sget-object v14, Lrc/r;->l:Lrc/r$b;

    .line 87
    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const/16 v18, 0x0

    .line 93
    .line 94
    const/16 v19, 0x7

    .line 95
    .line 96
    invoke-static/range {v14 .. v19}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object v1, v0, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    new-instance v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_4

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    move-object v15, v9

    .line 133
    check-cast v15, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v15, :cond_2

    .line 136
    .line 137
    sget-object v14, Lrc/r;->l:Lrc/r$b;

    .line 138
    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    const/16 v18, 0x1

    .line 144
    .line 145
    const/16 v19, 0x3

    .line 146
    .line 147
    invoke-static/range {v14 .. v19}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    goto :goto_3

    .line 152
    :cond_2
    move-object v9, v3

    .line 153
    :goto_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    move-object v8, v3

    .line 158
    :cond_4
    iget-object v15, v0, Lrc/r$a;->h:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v15, :cond_5

    .line 161
    .line 162
    sget-object v14, Lrc/r;->l:Lrc/r$b;

    .line 163
    .line 164
    const/16 v16, 0x0

    .line 165
    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    const/16 v18, 0x0

    .line 169
    .line 170
    const/16 v19, 0x7

    .line 171
    .line 172
    invoke-static/range {v14 .. v19}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move-object v9, v1

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move-object v9, v3

    .line 179
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lrc/r$a;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    new-instance v11, Lrc/r;

    .line 184
    .line 185
    move-object v1, v11

    .line 186
    move-object v3, v13

    .line 187
    invoke-direct/range {v1 .. v10}, Lrc/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v11

    .line 191
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string v2, "host == null"

    .line 194
    .line 195
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v1

    .line 199
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    const-string v2, "scheme == null"

    .line 202
    .line 203
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_0

    sget-object v0, Lrc/r;->l:Lrc/r$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd3

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lrc/r$b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lrc/r$a;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public final c(Lrc/r;Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    const-string v2, "input"

    .line 8
    .line 9
    invoke-static {v12, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lsc/c;->a:[B

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v3, v2, v12}, Lsc/c;->m(IILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v2, v4, v12}, Lsc/c;->n(IILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    sub-int v4, v13, v2

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    const/16 v6, 0x3a

    .line 35
    .line 36
    const/4 v7, -0x1

    .line 37
    const/4 v8, 0x1

    .line 38
    if-ge v4, v5, :cond_0

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/16 v9, 0x61

    .line 47
    .line 48
    invoke-static {v4, v9}, Lkotlin/jvm/internal/h;->h(II)I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/16 v11, 0x5a

    .line 53
    .line 54
    const/16 v14, 0x7a

    .line 55
    .line 56
    const/16 v15, 0x41

    .line 57
    .line 58
    if-ltz v10, :cond_1

    .line 59
    .line 60
    invoke-static {v4, v14}, Lkotlin/jvm/internal/h;->h(II)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-lez v10, :cond_2

    .line 65
    .line 66
    :cond_1
    invoke-static {v4, v15}, Lkotlin/jvm/internal/h;->h(II)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-ltz v10, :cond_c

    .line 71
    .line 72
    invoke-static {v4, v11}, Lkotlin/jvm/internal/h;->h(II)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-lez v4, :cond_2

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_2
    move v4, v2

    .line 80
    :goto_0
    add-int/2addr v4, v8

    .line 81
    if-ge v4, v13, :cond_c

    .line 82
    .line 83
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-le v9, v10, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-lt v14, v10, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    :goto_1
    if-le v15, v10, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    if-lt v11, v10, :cond_6

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    :goto_2
    const/16 v9, 0x30

    .line 100
    .line 101
    if-le v9, v10, :cond_7

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    const/16 v9, 0x39

    .line 105
    .line 106
    if-lt v9, v10, :cond_8

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_8
    :goto_3
    const/16 v9, 0x2b

    .line 110
    .line 111
    if-ne v10, v9, :cond_9

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_9
    const/16 v9, 0x2d

    .line 115
    .line 116
    if-ne v10, v9, :cond_a

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_a
    const/16 v9, 0x2e

    .line 120
    .line 121
    if-ne v10, v9, :cond_b

    .line 122
    .line 123
    :goto_4
    const/16 v9, 0x61

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_b
    if-ne v10, v6, :cond_c

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_c
    :goto_5
    const/4 v4, -0x1

    .line 130
    :goto_6
    const-string v14, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 131
    .line 132
    if-eq v4, v7, :cond_f

    .line 133
    .line 134
    const-string v6, "https:"

    .line 135
    .line 136
    invoke-static {v12, v6, v8, v2}, Lmc/j;->E(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_d

    .line 141
    .line 142
    const-string v3, "https"

    .line 143
    .line 144
    iput-object v3, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x6

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_d
    const-string v6, "http:"

    .line 150
    .line 151
    invoke-static {v12, v6, v8, v2}, Lmc/j;->E(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_e

    .line 156
    .line 157
    const-string v3, "http"

    .line 158
    .line 159
    iput-object v3, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x5

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v5, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 169
    .line 170
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v3, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, "\'"

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v1

    .line 196
    :cond_f
    if-eqz v1, :cond_3a

    .line 197
    .line 198
    iget-object v3, v1, Lrc/r;->b:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v3, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 201
    .line 202
    :goto_7
    const/4 v3, 0x0

    .line 203
    move v4, v2

    .line 204
    :goto_8
    const/16 v6, 0x5c

    .line 205
    .line 206
    const/16 v9, 0x2f

    .line 207
    .line 208
    if-ge v4, v13, :cond_11

    .line 209
    .line 210
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-eq v10, v6, :cond_10

    .line 215
    .line 216
    if-ne v10, v9, :cond_11

    .line 217
    .line 218
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 219
    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_11
    iget-object v15, v0, Lrc/r$a;->f:Ljava/util/ArrayList;

    .line 224
    .line 225
    const/16 v4, 0x3f

    .line 226
    .line 227
    const/16 v10, 0x23

    .line 228
    .line 229
    if-ge v3, v5, :cond_15

    .line 230
    .line 231
    if-eqz v1, :cond_15

    .line 232
    .line 233
    iget-object v5, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v11, v1, Lrc/r;->b:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v11, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    xor-int/2addr v5, v8

    .line 242
    if-eqz v5, :cond_12

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lrc/r;->e()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iput-object v3, v0, Lrc/r$a;->b:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Lrc/r;->a()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iput-object v3, v0, Lrc/r$a;->c:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, v1, Lrc/r;->e:Ljava/lang/String;

    .line 258
    .line 259
    iput-object v3, v0, Lrc/r$a;->d:Ljava/lang/String;

    .line 260
    .line 261
    iget v3, v1, Lrc/r;->f:I

    .line 262
    .line 263
    iput v3, v0, Lrc/r$a;->e:I

    .line 264
    .line 265
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p1 .. p1}, Lrc/r;->c()Ljava/util/ArrayList;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    .line 274
    .line 275
    if-eq v2, v13, :cond_13

    .line 276
    .line 277
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-ne v3, v10, :cond_14

    .line 282
    .line 283
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lrc/r;->d()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lrc/r$a;->b(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_14
    const/4 v1, 0x1

    .line 291
    move/from16 v18, v13

    .line 292
    .line 293
    move-object/from16 v19, v15

    .line 294
    .line 295
    const/4 v13, 0x1

    .line 296
    goto/16 :goto_17

    .line 297
    .line 298
    :cond_15
    :goto_9
    add-int/2addr v2, v3

    .line 299
    const/4 v1, 0x0

    .line 300
    const/4 v3, 0x0

    .line 301
    move v11, v2

    .line 302
    const/16 v16, 0x0

    .line 303
    .line 304
    const/16 v17, 0x0

    .line 305
    .line 306
    :goto_a
    const-string v1, "@/\\?#"

    .line 307
    .line 308
    invoke-static {v11, v13, v12, v1}, Lsc/c;->e(IILjava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eq v8, v13, :cond_16

    .line 313
    .line 314
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    goto :goto_b

    .line 319
    :cond_16
    const/4 v1, -0x1

    .line 320
    :goto_b
    if-eq v1, v7, :cond_1b

    .line 321
    .line 322
    if-eq v1, v10, :cond_1b

    .line 323
    .line 324
    if-eq v1, v9, :cond_1b

    .line 325
    .line 326
    if-eq v1, v6, :cond_1b

    .line 327
    .line 328
    if-eq v1, v4, :cond_1b

    .line 329
    .line 330
    const/16 v2, 0x40

    .line 331
    .line 332
    if-eq v1, v2, :cond_17

    .line 333
    .line 334
    move/from16 v18, v13

    .line 335
    .line 336
    move-object/from16 v19, v15

    .line 337
    .line 338
    goto/16 :goto_d

    .line 339
    .line 340
    :cond_17
    const-string v10, "%40"

    .line 341
    .line 342
    if-nez v16, :cond_1a

    .line 343
    .line 344
    const/16 v1, 0x3a

    .line 345
    .line 346
    invoke-static {v12, v1, v11, v8}, Lsc/c;->f(Ljava/lang/String;CII)I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    sget-object v18, Lrc/r;->l:Lrc/r$b;

    .line 351
    .line 352
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 353
    .line 354
    const/4 v6, 0x1

    .line 355
    const/4 v7, 0x0

    .line 356
    const/16 v19, 0x0

    .line 357
    .line 358
    const/16 v20, 0x0

    .line 359
    .line 360
    const/16 v21, 0x0

    .line 361
    .line 362
    const/16 v22, 0xf0

    .line 363
    .line 364
    move-object/from16 v1, v18

    .line 365
    .line 366
    move-object/from16 v2, p2

    .line 367
    .line 368
    move v3, v11

    .line 369
    move v4, v9

    .line 370
    move v11, v8

    .line 371
    move/from16 v8, v19

    .line 372
    .line 373
    move/from16 v23, v9

    .line 374
    .line 375
    move/from16 v9, v20

    .line 376
    .line 377
    move-object/from16 v24, v10

    .line 378
    .line 379
    move-object/from16 v10, v21

    .line 380
    .line 381
    move-object/from16 v19, v15

    .line 382
    .line 383
    move v15, v11

    .line 384
    move/from16 v11, v22

    .line 385
    .line 386
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    if-eqz v17, :cond_18

    .line 391
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    iget-object v3, v0, Lrc/r$a;->b:Ljava/lang/String;

    .line 398
    .line 399
    move-object/from16 v4, v24

    .line 400
    .line 401
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    :cond_18
    iput-object v1, v0, Lrc/r$a;->b:Ljava/lang/String;

    .line 406
    .line 407
    move/from16 v1, v23

    .line 408
    .line 409
    if-eq v1, v15, :cond_19

    .line 410
    .line 411
    add-int/lit8 v3, v1, 0x1

    .line 412
    .line 413
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 414
    .line 415
    const/4 v6, 0x1

    .line 416
    const/4 v7, 0x0

    .line 417
    const/4 v8, 0x0

    .line 418
    const/4 v9, 0x0

    .line 419
    const/4 v10, 0x0

    .line 420
    const/16 v11, 0xf0

    .line 421
    .line 422
    move-object/from16 v1, v18

    .line 423
    .line 424
    move-object/from16 v2, p2

    .line 425
    .line 426
    move v4, v15

    .line 427
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    iput-object v1, v0, Lrc/r$a;->c:Ljava/lang/String;

    .line 432
    .line 433
    const/16 v16, 0x1

    .line 434
    .line 435
    :cond_19
    const/16 v17, 0x1

    .line 436
    .line 437
    move/from16 v18, v13

    .line 438
    .line 439
    goto :goto_c

    .line 440
    :cond_1a
    move-object v4, v10

    .line 441
    move-object/from16 v19, v15

    .line 442
    .line 443
    move v15, v8

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    iget-object v1, v0, Lrc/r$a;->c:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 458
    .line 459
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 460
    .line 461
    const/4 v6, 0x1

    .line 462
    const/4 v7, 0x0

    .line 463
    const/4 v8, 0x0

    .line 464
    const/4 v9, 0x0

    .line 465
    const/16 v18, 0x0

    .line 466
    .line 467
    const/16 v20, 0xf0

    .line 468
    .line 469
    move-object/from16 v2, p2

    .line 470
    .line 471
    move v3, v11

    .line 472
    move v4, v15

    .line 473
    move-object v11, v10

    .line 474
    move-object/from16 v10, v18

    .line 475
    .line 476
    move/from16 v18, v13

    .line 477
    .line 478
    move-object v13, v11

    .line 479
    move/from16 v11, v20

    .line 480
    .line 481
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    iput-object v1, v0, Lrc/r$a;->c:Ljava/lang/String;

    .line 493
    .line 494
    :goto_c
    add-int/lit8 v11, v15, 0x1

    .line 495
    .line 496
    :goto_d
    const/16 v4, 0x3f

    .line 497
    .line 498
    const/16 v9, 0x2f

    .line 499
    .line 500
    const/16 v6, 0x5c

    .line 501
    .line 502
    const/4 v7, -0x1

    .line 503
    const/16 v10, 0x23

    .line 504
    .line 505
    move/from16 v13, v18

    .line 506
    .line 507
    move-object/from16 v15, v19

    .line 508
    .line 509
    goto/16 :goto_a

    .line 510
    .line 511
    :cond_1b
    move/from16 v18, v13

    .line 512
    .line 513
    move-object/from16 v19, v15

    .line 514
    .line 515
    move v15, v8

    .line 516
    move v8, v11

    .line 517
    :goto_e
    if-ge v8, v15, :cond_1f

    .line 518
    .line 519
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    const/16 v2, 0x3a

    .line 524
    .line 525
    if-eq v1, v2, :cond_1e

    .line 526
    .line 527
    const/16 v2, 0x5b

    .line 528
    .line 529
    if-eq v1, v2, :cond_1c

    .line 530
    .line 531
    goto :goto_f

    .line 532
    :cond_1c
    add-int/lit8 v8, v8, 0x1

    .line 533
    .line 534
    if-ge v8, v15, :cond_1d

    .line 535
    .line 536
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    const/16 v2, 0x5d

    .line 541
    .line 542
    if-ne v1, v2, :cond_1c

    .line 543
    .line 544
    :cond_1d
    :goto_f
    add-int/lit8 v8, v8, 0x1

    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_1e
    move v13, v8

    .line 548
    goto :goto_10

    .line 549
    :cond_1f
    move v13, v15

    .line 550
    :goto_10
    add-int/lit8 v10, v13, 0x1

    .line 551
    .line 552
    const/16 v7, 0x22

    .line 553
    .line 554
    if-ge v10, v15, :cond_24

    .line 555
    .line 556
    sget-object v7, Lrc/r;->l:Lrc/r$b;

    .line 557
    .line 558
    const/4 v5, 0x0

    .line 559
    const/4 v6, 0x4

    .line 560
    move-object v1, v7

    .line 561
    move-object/from16 v2, p2

    .line 562
    .line 563
    move v3, v11

    .line 564
    move v4, v13

    .line 565
    invoke-static/range {v1 .. v6}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-static {v1}, Lb8/f;->l0(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    iput-object v1, v0, Lrc/r$a;->d:Ljava/lang/String;

    .line 574
    .line 575
    :try_start_0
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    .line 577
    const/4 v6, 0x0

    .line 578
    const/4 v8, 0x0

    .line 579
    const/4 v9, 0x0

    .line 580
    const/16 v16, 0x0

    .line 581
    .line 582
    const/16 v17, 0x0

    .line 583
    .line 584
    const/16 v20, 0xf8

    .line 585
    .line 586
    const/4 v4, 0x1

    .line 587
    move-object v1, v7

    .line 588
    move-object/from16 v2, p2

    .line 589
    .line 590
    move v3, v10

    .line 591
    const/4 v7, 0x1

    .line 592
    move v4, v15

    .line 593
    move v7, v8

    .line 594
    move v8, v9

    .line 595
    move/from16 v9, v16

    .line 596
    .line 597
    move/from16 v25, v10

    .line 598
    .line 599
    move-object/from16 v10, v17

    .line 600
    .line 601
    move/from16 p1, v11

    .line 602
    .line 603
    move/from16 v11, v20

    .line 604
    .line 605
    :try_start_1
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 613
    const/4 v2, 0x1

    .line 614
    if-le v2, v1, :cond_20

    .line 615
    .line 616
    goto :goto_11

    .line 617
    :cond_20
    const v3, 0xffff

    .line 618
    .line 619
    .line 620
    if-lt v3, v1, :cond_21

    .line 621
    .line 622
    const/4 v4, 0x1

    .line 623
    goto :goto_13

    .line 624
    :cond_21
    :goto_11
    const/4 v4, 0x1

    .line 625
    goto :goto_12

    .line 626
    :catch_0
    const/4 v2, 0x1

    .line 627
    goto :goto_11

    .line 628
    :catch_1
    move/from16 v25, v10

    .line 629
    .line 630
    move/from16 p1, v11

    .line 631
    .line 632
    goto :goto_11

    .line 633
    :goto_12
    const/4 v1, -0x1

    .line 634
    :goto_13
    iput v1, v0, Lrc/r$a;->e:I

    .line 635
    .line 636
    const/4 v2, -0x1

    .line 637
    if-eq v1, v2, :cond_22

    .line 638
    .line 639
    const/4 v1, 0x1

    .line 640
    goto :goto_14

    .line 641
    :cond_22
    const/4 v1, 0x0

    .line 642
    :goto_14
    if-eqz v1, :cond_23

    .line 643
    .line 644
    const/16 v7, 0x22

    .line 645
    .line 646
    move v1, v4

    .line 647
    goto :goto_15

    .line 648
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v2, "Invalid URL port: \""

    .line 651
    .line 652
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    move/from16 v13, v25

    .line 656
    .line 657
    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-static {v2, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const/16 v2, 0x22

    .line 668
    .line 669
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 677
    .line 678
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    throw v2

    .line 686
    :cond_24
    move/from16 p1, v11

    .line 687
    .line 688
    const/4 v8, 0x1

    .line 689
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 690
    .line 691
    const/4 v5, 0x0

    .line 692
    const/4 v6, 0x4

    .line 693
    move-object/from16 v2, p2

    .line 694
    .line 695
    move/from16 v3, p1

    .line 696
    .line 697
    move v4, v13

    .line 698
    invoke-static/range {v1 .. v6}, Lrc/r$b;->d(Lrc/r$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    invoke-static {v1}, Lb8/f;->l0(Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    iput-object v1, v0, Lrc/r$a;->d:Ljava/lang/String;

    .line 707
    .line 708
    iget-object v1, v0, Lrc/r$a;->a:Ljava/lang/String;

    .line 709
    .line 710
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    invoke-static {v1}, Lrc/r$b;->b(Ljava/lang/String;)I

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    iput v1, v0, Lrc/r$a;->e:I

    .line 718
    .line 719
    const/4 v1, 0x1

    .line 720
    :goto_15
    iget-object v2, v0, Lrc/r$a;->d:Ljava/lang/String;

    .line 721
    .line 722
    if-eqz v2, :cond_25

    .line 723
    .line 724
    const/4 v2, 0x1

    .line 725
    goto :goto_16

    .line 726
    :cond_25
    const/4 v2, 0x0

    .line 727
    :goto_16
    if-eqz v2, :cond_39

    .line 728
    .line 729
    move v13, v1

    .line 730
    move v2, v15

    .line 731
    :goto_17
    const-string v1, "?#"

    .line 732
    .line 733
    move/from16 v14, v18

    .line 734
    .line 735
    invoke-static {v2, v14, v12, v1}, Lsc/c;->e(IILjava/lang/String;Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    move-result v15

    .line 739
    if-ne v2, v15, :cond_26

    .line 740
    .line 741
    goto/16 :goto_25

    .line 742
    .line 743
    :cond_26
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    const-string v11, ""

    .line 748
    .line 749
    const/16 v3, 0x2f

    .line 750
    .line 751
    if-eq v1, v3, :cond_28

    .line 752
    .line 753
    const/16 v3, 0x5c

    .line 754
    .line 755
    if-ne v1, v3, :cond_27

    .line 756
    .line 757
    goto :goto_18

    .line 758
    :cond_27
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    sub-int/2addr v1, v13

    .line 763
    move-object/from16 v10, v19

    .line 764
    .line 765
    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    goto :goto_19

    .line 769
    :cond_28
    :goto_18
    move-object/from16 v10, v19

    .line 770
    .line 771
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    add-int/lit8 v2, v2, 0x1

    .line 778
    .line 779
    :goto_19
    move v3, v2

    .line 780
    :goto_1a
    if-ge v3, v15, :cond_36

    .line 781
    .line 782
    const-string v1, "/\\"

    .line 783
    .line 784
    invoke-static {v3, v15, v12, v1}, Lsc/c;->e(IILjava/lang/String;Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    move-result v9

    .line 788
    if-ge v9, v15, :cond_29

    .line 789
    .line 790
    const/4 v1, 0x1

    .line 791
    const/16 v16, 0x1

    .line 792
    .line 793
    goto :goto_1b

    .line 794
    :cond_29
    const/4 v1, 0x0

    .line 795
    const/16 v16, 0x0

    .line 796
    .line 797
    :goto_1b
    const/4 v6, 0x1

    .line 798
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 799
    .line 800
    const-string v5, " \"<>^`{}|/\\?#"

    .line 801
    .line 802
    const/4 v7, 0x0

    .line 803
    const/4 v8, 0x0

    .line 804
    const/16 v17, 0x0

    .line 805
    .line 806
    const/16 v18, 0x0

    .line 807
    .line 808
    const/16 v19, 0xf0

    .line 809
    .line 810
    move-object/from16 v2, p2

    .line 811
    .line 812
    move v4, v9

    .line 813
    move/from16 v20, v9

    .line 814
    .line 815
    move/from16 v9, v17

    .line 816
    .line 817
    move-object/from16 p1, v10

    .line 818
    .line 819
    move-object/from16 v10, v18

    .line 820
    .line 821
    move-object v0, v11

    .line 822
    move/from16 v11, v19

    .line 823
    .line 824
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    const-string v2, "."

    .line 829
    .line 830
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    if-nez v2, :cond_2b

    .line 835
    .line 836
    const-string v2, "%2e"

    .line 837
    .line 838
    invoke-static {v1, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    if-eqz v2, :cond_2a

    .line 843
    .line 844
    goto :goto_1c

    .line 845
    :cond_2a
    const/4 v2, 0x0

    .line 846
    goto :goto_1d

    .line 847
    :cond_2b
    :goto_1c
    const/4 v2, 0x1

    .line 848
    :goto_1d
    if-eqz v2, :cond_2c

    .line 849
    .line 850
    move-object/from16 v2, p1

    .line 851
    .line 852
    goto/16 :goto_23

    .line 853
    .line 854
    :cond_2c
    const-string v2, ".."

    .line 855
    .line 856
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    if-nez v2, :cond_2e

    .line 861
    .line 862
    const-string v2, "%2e."

    .line 863
    .line 864
    invoke-static {v1, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    if-nez v2, :cond_2e

    .line 869
    .line 870
    const-string v2, ".%2e"

    .line 871
    .line 872
    invoke-static {v1, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    if-nez v2, :cond_2e

    .line 877
    .line 878
    const-string v2, "%2e%2e"

    .line 879
    .line 880
    invoke-static {v1, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 881
    .line 882
    .line 883
    move-result v2

    .line 884
    if-eqz v2, :cond_2d

    .line 885
    .line 886
    goto :goto_1e

    .line 887
    :cond_2d
    const/4 v2, 0x0

    .line 888
    goto :goto_1f

    .line 889
    :cond_2e
    :goto_1e
    const/4 v2, 0x1

    .line 890
    :goto_1f
    if-eqz v2, :cond_31

    .line 891
    .line 892
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    sub-int/2addr v1, v13

    .line 897
    move-object/from16 v2, p1

    .line 898
    .line 899
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    check-cast v1, Ljava/lang/String;

    .line 904
    .line 905
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 906
    .line 907
    .line 908
    move-result v1

    .line 909
    if-nez v1, :cond_2f

    .line 910
    .line 911
    const/4 v1, 0x1

    .line 912
    goto :goto_20

    .line 913
    :cond_2f
    const/4 v1, 0x0

    .line 914
    :goto_20
    if-eqz v1, :cond_30

    .line 915
    .line 916
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 917
    .line 918
    .line 919
    move-result v1

    .line 920
    xor-int/2addr v1, v13

    .line 921
    if-eqz v1, :cond_30

    .line 922
    .line 923
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    sub-int/2addr v1, v13

    .line 928
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    goto :goto_23

    .line 932
    :cond_30
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    goto :goto_23

    .line 936
    :cond_31
    move-object/from16 v2, p1

    .line 937
    .line 938
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 939
    .line 940
    .line 941
    move-result v3

    .line 942
    sub-int/2addr v3, v13

    .line 943
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    check-cast v3, Ljava/lang/CharSequence;

    .line 948
    .line 949
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 950
    .line 951
    .line 952
    move-result v3

    .line 953
    if-nez v3, :cond_32

    .line 954
    .line 955
    const/4 v3, 0x1

    .line 956
    goto :goto_21

    .line 957
    :cond_32
    const/4 v3, 0x0

    .line 958
    :goto_21
    if-eqz v3, :cond_33

    .line 959
    .line 960
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    sub-int/2addr v3, v13

    .line 965
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    goto :goto_22

    .line 969
    :cond_33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    :goto_22
    if-eqz v16, :cond_34

    .line 973
    .line 974
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    :cond_34
    :goto_23
    if-eqz v16, :cond_35

    .line 978
    .line 979
    add-int/lit8 v9, v20, 0x1

    .line 980
    .line 981
    move v3, v9

    .line 982
    goto :goto_24

    .line 983
    :cond_35
    move/from16 v3, v20

    .line 984
    .line 985
    :goto_24
    move-object v11, v0

    .line 986
    move-object v10, v2

    .line 987
    move-object/from16 v0, p0

    .line 988
    .line 989
    goto/16 :goto_1a

    .line 990
    .line 991
    :cond_36
    :goto_25
    if-ge v15, v14, :cond_37

    .line 992
    .line 993
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    const/16 v1, 0x3f

    .line 998
    .line 999
    if-ne v0, v1, :cond_37

    .line 1000
    .line 1001
    const/16 v0, 0x23

    .line 1002
    .line 1003
    invoke-static {v12, v0, v15, v14}, Lsc/c;->f(Ljava/lang/String;CII)I

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 1008
    .line 1009
    add-int/lit8 v3, v15, 0x1

    .line 1010
    .line 1011
    const-string v5, " \"\'<>#"

    .line 1012
    .line 1013
    const/4 v6, 0x1

    .line 1014
    const/4 v7, 0x0

    .line 1015
    const/4 v8, 0x1

    .line 1016
    const/4 v9, 0x0

    .line 1017
    const/4 v10, 0x0

    .line 1018
    const/16 v11, 0xd0

    .line 1019
    .line 1020
    move-object/from16 v2, p2

    .line 1021
    .line 1022
    move v4, v0

    .line 1023
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    invoke-static {v1}, Lrc/r$b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    move-object/from16 v13, p0

    .line 1032
    .line 1033
    iput-object v1, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 1034
    .line 1035
    move v15, v0

    .line 1036
    goto :goto_26

    .line 1037
    :cond_37
    move-object/from16 v13, p0

    .line 1038
    .line 1039
    :goto_26
    if-ge v15, v14, :cond_38

    .line 1040
    .line 1041
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    .line 1042
    .line 1043
    .line 1044
    move-result v0

    .line 1045
    const/16 v1, 0x23

    .line 1046
    .line 1047
    if-ne v0, v1, :cond_38

    .line 1048
    .line 1049
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 1050
    .line 1051
    add-int/lit8 v3, v15, 0x1

    .line 1052
    .line 1053
    const-string v5, ""

    .line 1054
    .line 1055
    const/4 v6, 0x1

    .line 1056
    const/4 v7, 0x0

    .line 1057
    const/4 v8, 0x0

    .line 1058
    const/4 v9, 0x1

    .line 1059
    const/4 v10, 0x0

    .line 1060
    const/16 v11, 0xb0

    .line 1061
    .line 1062
    move-object/from16 v2, p2

    .line 1063
    .line 1064
    move v4, v14

    .line 1065
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    iput-object v0, v13, Lrc/r$a;->h:Ljava/lang/String;

    .line 1070
    .line 1071
    :cond_38
    return-void

    .line 1072
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    const-string v1, "Invalid URL host: \""

    .line 1075
    .line 1076
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    move/from16 v2, p1

    .line 1080
    .line 1081
    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    invoke-static {v1, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1099
    .line 1100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    throw v1

    .line 1108
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1109
    .line 1110
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    .line 1111
    .line 1112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lrc/r$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "://"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "//"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lrc/r$a;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_1
    const/16 v4, 0x3a

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lrc/r$a;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_2
    if-eqz v1, :cond_6

    .line 50
    .line 51
    :cond_3
    iget-object v1, p0, Lrc/r$a;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lrc/r$a;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-lez v1, :cond_4

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/4 v3, 0x0

    .line 66
    :goto_3
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lrc/r$a;->c:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_5
    const/16 v1, 0x40

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_6
    iget-object v1, p0, Lrc/r$a;->d:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-static {v1, v4}, Lmc/n;->H(Ljava/lang/CharSequence;C)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    const/16 v1, 0x5b

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lrc/r$a;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const/16 v1, 0x5d

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    iget-object v1, p0, Lrc/r$a;->d:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_8
    :goto_4
    iget v1, p0, Lrc/r$a;->e:I

    .line 113
    .line 114
    const/4 v3, -0x1

    .line 115
    if-ne v1, v3, :cond_9

    .line 116
    .line 117
    iget-object v5, p0, Lrc/r$a;->a:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v5, :cond_c

    .line 120
    .line 121
    :cond_9
    if-eq v1, v3, :cond_a

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_a
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 125
    .line 126
    iget-object v3, p0, Lrc/r$a;->a:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Lrc/r$b;->b(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    :goto_5
    iget-object v3, p0, Lrc/r$a;->a:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v3, :cond_b

    .line 141
    .line 142
    sget-object v5, Lrc/r;->l:Lrc/r$b;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v3}, Lrc/r$b;->b(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eq v1, v3, :cond_c

    .line 152
    .line 153
    :cond_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :cond_c
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 160
    .line 161
    iget-object v3, p0, Lrc/r$a;->f:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const-string v1, "$this$toPathString"

    .line 167
    .line 168
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    :goto_6
    if-ge v2, v1, :cond_d

    .line 176
    .line 177
    const/16 v4, 0x2f

    .line 178
    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_d
    iget-object v1, p0, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 195
    .line 196
    if-eqz v1, :cond_e

    .line 197
    .line 198
    const/16 v1, 0x3f

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    sget-object v1, Lrc/r;->l:Lrc/r$b;

    .line 204
    .line 205
    iget-object v2, p0, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v2}, Lrc/r$b;->f(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 214
    .line 215
    .line 216
    :cond_e
    iget-object v1, p0, Lrc/r$a;->h:Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v1, :cond_f

    .line 219
    .line 220
    const/16 v1, 0x23

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lrc/r$a;->h:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 235
    .line 236
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-object v0
.end method
