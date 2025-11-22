.class public final Lza/o$e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/o;-><init>(Lp4/g7;Lza/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/f;",
        "Lma/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/o;


# direct methods
.method public constructor <init>(Lza/o;)V
    .locals 0

    iput-object p1, p0, Lza/o$e;->a:Lza/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Llb/f;

    .line 4
    .line 5
    const-string v1, "name"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p0

    .line 11
    .line 12
    iget-object v2, v1, Lza/o$e;->a:Lza/o;

    .line 13
    .line 14
    iget-object v3, v2, Lza/o;->c:Lza/o;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v2, v3, Lza/o;->g:Lbc/h;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lma/l0;

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    iget-object v3, v2, Lza/o;->e:Lbc/i;

    .line 29
    .line 30
    invoke-interface {v3}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lza/b;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Lza/b;->c(Llb/f;)Lcb/n;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_b

    .line 42
    .line 43
    invoke-interface {v0}, Lcb/n;->D()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_b

    .line 48
    .line 49
    invoke-interface {v0}, Lcb/r;->isFinal()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x1

    .line 54
    xor-int/lit8 v9, v4, 0x1

    .line 55
    .line 56
    iget-object v4, v2, Lza/o;->b:Lp4/g7;

    .line 57
    .line 58
    invoke-static {v4, v0}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v2}, Lza/o;->q()Lma/j;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-interface {v0}, Lcb/r;->getVisibility()Lma/e1;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static {v8}, Lva/c0;->a(Lma/e1;)Lma/q;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-interface {v0}, Lcb/s;->getName()Llb/f;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    iget-object v11, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v11, Lya/c;

    .line 81
    .line 82
    iget-object v11, v11, Lya/c;->j:Lbb/b;

    .line 83
    .line 84
    invoke-interface {v11, v0}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-interface {v0}, Lcb/r;->isFinal()Z

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const/4 v13, 0x0

    .line 93
    if-eqz v12, :cond_1

    .line 94
    .line 95
    invoke-interface {v0}, Lcb/r;->f()Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-eqz v12, :cond_1

    .line 100
    .line 101
    const/4 v12, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v12, 0x0

    .line 104
    :goto_0
    invoke-static/range {v6 .. v12}, Lxa/f;->R0(Lma/j;Lya/e;Lma/q;ZLlb/f;Lbb/a;Z)Lxa/f;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6, v3, v3, v3, v3}, Lpa/l0;->O0(Lpa/m0;Lpa/n0;Lma/s;Lma/s;)V

    .line 109
    .line 110
    .line 111
    iget-object v7, v4, Lp4/g7;->e:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v7, Lab/d;

    .line 114
    .line 115
    invoke-interface {v0}, Lcb/n;->getType()Lcb/w;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const/4 v9, 0x2

    .line 120
    const/4 v10, 0x7

    .line 121
    invoke-static {v9, v13, v13, v3, v10}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v7, v8, v9}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    invoke-static {v15}, Lja/k;->G(Lcc/e0;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_2

    .line 134
    .line 135
    invoke-static {v15}, Lja/k;->I(Lcc/e0;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_4

    .line 140
    .line 141
    :cond_2
    invoke-interface {v0}, Lcb/r;->isFinal()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_3

    .line 146
    .line 147
    invoke-interface {v0}, Lcb/r;->f()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_3

    .line 152
    .line 153
    const/4 v7, 0x1

    .line 154
    goto :goto_1

    .line 155
    :cond_3
    const/4 v7, 0x0

    .line 156
    :goto_1
    if-eqz v7, :cond_4

    .line 157
    .line 158
    invoke-interface {v0}, Lcb/n;->N()V

    .line 159
    .line 160
    .line 161
    :cond_4
    sget-object v19, Lm9/v;->a:Lm9/v;

    .line 162
    .line 163
    invoke-virtual {v2}, Lza/o;->p()Lma/o0;

    .line 164
    .line 165
    .line 166
    move-result-object v17

    .line 167
    const/16 v18, 0x0

    .line 168
    .line 169
    move-object v14, v6

    .line 170
    move-object/from16 v16, v19

    .line 171
    .line 172
    invoke-virtual/range {v14 .. v19}, Lpa/l0;->Q0(Lcc/e0;Ljava/util/List;Lma/o0;Lpa/o0;Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Lpa/w0;->getType()Lcc/e0;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    if-eqz v7, :cond_a

    .line 180
    .line 181
    sget v8, Lob/i;->a:I

    .line 182
    .line 183
    iget-boolean v8, v6, Lpa/x0;->f:Z

    .line 184
    .line 185
    if-nez v8, :cond_7

    .line 186
    .line 187
    invoke-static {v7}, Lc5/v;->y(Lcc/e0;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_5

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    invoke-static {v7}, Lcc/q1;->b(Lcc/e0;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_6

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_6
    invoke-static {v6}, Lsb/b;->e(Lma/j;)Lja/k;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-static {v7}, Lja/k;->G(Lcc/e0;)Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-nez v9, :cond_8

    .line 210
    .line 211
    sget-object v9, Ldc/d;->a:Ldc/m;

    .line 212
    .line 213
    invoke-virtual {v8}, Lja/k;->u()Lcc/m0;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v9, v10, v7}, Ldc/m;->c(Lcc/e0;Lcc/e0;)Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_8

    .line 222
    .line 223
    const-string v10, "Number"

    .line 224
    .line 225
    invoke-virtual {v8, v10}, Lja/k;->k(Ljava/lang/String;)Lma/e;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-interface {v10}, Lma/e;->q()Lcc/m0;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    invoke-virtual {v9, v10, v7}, Ldc/m;->c(Lcc/e0;Lcc/e0;)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-nez v10, :cond_8

    .line 238
    .line 239
    invoke-virtual {v8}, Lja/k;->f()Lcc/m0;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v9, v8, v7}, Ldc/m;->c(Lcc/e0;Lcc/e0;)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-nez v8, :cond_8

    .line 248
    .line 249
    invoke-static {v7}, Lja/s;->a(Lcc/e0;)Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_7

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_7
    :goto_2
    const/4 v5, 0x0

    .line 257
    :cond_8
    :goto_3
    if-eqz v5, :cond_9

    .line 258
    .line 259
    new-instance v5, Lza/q;

    .line 260
    .line 261
    invoke-direct {v5, v2, v0, v6}, Lza/q;-><init>(Lza/o;Lcb/n;Lxa/f;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, v3, v5}, Lpa/x0;->E0(Lbc/j;Lx9/a;)V

    .line 265
    .line 266
    .line 267
    :cond_9
    iget-object v0, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lya/c;

    .line 270
    .line 271
    iget-object v0, v0, Lya/c;->g:Lwa/h;

    .line 272
    .line 273
    check-cast v0, Lwa/h$a;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    move-object v0, v6

    .line 279
    goto :goto_4

    .line 280
    :cond_a
    const/16 v0, 0x40

    .line 281
    .line 282
    invoke-static {v0}, Lob/i;->a(I)V

    .line 283
    .line 284
    .line 285
    throw v3

    .line 286
    :cond_b
    move-object v0, v3

    .line 287
    :goto_4
    return-object v0
.end method
