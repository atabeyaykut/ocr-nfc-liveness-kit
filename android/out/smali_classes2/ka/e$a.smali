.class public final Lka/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lka/b;Z)Lka/e;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "functionClass"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lka/e;

    .line 9
    .line 10
    sget-object v2, Lma/b$a;->a:Lma/b$a;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move/from16 v4, p1

    .line 14
    .line 15
    invoke-direct {v1, v0, v3, v2, v4}, Lka/e;-><init>(Lma/j;Lka/e;Lma/b$a;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lpa/b;->J0()Lma/o0;

    .line 19
    .line 20
    .line 21
    move-result-object v14

    .line 22
    sget-object v15, Lm9/v;->a:Lm9/v;

    .line 23
    .line 24
    iget-object v0, v0, Lka/b;->l:Ljava/util/List;

    .line 25
    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Ljava/lang/Iterable;

    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v13, 0x1

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v5, v4

    .line 50
    check-cast v5, Lma/w0;

    .line 51
    .line 52
    invoke-interface {v5}, Lma/w0;->I()Lcc/t1;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    sget-object v6, Lcc/t1;->d:Lcc/t1;

    .line 57
    .line 58
    if-ne v5, v6, :cond_0

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/4 v5, 0x0

    .line 63
    :goto_1
    if-nez v5, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :goto_2
    invoke-static {v3}, Lm9/t;->z1(Ljava/lang/Iterable;)Lm9/z;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v12, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lm9/z;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    :goto_3
    move-object/from16 v2, v16

    .line 88
    .line 89
    check-cast v2, Lm9/a0;

    .line 90
    .line 91
    invoke-virtual {v2}, Lm9/a0;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v2}, Lm9/a0;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lm9/y;

    .line 102
    .line 103
    iget v5, v2, Lm9/y;->a:I

    .line 104
    .line 105
    iget-object v2, v2, Lm9/y;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Lma/w0;

    .line 108
    .line 109
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Llb/f;->o()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "typeParameter.name.asString()"

    .line 118
    .line 119
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v4, "T"

    .line 123
    .line 124
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    const-string v3, "instance"

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_3
    const-string v4, "E"

    .line 134
    .line 135
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    const-string v3, "receiver"

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_4
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 151
    .line 152
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_4
    new-instance v11, Lpa/v0;

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    sget-object v6, Lna/h$a;->a:Lna/h$a$a;

    .line 159
    .line 160
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-interface {v2}, Lma/g;->q()Lcc/m0;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const-string v2, "typeParameter.defaultType"

    .line 169
    .line 170
    invoke-static {v8, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    const/16 v17, 0x0

    .line 176
    .line 177
    const/16 v18, 0x0

    .line 178
    .line 179
    sget-object v19, Lma/r0;->a:Lma/r0$a;

    .line 180
    .line 181
    move-object v2, v11

    .line 182
    move-object v3, v1

    .line 183
    move-object/from16 v20, v11

    .line 184
    .line 185
    move/from16 v11, v17

    .line 186
    .line 187
    move-object/from16 v21, v12

    .line 188
    .line 189
    move-object/from16 v12, v18

    .line 190
    .line 191
    move-object/from16 v13, v19

    .line 192
    .line 193
    invoke-direct/range {v2 .. v13}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 194
    .line 195
    .line 196
    move-object/from16 v2, v20

    .line 197
    .line 198
    move-object/from16 v7, v21

    .line 199
    .line 200
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-object v12, v7

    .line 204
    const/4 v13, 0x1

    .line 205
    goto :goto_3

    .line 206
    :cond_5
    move-object v7, v12

    .line 207
    invoke-static {v0}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lma/w0;

    .line 212
    .line 213
    invoke-interface {v0}, Lma/g;->q()Lcc/m0;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    sget-object v9, Lma/a0;->d:Lma/a0;

    .line 218
    .line 219
    sget-object v10, Lma/p;->e:Lma/p$h;

    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    move-object v2, v1

    .line 223
    move-object v4, v14

    .line 224
    move-object v5, v15

    .line 225
    move-object v6, v15

    .line 226
    invoke-virtual/range {v2 .. v10}, Lpa/p0;->W0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)Lpa/p0;

    .line 227
    .line 228
    .line 229
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, v1, Lpa/x;->A:Z

    .line 231
    .line 232
    return-object v1
.end method
