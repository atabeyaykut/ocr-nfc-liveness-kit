.class public final Lk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a$a;
    }
.end annotation


# instance fields
.field public final a:Le/f;

.field public final b:Lp/m;

.field public final c:Ln/c;


# direct methods
.method public constructor <init>(Le/f;Lp/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/a;->a:Le/f;

    iput-object p2, p0, Lk/a;->b:Lp/m;

    new-instance v0, Ln/c;

    invoke-direct {v0, p1, p2}, Ln/c;-><init>(Le/f;Lp/m;)V

    iput-object v0, p0, Lk/a;->c:Ln/c;

    return-void
.end method

.method public static final b(Lk/a;Lj/l;Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    instance-of v1, v0, Lk/b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lk/b;

    iget v2, v1, Lk/b;->m:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lk/b;->m:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lk/b;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lk/b;-><init>(Lk/a;Lp9/d;)V

    :goto_0
    iget-object v0, v1, Lk/b;->k:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v1, Lk/b;->m:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget v2, v1, Lk/b;->j:I

    iget-object v4, v1, Lk/b;->g:Le/b;

    iget-object v7, v1, Lk/b;->f:Lp/k;

    iget-object v8, v1, Lk/b;->e:Ljava/lang/Object;

    iget-object v9, v1, Lk/b;->d:Lp/g;

    iget-object v10, v1, Lk/b;->c:Le/a;

    iget-object v11, v1, Lk/b;->b:Lj/l;

    iget-object v12, v1, Lk/b;->a:Lk/a;

    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    move-object/from16 v16, v10

    move-object v10, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v9

    move v9, v2

    move-object v2, v12

    move-object v12, v3

    move-object/from16 v3, v17

    move-object/from16 v18, v8

    move-object v8, v4

    move-object/from16 v4, v18

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object/from16 v0, p1

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v10, v1

    move-object v11, v3

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    :goto_1
    iget-object v12, v2, Lk/a;->a:Le/f;

    .line 2
    iget-object v12, v1, Le/a;->e:Ljava/util/List;

    .line 3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    :goto_2
    if-ge v9, v13, :cond_4

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/g$a;

    invoke-interface {v15, v0, v7}, Lg/g$a;->a(Lj/l;Lp/k;)Lg/b;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4
    new-instance v12, Ll9/g;

    invoke-direct {v12, v15, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v9, v14

    goto :goto_2

    :cond_4
    move-object v12, v5

    :goto_3
    if-eqz v12, :cond_9

    .line 5
    iget-object v9, v12, Ll9/g;->a:Ljava/lang/Object;

    check-cast v9, Lg/g;

    iget-object v12, v12, Ll9/g;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    add-int/2addr v12, v6

    invoke-interface {v8}, Le/b;->g()V

    iput-object v2, v10, Lk/b;->a:Lk/a;

    iput-object v0, v10, Lk/b;->b:Lj/l;

    iput-object v1, v10, Lk/b;->c:Le/a;

    iput-object v3, v10, Lk/b;->d:Lp/g;

    iput-object v4, v10, Lk/b;->e:Ljava/lang/Object;

    iput-object v7, v10, Lk/b;->f:Lp/k;

    iput-object v8, v10, Lk/b;->g:Le/b;

    iput-object v9, v10, Lk/b;->h:Lg/g;

    iput v12, v10, Lk/b;->j:I

    iput v6, v10, Lk/b;->m:I

    invoke-interface {v9, v10}, Lg/g;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v11, :cond_5

    goto :goto_7

    :cond_5
    move-object/from16 v16, v11

    move-object v11, v0

    move-object v0, v9

    move v9, v12

    move-object/from16 v12, v16

    :goto_4
    check-cast v0, Lg/e;

    invoke-interface {v8}, Le/b;->b()V

    if-eqz v0, :cond_8

    new-instance v1, Lk/a$a;

    .line 6
    iget v2, v11, Lj/l;->c:I

    .line 7
    iget-object v3, v11, Lj/l;->a:Lg/l;

    instance-of v4, v3, Lg/k;

    if-eqz v4, :cond_6

    check-cast v3, Lg/k;

    goto :goto_5

    :cond_6
    move-object v3, v5

    :goto_5
    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    iget-object v5, v3, Lg/k;->c:Ljava/lang/String;

    :goto_6
    iget-object v3, v0, Lg/e;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, v0, Lg/e;->b:Z

    invoke-direct {v1, v3, v0, v2, v5}, Lk/a$a;-><init>(Landroid/graphics/drawable/Drawable;ZILjava/lang/String;)V

    move-object v11, v1

    :goto_7
    return-object v11

    :cond_8
    move-object v0, v11

    move-object v11, v12

    goto :goto_1

    :cond_9
    const-string v0, "Unable to create a decoder that supports: "

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final c(Lk/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v1, p5

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v2, v1, Lk/c;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lk/c;

    .line 16
    .line 17
    iget v3, v2, Lk/c;->l:I

    .line 18
    .line 19
    const/high16 v4, -0x80000000

    .line 20
    .line 21
    and-int v5, v3, v4

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    iput v3, v2, Lk/c;->l:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v2, Lk/c;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lk/c;-><init>(Lk/a;Lp9/d;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move-object v9, v2

    .line 35
    iget-object v1, v9, Lk/c;->j:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v10, Lq9/a;->a:Lq9/a;

    .line 38
    .line 39
    iget v2, v9, Lk/c;->l:I

    .line 40
    .line 41
    const/4 v11, 0x3

    .line 42
    const/4 v12, 0x2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    if-eq v2, v3, :cond_3

    .line 47
    .line 48
    if-eq v2, v12, :cond_2

    .line 49
    .line 50
    if-ne v2, v11, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    goto/16 :goto_c

    .line 57
    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    iget-object v2, v9, Lk/c;->e:Lkotlin/jvm/internal/v;

    .line 67
    .line 68
    iget-object v0, v9, Lk/c;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lkotlin/jvm/internal/v;

    .line 71
    .line 72
    iget-object v3, v9, Lk/c;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Le/b;

    .line 75
    .line 76
    iget-object v4, v9, Lk/c;->b:Lp/g;

    .line 77
    .line 78
    iget-object v5, v9, Lk/c;->a:Lk/a;

    .line 79
    .line 80
    :try_start_0
    invoke-static {v1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_3
    iget-object v0, v9, Lk/c;->h:Lkotlin/jvm/internal/v;

    .line 86
    .line 87
    iget-object v2, v9, Lk/c;->g:Lkotlin/jvm/internal/v;

    .line 88
    .line 89
    iget-object v3, v9, Lk/c;->f:Lkotlin/jvm/internal/v;

    .line 90
    .line 91
    iget-object v4, v9, Lk/c;->e:Lkotlin/jvm/internal/v;

    .line 92
    .line 93
    iget-object v5, v9, Lk/c;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, Le/b;

    .line 96
    .line 97
    iget-object v6, v9, Lk/c;->c:Ljava/lang/Object;

    .line 98
    .line 99
    iget-object v7, v9, Lk/c;->b:Lp/g;

    .line 100
    .line 101
    iget-object v8, v9, Lk/c;->a:Lk/a;

    .line 102
    .line 103
    :try_start_1
    invoke-static {v1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    move-object v13, v0

    .line 107
    move-object/from16 v21, v3

    .line 108
    .line 109
    move-object v14, v4

    .line 110
    move-object v12, v5

    .line 111
    move-object/from16 v23, v6

    .line 112
    .line 113
    move-object v0, v8

    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :catchall_0
    move-exception v0

    .line 117
    const/4 v3, 0x0

    .line 118
    goto/16 :goto_f

    .line 119
    .line 120
    :cond_4
    invoke-static {v1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance v14, Lkotlin/jvm/internal/v;

    .line 124
    .line 125
    invoke-direct {v14}, Lkotlin/jvm/internal/v;-><init>()V

    .line 126
    .line 127
    .line 128
    move-object/from16 v1, p3

    .line 129
    .line 130
    iput-object v1, v14, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 131
    .line 132
    new-instance v15, Lkotlin/jvm/internal/v;

    .line 133
    .line 134
    invoke-direct {v15}, Lkotlin/jvm/internal/v;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lk/a;->a:Le/f;

    .line 138
    .line 139
    invoke-interface {v1}, Le/f;->getComponents()Le/a;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, v15, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 144
    .line 145
    new-instance v7, Lkotlin/jvm/internal/v;

    .line 146
    .line 147
    invoke-direct {v7}, Lkotlin/jvm/internal/v;-><init>()V

    .line 148
    .line 149
    .line 150
    :try_start_2
    iget-object v1, v0, Lk/a;->b:Lp/m;

    .line 151
    .line 152
    iget-object v2, v14, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v2, Lp/k;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v2, v2, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    .line 160
    .line 161
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v5, 0x1a

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    if-lt v4, v5, :cond_5

    .line 167
    .line 168
    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-ne v2, v4, :cond_5

    .line 173
    .line 174
    const/4 v2, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    const/4 v2, 0x0

    .line 177
    :goto_1
    if-eqz v2, :cond_7

    .line 178
    .line 179
    iget-object v1, v1, Lp/m;->c:Lu/g;

    .line 180
    .line 181
    invoke-virtual {v1}, Lu/g;->b()Z

    .line 182
    .line 183
    .line 184
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    const/4 v1, 0x0

    .line 189
    goto :goto_3

    .line 190
    :cond_7
    :goto_2
    const/4 v1, 0x1

    .line 191
    :goto_3
    if-nez v1, :cond_8

    .line 192
    .line 193
    :try_start_3
    iget-object v1, v14, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Lp/k;

    .line 196
    .line 197
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 198
    .line 199
    invoke-static {v1, v2}, Lp/k;->a(Lp/k;Landroid/graphics/Bitmap$Config;)Lp/k;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iput-object v1, v14, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_8
    :goto_4
    :try_start_4
    iget-object v1, v8, Lp/g;->j:Ll9/g;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 210
    .line 211
    iget-object v2, v8, Lp/g;->k:Lg/g$a;

    .line 212
    .line 213
    if-nez v1, :cond_9

    .line 214
    .line 215
    if-eqz v2, :cond_c

    .line 216
    .line 217
    :cond_9
    :try_start_5
    iget-object v1, v15, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Le/a;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    iget-object v4, v1, Le/a;->a:Ljava/util/List;

    .line 225
    .line 226
    check-cast v4, Ljava/util/Collection;

    .line 227
    .line 228
    invoke-static {v4}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    iget-object v5, v1, Le/a;->b:Ljava/util/List;

    .line 233
    .line 234
    check-cast v5, Ljava/util/Collection;

    .line 235
    .line 236
    invoke-static {v5}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    iget-object v11, v1, Le/a;->c:Ljava/util/List;

    .line 241
    .line 242
    check-cast v11, Ljava/util/Collection;

    .line 243
    .line 244
    invoke-static {v11}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    iget-object v12, v1, Le/a;->d:Ljava/util/List;

    .line 249
    .line 250
    check-cast v12, Ljava/util/Collection;

    .line 251
    .line 252
    invoke-static {v12}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    iget-object v1, v1, Le/a;->e:Ljava/util/List;

    .line 257
    .line 258
    check-cast v1, Ljava/util/Collection;

    .line 259
    .line 260
    invoke-static {v1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v13, v8, Lp/g;->j:Ll9/g;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 265
    .line 266
    if-eqz v13, :cond_a

    .line 267
    .line 268
    :try_start_6
    invoke-virtual {v12, v6, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    if-eqz v2, :cond_b

    .line 272
    .line 273
    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 274
    .line 275
    .line 276
    :cond_b
    :try_start_7
    new-instance v2, Le/a;

    .line 277
    .line 278
    invoke-static {v4}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v19

    .line 282
    invoke-static {v5}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v20

    .line 286
    invoke-static {v11}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v21

    .line 290
    invoke-static {v12}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v22

    .line 294
    invoke-static {v1}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v23

    .line 298
    move-object/from16 v18, v2

    .line 299
    .line 300
    invoke-direct/range {v18 .. v23}, Le/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    iput-object v2, v15, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 304
    .line 305
    :cond_c
    iget-object v1, v15, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 306
    .line 307
    move-object v2, v1

    .line 308
    check-cast v2, Le/a;

    .line 309
    .line 310
    iget-object v1, v14, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 311
    .line 312
    move-object v5, v1

    .line 313
    check-cast v5, Lp/k;

    .line 314
    .line 315
    iput-object v0, v9, Lk/c;->a:Lk/a;

    .line 316
    .line 317
    iput-object v8, v9, Lk/c;->b:Lp/g;

    .line 318
    .line 319
    move-object/from16 v11, p2

    .line 320
    .line 321
    iput-object v11, v9, Lk/c;->c:Ljava/lang/Object;

    .line 322
    .line 323
    move-object/from16 v12, p4

    .line 324
    .line 325
    iput-object v12, v9, Lk/c;->d:Ljava/lang/Object;

    .line 326
    .line 327
    iput-object v14, v9, Lk/c;->e:Lkotlin/jvm/internal/v;

    .line 328
    .line 329
    iput-object v15, v9, Lk/c;->f:Lkotlin/jvm/internal/v;

    .line 330
    .line 331
    iput-object v7, v9, Lk/c;->g:Lkotlin/jvm/internal/v;

    .line 332
    .line 333
    iput-object v7, v9, Lk/c;->h:Lkotlin/jvm/internal/v;

    .line 334
    .line 335
    iput v3, v9, Lk/c;->l:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 336
    .line 337
    move-object/from16 v1, p0

    .line 338
    .line 339
    move-object/from16 v3, p1

    .line 340
    .line 341
    move-object/from16 v4, p2

    .line 342
    .line 343
    move-object/from16 v6, p4

    .line 344
    .line 345
    move-object v13, v7

    .line 346
    move-object v7, v9

    .line 347
    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lk/a;->d(Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 351
    if-ne v1, v10, :cond_d

    .line 352
    .line 353
    goto/16 :goto_e

    .line 354
    .line 355
    :cond_d
    move-object v7, v8

    .line 356
    move-object/from16 v23, v11

    .line 357
    .line 358
    move-object v2, v13

    .line 359
    move-object/from16 v21, v15

    .line 360
    .line 361
    :goto_5
    :try_start_9
    iput-object v1, v13, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 362
    .line 363
    iget-object v1, v2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 364
    .line 365
    move-object v3, v1

    .line 366
    check-cast v3, Lj/g;

    .line 367
    .line 368
    instance-of v4, v3, Lj/l;

    .line 369
    .line 370
    if-eqz v4, :cond_f

    .line 371
    .line 372
    iget-object v1, v7, Lp/g;->y:Lnc/y;

    .line 373
    .line 374
    new-instance v3, Lk/d;

    .line 375
    .line 376
    const/16 v26, 0x0

    .line 377
    .line 378
    move-object/from16 v18, v3

    .line 379
    .line 380
    move-object/from16 v19, v0

    .line 381
    .line 382
    move-object/from16 v20, v2

    .line 383
    .line 384
    move-object/from16 v22, v7

    .line 385
    .line 386
    move-object/from16 v24, v14

    .line 387
    .line 388
    move-object/from16 v25, v12

    .line 389
    .line 390
    invoke-direct/range {v18 .. v26}, Lk/d;-><init>(Lk/a;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lp/g;Ljava/lang/Object;Lkotlin/jvm/internal/v;Le/b;Lp9/d;)V

    .line 391
    .line 392
    .line 393
    iput-object v0, v9, Lk/c;->a:Lk/a;

    .line 394
    .line 395
    iput-object v7, v9, Lk/c;->b:Lp/g;

    .line 396
    .line 397
    iput-object v12, v9, Lk/c;->c:Ljava/lang/Object;

    .line 398
    .line 399
    iput-object v14, v9, Lk/c;->d:Ljava/lang/Object;

    .line 400
    .line 401
    iput-object v2, v9, Lk/c;->e:Lkotlin/jvm/internal/v;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    :try_start_a
    iput-object v4, v9, Lk/c;->f:Lkotlin/jvm/internal/v;

    .line 405
    .line 406
    iput-object v4, v9, Lk/c;->g:Lkotlin/jvm/internal/v;

    .line 407
    .line 408
    iput-object v4, v9, Lk/c;->h:Lkotlin/jvm/internal/v;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 409
    .line 410
    const/4 v4, 0x2

    .line 411
    :try_start_b
    iput v4, v9, Lk/c;->l:I

    .line 412
    .line 413
    invoke-static {v1, v3, v9}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    if-ne v1, v10, :cond_e

    .line 418
    .line 419
    goto/16 :goto_e

    .line 420
    .line 421
    :cond_e
    move-object v5, v0

    .line 422
    move-object v4, v7

    .line 423
    move-object v3, v12

    .line 424
    move-object v0, v14

    .line 425
    :goto_6
    check-cast v1, Lk/a$a;

    .line 426
    .line 427
    move-object v14, v0

    .line 428
    move-object/from16 v20, v3

    .line 429
    .line 430
    move-object v7, v4

    .line 431
    move-object/from16 v16, v5

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :catchall_2
    move-exception v0

    .line 435
    move-object v7, v2

    .line 436
    :goto_7
    const/4 v3, 0x0

    .line 437
    goto/16 :goto_12

    .line 438
    .line 439
    :cond_f
    instance-of v3, v3, Lj/f;

    .line 440
    .line 441
    if-eqz v3, :cond_19

    .line 442
    .line 443
    new-instance v3, Lk/a$a;

    .line 444
    .line 445
    move-object v4, v1

    .line 446
    check-cast v4, Lj/f;

    .line 447
    .line 448
    iget-object v4, v4, Lj/f;->a:Landroid/graphics/drawable/Drawable;

    .line 449
    .line 450
    move-object v5, v1

    .line 451
    check-cast v5, Lj/f;

    .line 452
    .line 453
    iget-boolean v5, v5, Lj/f;->b:Z

    .line 454
    .line 455
    check-cast v1, Lj/f;

    .line 456
    .line 457
    iget v1, v1, Lj/f;->c:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 458
    .line 459
    const/4 v6, 0x0

    .line 460
    :try_start_c
    invoke-direct {v3, v4, v5, v1, v6}, Lk/a$a;-><init>(Landroid/graphics/drawable/Drawable;ZILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 461
    .line 462
    .line 463
    move-object/from16 v16, v0

    .line 464
    .line 465
    move-object v1, v3

    .line 466
    move-object/from16 v20, v12

    .line 467
    .line 468
    :goto_8
    iget-object v0, v2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 469
    .line 470
    instance-of v2, v0, Lj/l;

    .line 471
    .line 472
    if-eqz v2, :cond_10

    .line 473
    .line 474
    move-object v4, v0

    .line 475
    check-cast v4, Lj/l;

    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_10
    const/4 v4, 0x0

    .line 479
    :goto_9
    if-nez v4, :cond_11

    .line 480
    .line 481
    goto :goto_a

    .line 482
    :cond_11
    iget-object v0, v4, Lj/l;->a:Lg/l;

    .line 483
    .line 484
    if-nez v0, :cond_12

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_12
    invoke-static {v0}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 488
    .line 489
    .line 490
    :goto_a
    iget-object v0, v14, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 491
    .line 492
    move-object/from16 v18, v0

    .line 493
    .line 494
    check-cast v18, Lp/k;

    .line 495
    .line 496
    const/4 v3, 0x0

    .line 497
    iput-object v3, v9, Lk/c;->a:Lk/a;

    .line 498
    .line 499
    iput-object v3, v9, Lk/c;->b:Lp/g;

    .line 500
    .line 501
    iput-object v3, v9, Lk/c;->c:Ljava/lang/Object;

    .line 502
    .line 503
    iput-object v3, v9, Lk/c;->d:Ljava/lang/Object;

    .line 504
    .line 505
    iput-object v3, v9, Lk/c;->e:Lkotlin/jvm/internal/v;

    .line 506
    .line 507
    iput-object v3, v9, Lk/c;->f:Lkotlin/jvm/internal/v;

    .line 508
    .line 509
    iput-object v3, v9, Lk/c;->g:Lkotlin/jvm/internal/v;

    .line 510
    .line 511
    iput-object v3, v9, Lk/c;->h:Lkotlin/jvm/internal/v;

    .line 512
    .line 513
    const/4 v0, 0x3

    .line 514
    iput v0, v9, Lk/c;->l:I

    .line 515
    .line 516
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    iget-object v0, v7, Lp/g;->l:Ljava/util/List;

    .line 520
    .line 521
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_13

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_13
    iget-object v2, v1, Lk/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 529
    .line 530
    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 531
    .line 532
    if-nez v2, :cond_14

    .line 533
    .line 534
    iget-boolean v2, v7, Lp/g;->p:Z

    .line 535
    .line 536
    if-nez v2, :cond_14

    .line 537
    .line 538
    goto :goto_b

    .line 539
    :cond_14
    new-instance v2, Lk/g;

    .line 540
    .line 541
    const/16 v22, 0x0

    .line 542
    .line 543
    move-object v15, v2

    .line 544
    move-object/from16 v17, v1

    .line 545
    .line 546
    move-object/from16 v19, v0

    .line 547
    .line 548
    move-object/from16 v21, v7

    .line 549
    .line 550
    invoke-direct/range {v15 .. v22}, Lk/g;-><init>(Lk/a;Lk/a$a;Lp/k;Ljava/util/List;Le/b;Lp/g;Lp9/d;)V

    .line 551
    .line 552
    .line 553
    iget-object v0, v7, Lp/g;->z:Lnc/y;

    .line 554
    .line 555
    invoke-static {v0, v2, v9}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    move-object v1, v0

    .line 560
    :goto_b
    if-ne v1, v10, :cond_15

    .line 561
    .line 562
    goto :goto_e

    .line 563
    :cond_15
    :goto_c
    move-object v10, v1

    .line 564
    check-cast v10, Lk/a$a;

    .line 565
    .line 566
    iget-object v0, v10, Lk/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 567
    .line 568
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 569
    .line 570
    if-eqz v1, :cond_16

    .line 571
    .line 572
    move-object v13, v0

    .line 573
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 574
    .line 575
    goto :goto_d

    .line 576
    :cond_16
    move-object v13, v3

    .line 577
    :goto_d
    if-nez v13, :cond_17

    .line 578
    .line 579
    goto :goto_e

    .line 580
    :cond_17
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    if-nez v0, :cond_18

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 588
    .line 589
    .line 590
    :goto_e
    return-object v10

    .line 591
    :catchall_3
    move-exception v0

    .line 592
    move-object v3, v6

    .line 593
    goto :goto_f

    .line 594
    :cond_19
    const/4 v3, 0x0

    .line 595
    :try_start_d
    new-instance v0, Lj7/p;

    .line 596
    .line 597
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 598
    .line 599
    .line 600
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 601
    :catchall_4
    move-exception v0

    .line 602
    :goto_f
    move-object v7, v2

    .line 603
    goto :goto_12

    .line 604
    :catchall_5
    move-exception v0

    .line 605
    :goto_10
    const/4 v3, 0x0

    .line 606
    goto :goto_11

    .line 607
    :catchall_6
    move-exception v0

    .line 608
    move-object v13, v7

    .line 609
    goto :goto_10

    .line 610
    :goto_11
    move-object v7, v13

    .line 611
    :goto_12
    iget-object v1, v7, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 612
    .line 613
    instance-of v2, v1, Lj/l;

    .line 614
    .line 615
    if-eqz v2, :cond_1a

    .line 616
    .line 617
    move-object v13, v1

    .line 618
    check-cast v13, Lj/l;

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_1a
    move-object v13, v3

    .line 622
    :goto_13
    if-eqz v13, :cond_1c

    .line 623
    .line 624
    iget-object v1, v13, Lj/l;->a:Lg/l;

    .line 625
    .line 626
    if-nez v1, :cond_1b

    .line 627
    .line 628
    goto :goto_14

    .line 629
    :cond_1b
    invoke-static {v1}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 630
    .line 631
    .line 632
    :cond_1c
    :goto_14
    throw v0
.end method


# virtual methods
.method public final a(Lk/i;Lp9/d;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v1, v10, Lk/a;->c:Ln/c;

    .line 8
    .line 9
    instance-of v2, v0, Lk/e;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lk/e;

    .line 15
    .line 16
    iget v3, v2, Lk/e;->e:I

    .line 17
    .line 18
    const/high16 v4, -0x80000000

    .line 19
    .line 20
    and-int v5, v3, v4

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    iput v3, v2, Lk/e;->e:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lk/e;

    .line 29
    .line 30
    invoke-direct {v2, v10, v0}, Lk/e;-><init>(Lk/a;Lp9/d;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v0, v2

    .line 34
    iget-object v2, v0, Lk/e;->c:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v12, Lq9/a;->a:Lq9/a;

    .line 37
    .line 38
    iget v3, v0, Lk/e;->e:I

    .line 39
    .line 40
    const/4 v13, 0x1

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    if-ne v3, v13, :cond_1

    .line 44
    .line 45
    iget-object v1, v0, Lk/e;->b:Lk/h$a;

    .line 46
    .line 47
    iget-object v3, v0, Lk/e;->a:Lk/a;

    .line 48
    .line 49
    :try_start_0
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :try_start_1
    iget-object v3, v11, Lk/i;->d:Lp/g;

    .line 69
    .line 70
    iget-object v2, v3, Lp/g;->b:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v4, v11, Lk/i;->e:Lq/e;

    .line 73
    .line 74
    sget-object v5, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 75
    .line 76
    iget-object v6, v11, Lk/i;->f:Le/b;

    .line 77
    .line 78
    iget-object v5, v10, Lk/a;->b:Lp/m;

    .line 79
    .line 80
    invoke-virtual {v5, v3, v4}, Lp/m;->b(Lp/g;Lq/e;)Lp/k;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget v7, v5, Lp/k;->e:I

    .line 85
    .line 86
    invoke-interface {v6}, Le/b;->h()V

    .line 87
    .line 88
    .line 89
    iget-object v8, v10, Lk/a;->a:Le/f;

    .line 90
    .line 91
    invoke-interface {v8}, Le/f;->getComponents()Le/a;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    iget-object v8, v8, Le/a;->b:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    const/4 v14, 0x0

    .line 102
    move-object v14, v2

    .line 103
    const/4 v2, 0x0

    .line 104
    :goto_1
    if-ge v2, v9, :cond_5

    .line 105
    .line 106
    add-int/lit8 v15, v2, 0x1

    .line 107
    .line 108
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ll9/g;

    .line 113
    .line 114
    iget-object v13, v2, Ll9/g;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v13, Lm/d;

    .line 117
    .line 118
    iget-object v2, v2, Ll9/g;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Ljava/lang/Class;

    .line 121
    .line 122
    move-object/from16 v16, v8

    .line 123
    .line 124
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    invoke-interface {v13, v14, v5}, Lm/d;->a(Ljava/lang/Object;Lp/k;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-nez v2, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move-object v14, v2

    .line 142
    :cond_4
    :goto_2
    move v2, v15

    .line 143
    move-object/from16 v8, v16

    .line 144
    .line 145
    const/4 v13, 0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_5
    invoke-interface {v6}, Le/b;->i()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3, v14, v5, v6}, Ln/c;->b(Lp/g;Ljava/lang/Object;Lp/k;Le/b;)Ln/b$a;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    if-nez v8, :cond_6

    .line 155
    .line 156
    const/4 v1, 0x0

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    invoke-virtual {v1, v3, v8, v4, v7}, Ln/c;->a(Lp/g;Ln/b$a;Lq/e;I)Ln/b$b;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    :goto_3
    if-eqz v1, :cond_7

    .line 163
    .line 164
    invoke-static {v11, v3, v8, v1}, Ln/c;->c(Lk/i;Lp/g;Ln/b$a;Ln/b$b;)Lp/n;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    return-object v0

    .line 169
    :cond_7
    iget-object v13, v3, Lp/g;->x:Lnc/y;

    .line 170
    .line 171
    new-instance v15, Lk/f;

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    move-object v1, v15

    .line 175
    move-object/from16 v2, p0

    .line 176
    .line 177
    move-object v4, v14

    .line 178
    move-object v7, v8

    .line 179
    move-object/from16 v8, p1

    .line 180
    .line 181
    invoke-direct/range {v1 .. v9}, Lk/f;-><init>(Lk/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Ln/b$a;Lk/h$a;Lp9/d;)V

    .line 182
    .line 183
    .line 184
    iput-object v10, v0, Lk/e;->a:Lk/a;

    .line 185
    .line 186
    iput-object v11, v0, Lk/e;->b:Lk/h$a;

    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    iput v1, v0, Lk/e;->e:I

    .line 190
    .line 191
    invoke-static {v13, v15, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    if-ne v2, v12, :cond_8

    .line 196
    .line 197
    return-object v12

    .line 198
    :cond_8
    :goto_4
    return-object v2

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    move-object v3, v10

    .line 201
    move-object v1, v11

    .line 202
    :goto_5
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    .line 203
    .line 204
    if-nez v2, :cond_b

    .line 205
    .line 206
    iget-object v2, v3, Lk/a;->b:Lp/m;

    .line 207
    .line 208
    invoke-interface {v1}, Lk/h$a;->a()Lp/g;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    new-instance v2, Lp/d;

    .line 216
    .line 217
    instance-of v3, v0, Lp/j;

    .line 218
    .line 219
    if-eqz v3, :cond_9

    .line 220
    .line 221
    iget-object v3, v1, Lp/g;->M:Lp/a;

    .line 222
    .line 223
    iget-object v3, v3, Lp/a;->l:Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    iget-object v4, v1, Lp/g;->K:Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    iget-object v5, v1, Lp/g;->J:Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-static {v1, v4, v5, v3}, Lu/b;->b(Lp/g;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-nez v3, :cond_a

    .line 234
    .line 235
    :cond_9
    invoke-virtual {v1}, Lp/g;->a()Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    :cond_a
    invoke-direct {v2, v3, v1, v0}, Lp/d;-><init>(Landroid/graphics/drawable/Drawable;Lp/g;Ljava/lang/Throwable;)V

    .line 240
    .line 241
    .line 242
    return-object v2

    .line 243
    :cond_b
    throw v0
.end method

.method public final d(Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a;",
            "Lp/g;",
            "Ljava/lang/Object;",
            "Lp/k;",
            "Le/b;",
            "Lp9/d<",
            "-",
            "Lj/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lk/a$b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lk/a$b;

    .line 9
    .line 10
    iget v2, v1, Lk/a$b;->l:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lk/a$b;->l:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lk/a$b;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lk/a$b;-><init>(Lk/a;Lp9/d;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lk/a$b;->j:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 34
    .line 35
    iget v4, v1, Lk/a$b;->l:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v6, :cond_1

    .line 41
    .line 42
    iget v4, v1, Lk/a$b;->h:I

    .line 43
    .line 44
    iget-object v7, v1, Lk/a$b;->f:Le/b;

    .line 45
    .line 46
    iget-object v8, v1, Lk/a$b;->e:Lp/k;

    .line 47
    .line 48
    iget-object v9, v1, Lk/a$b;->d:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v10, v1, Lk/a$b;->c:Lp/g;

    .line 51
    .line 52
    iget-object v11, v1, Lk/a$b;->b:Le/a;

    .line 53
    .line 54
    iget-object v12, v1, Lk/a$b;->a:Lk/a;

    .line 55
    .line 56
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move v6, v4

    .line 60
    move-object v4, v8

    .line 61
    const/4 v8, 0x1

    .line 62
    move-object/from16 v16, v9

    .line 63
    .line 64
    move-object v9, v1

    .line 65
    move-object v1, v10

    .line 66
    move-object v10, v3

    .line 67
    move-object/from16 v3, v16

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_2
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    move-object/from16 v0, p1

    .line 84
    .line 85
    move-object/from16 v4, p4

    .line 86
    .line 87
    move-object/from16 v7, p5

    .line 88
    .line 89
    move-object v9, v1

    .line 90
    move-object v12, v2

    .line 91
    move-object v10, v3

    .line 92
    const/4 v8, 0x0

    .line 93
    move-object/from16 v1, p2

    .line 94
    .line 95
    move-object/from16 v3, p3

    .line 96
    .line 97
    :goto_1
    iget-object v11, v12, Lk/a;->a:Le/f;

    .line 98
    .line 99
    iget-object v11, v0, Le/a;->d:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    :goto_2
    if-ge v8, v13, :cond_4

    .line 106
    .line 107
    add-int/lit8 v14, v8, 0x1

    .line 108
    .line 109
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    check-cast v15, Ll9/g;

    .line 114
    .line 115
    iget-object v5, v15, Ll9/g;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Lj/h$a;

    .line 118
    .line 119
    iget-object v15, v15, Ll9/g;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v15, Ljava/lang/Class;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v15, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_3

    .line 132
    .line 133
    invoke-interface {v5, v3, v4}, Lj/h$a;->a(Ljava/lang/Object;Lp/k;)Lj/h;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    new-instance v8, Ll9/g;

    .line 144
    .line 145
    invoke-direct {v8, v5, v6}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    move v8, v14

    .line 150
    const/4 v6, 0x1

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const/4 v8, 0x0

    .line 153
    :goto_3
    if-eqz v8, :cond_a

    .line 154
    .line 155
    iget-object v5, v8, Ll9/g;->a:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v5, Lj/h;

    .line 158
    .line 159
    iget-object v6, v8, Ll9/g;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v6, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    const/4 v8, 0x1

    .line 168
    add-int/2addr v6, v8

    .line 169
    invoke-interface {v7}, Le/b;->e()V

    .line 170
    .line 171
    .line 172
    iput-object v12, v9, Lk/a$b;->a:Lk/a;

    .line 173
    .line 174
    iput-object v0, v9, Lk/a$b;->b:Le/a;

    .line 175
    .line 176
    iput-object v1, v9, Lk/a$b;->c:Lp/g;

    .line 177
    .line 178
    iput-object v3, v9, Lk/a$b;->d:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v4, v9, Lk/a$b;->e:Lp/k;

    .line 181
    .line 182
    iput-object v7, v9, Lk/a$b;->f:Le/b;

    .line 183
    .line 184
    iput-object v5, v9, Lk/a$b;->g:Lj/h;

    .line 185
    .line 186
    iput v6, v9, Lk/a$b;->h:I

    .line 187
    .line 188
    iput v8, v9, Lk/a$b;->l:I

    .line 189
    .line 190
    invoke-interface {v5, v9}, Lj/h;->a(Lp9/d;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-ne v5, v10, :cond_5

    .line 195
    .line 196
    return-object v10

    .line 197
    :cond_5
    move-object v11, v0

    .line 198
    move-object v0, v5

    .line 199
    :goto_4
    move-object v5, v0

    .line 200
    check-cast v5, Lj/g;

    .line 201
    .line 202
    :try_start_0
    invoke-interface {v7}, Le/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .line 204
    .line 205
    if-eqz v5, :cond_6

    .line 206
    .line 207
    return-object v5

    .line 208
    :cond_6
    move v8, v6

    .line 209
    move-object v0, v11

    .line 210
    const/4 v6, 0x1

    .line 211
    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    move-object v1, v0

    .line 214
    instance-of v0, v5, Lj/l;

    .line 215
    .line 216
    if-eqz v0, :cond_7

    .line 217
    .line 218
    check-cast v5, Lj/l;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_7
    const/4 v5, 0x0

    .line 222
    :goto_5
    if-eqz v5, :cond_9

    .line 223
    .line 224
    iget-object v0, v5, Lj/l;->a:Lg/l;

    .line 225
    .line 226
    if-nez v0, :cond_8

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_8
    invoke-static {v0}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 230
    .line 231
    .line 232
    :cond_9
    :goto_6
    throw v1

    .line 233
    :cond_a
    const-string v0, "Unable to create a fetcher that supports: "

    .line 234
    .line 235
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v1
.end method
