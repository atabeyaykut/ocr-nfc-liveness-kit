.class public final Lyb/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyb/n;

.field public final b:Lyb/f;


# direct methods
.method public constructor <init>(Lyb/n;)V
    .locals 2

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lyb/z;->a:Lyb/n;

    .line 10
    .line 11
    new-instance v0, Lyb/f;

    .line 12
    .line 13
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 14
    .line 15
    iget-object v1, p1, Lyb/l;->b:Lma/b0;

    .line 16
    .line 17
    iget-object p1, p1, Lyb/l;->l:Lma/d0;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lyb/f;-><init>(Lma/b0;Lma/d0;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lyb/z;->b:Lyb/f;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lma/j;)Lyb/g0;
    .locals 4

    .line 1
    instance-of v0, p1, Lma/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lyb/g0$b;

    .line 6
    .line 7
    check-cast p1, Lma/e0;

    .line 8
    .line 9
    invoke-interface {p1}, Lma/e0;->d()Llb/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lyb/z;->a:Lyb/n;

    .line 14
    .line 15
    iget-object v2, v1, Lyb/n;->b:Lib/c;

    .line 16
    .line 17
    iget-object v3, v1, Lyb/n;->d:Lib/g;

    .line 18
    .line 19
    iget-object v1, v1, Lyb/n;->g:Lac/g;

    .line 20
    .line 21
    invoke-direct {v0, p1, v2, v3, v1}, Lyb/g0$b;-><init>(Llb/c;Lib/c;Lib/g;Lac/g;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Lac/d;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p1, Lac/d;

    .line 30
    .line 31
    iget-object v0, p1, Lac/d;->z:Lyb/g0$a;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0
.end method

.method public final b(Lmb/p;ILyb/c;)Lna/h;
    .locals 2

    .line 1
    sget-object v0, Lib/b;->c:Lib/b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p1, Lna/h$a;->a:Lna/h$a$a;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p2, Lac/o;

    .line 17
    .line 18
    iget-object v0, p0, Lyb/z;->a:Lyb/n;

    .line 19
    .line 20
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 21
    .line 22
    iget-object v0, v0, Lyb/l;->a:Lbc/l;

    .line 23
    .line 24
    new-instance v1, Lyb/z$a;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1, p3}, Lyb/z$a;-><init>(Lyb/z;Lmb/p;Lyb/c;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v0, v1}, Lac/o;-><init>(Lbc/l;Lx9/a;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public final c(Lgb/m;Z)Lna/h;
    .locals 3

    .line 1
    sget-object v0, Lib/b;->c:Lib/b$a;

    .line 2
    .line 3
    iget v1, p1, Lgb/m;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lna/h$a;->a:Lna/h$a$a;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lac/o;

    .line 19
    .line 20
    iget-object v1, p0, Lyb/z;->a:Lyb/n;

    .line 21
    .line 22
    iget-object v1, v1, Lyb/n;->a:Lyb/l;

    .line 23
    .line 24
    iget-object v1, v1, Lyb/l;->a:Lbc/l;

    .line 25
    .line 26
    new-instance v2, Lyb/z$b;

    .line 27
    .line 28
    invoke-direct {v2, p0, p2, p1}, Lyb/z$b;-><init>(Lyb/z;ZLgb/m;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lac/o;-><init>(Lbc/l;Lx9/a;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final d(Lgb/c;Z)Lac/c;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    iget-object v14, v0, Lyb/z;->a:Lyb/n;

    .line 6
    .line 7
    iget-object v1, v14, Lyb/n;->c:Lma/j;

    .line 8
    .line 9
    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v15, v1

    .line 15
    check-cast v15, Lma/e;

    .line 16
    .line 17
    new-instance v12, Lac/c;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iget v1, v13, Lgb/c;->d:I

    .line 21
    .line 22
    sget-object v11, Lyb/c;->a:Lyb/c;

    .line 23
    .line 24
    invoke-virtual {v0, v13, v1, v11}, Lyb/z;->b(Lmb/p;ILyb/c;)Lna/h;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-object v6, Lma/b$a;->a:Lma/b$a;

    .line 29
    .line 30
    iget-object v8, v14, Lyb/n;->b:Lib/c;

    .line 31
    .line 32
    iget-object v9, v14, Lyb/n;->d:Lib/g;

    .line 33
    .line 34
    iget-object v10, v14, Lyb/n;->e:Lib/h;

    .line 35
    .line 36
    iget-object v7, v14, Lyb/n;->g:Lac/g;

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-object v1, v12

    .line 41
    move-object v2, v15

    .line 42
    move/from16 v5, p2

    .line 43
    .line 44
    move-object/from16 v17, v7

    .line 45
    .line 46
    move-object/from16 v7, p1

    .line 47
    .line 48
    move-object/from16 v18, v11

    .line 49
    .line 50
    move-object/from16 v11, v17

    .line 51
    .line 52
    move-object v0, v12

    .line 53
    move-object/from16 v12, v16

    .line 54
    .line 55
    invoke-direct/range {v1 .. v12}, Lac/c;-><init>(Lma/e;Lma/i;Lna/h;ZLma/b$a;Lgb/c;Lib/c;Lib/g;Lib/h;Lac/g;Lma/r0;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lm9/v;->a:Lm9/v;

    .line 59
    .line 60
    invoke-static {v14, v0, v1}, Lyb/n;->b(Lyb/n;Lpa/q;Ljava/util/List;)Lyb/n;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, v13, Lgb/c;->e:Ljava/util/List;

    .line 65
    .line 66
    const-string v3, "proto.valueParameterList"

    .line 67
    .line 68
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lyb/n;->i:Lyb/z;

    .line 72
    .line 73
    move-object/from16 v3, v18

    .line 74
    .line 75
    invoke-virtual {v1, v2, v13, v3}, Lyb/z;->h(Ljava/util/List;Lmb/p;Lyb/c;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v2, Lib/b;->d:Lib/b$b;

    .line 80
    .line 81
    iget v3, v13, Lgb/c;->d:I

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lgb/w;

    .line 88
    .line 89
    invoke-static {v2}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lpa/l;->V0(Ljava/util/List;Lma/q;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v15}, Lma/e;->q()Lcc/m0;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lpa/x;->S0(Lcc/m0;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v15}, Lma/z;->G()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iput-boolean v1, v0, Lpa/x;->t:Z

    .line 108
    .line 109
    sget-object v1, Lib/b;->n:Lib/b$a;

    .line 110
    .line 111
    iget v2, v13, Lgb/c;->d:I

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    xor-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    iput-boolean v1, v0, Lpa/x;->z:Z

    .line 124
    .line 125
    return-object v0
.end method

.method public final e(Lgb/h;)Lac/l;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    const-string v1, "proto"

    .line 6
    .line 7
    invoke-static {v13, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, v13, Lgb/h;->c:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    and-int/2addr v1, v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget v1, v13, Lgb/h;->d:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget v1, v13, Lgb/h;->e:I

    .line 26
    .line 27
    and-int/lit8 v2, v1, 0x3f

    .line 28
    .line 29
    shr-int/lit8 v1, v1, 0x8

    .line 30
    .line 31
    shl-int/lit8 v1, v1, 0x6

    .line 32
    .line 33
    add-int/2addr v1, v2

    .line 34
    :goto_1
    move v14, v1

    .line 35
    sget-object v15, Lyb/c;->a:Lyb/c;

    .line 36
    .line 37
    invoke-virtual {v0, v13, v14, v15}, Lyb/z;->b(Lmb/p;ILyb/c;)Lna/h;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v1, v13, Lgb/h;->c:I

    .line 42
    .line 43
    and-int/lit8 v2, v1, 0x20

    .line 44
    .line 45
    const/16 v5, 0x20

    .line 46
    .line 47
    if-ne v2, v5, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 52
    :goto_2
    if-nez v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x40

    .line 55
    .line 56
    and-int/2addr v1, v2

    .line 57
    if-ne v1, v2, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_3
    if-eqz v1, :cond_5

    .line 63
    .line 64
    :cond_4
    const/4 v3, 0x1

    .line 65
    :cond_5
    sget-object v12, Lna/h$a;->a:Lna/h$a$a;

    .line 66
    .line 67
    iget-object v11, v0, Lyb/z;->a:Lyb/n;

    .line 68
    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    new-instance v1, Lac/a;

    .line 72
    .line 73
    iget-object v2, v11, Lyb/n;->a:Lyb/l;

    .line 74
    .line 75
    iget-object v2, v2, Lyb/l;->a:Lbc/l;

    .line 76
    .line 77
    new-instance v3, Lyb/a0;

    .line 78
    .line 79
    invoke-direct {v3, v0, v13, v15}, Lyb/a0;-><init>(Lyb/z;Lmb/p;Lyb/c;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2, v3}, Lac/a;-><init>(Lbc/l;Lx9/a;)V

    .line 83
    .line 84
    .line 85
    move-object v10, v1

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    move-object v10, v12

    .line 88
    :goto_4
    iget-object v1, v11, Lyb/n;->c:Lma/j;

    .line 89
    .line 90
    invoke-static {v1}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget v2, v13, Lgb/h;->f:I

    .line 95
    .line 96
    iget-object v3, v11, Lyb/n;->b:Lib/c;

    .line 97
    .line 98
    invoke-static {v3, v2}, La6/a;->o(Lib/c;I)Llb/f;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Llb/c;->c(Llb/f;)Llb/c;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v2, Lyb/j0;->a:Llb/c;

    .line 107
    .line 108
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    sget-object v1, Lib/h;->b:Lib/h;

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    iget-object v1, v11, Lyb/n;->e:Lib/h;

    .line 118
    .line 119
    :goto_5
    move-object/from16 v16, v1

    .line 120
    .line 121
    new-instance v9, Lac/l;

    .line 122
    .line 123
    iget-object v2, v11, Lyb/n;->c:Lma/j;

    .line 124
    .line 125
    iget v1, v13, Lgb/h;->f:I

    .line 126
    .line 127
    invoke-static {v3, v1}, La6/a;->o(Lib/c;I)Llb/f;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    sget-object v1, Lib/b;->o:Lib/b$b;

    .line 132
    .line 133
    invoke-virtual {v1, v14}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lgb/i;

    .line 138
    .line 139
    invoke-static {v1}, Lyb/i0;->b(Lgb/i;)Lma/b$a;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    iget-object v8, v11, Lyb/n;->b:Lib/c;

    .line 144
    .line 145
    iget-object v7, v11, Lyb/n;->d:Lib/g;

    .line 146
    .line 147
    iget-object v3, v11, Lyb/n;->g:Lac/g;

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    const/16 v18, 0x0

    .line 152
    .line 153
    move-object v1, v9

    .line 154
    move-object/from16 v19, v3

    .line 155
    .line 156
    move-object/from16 v3, v18

    .line 157
    .line 158
    move-object/from16 v18, v7

    .line 159
    .line 160
    move-object/from16 v7, p1

    .line 161
    .line 162
    move-object/from16 v27, v9

    .line 163
    .line 164
    move-object/from16 v9, v18

    .line 165
    .line 166
    move-object/from16 v28, v10

    .line 167
    .line 168
    move-object/from16 v10, v16

    .line 169
    .line 170
    move-object/from16 v29, v11

    .line 171
    .line 172
    move-object/from16 v11, v19

    .line 173
    .line 174
    move-object v0, v12

    .line 175
    move-object/from16 v12, v17

    .line 176
    .line 177
    invoke-direct/range {v1 .. v12}, Lac/l;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lgb/h;Lib/c;Lib/g;Lib/h;Lac/g;Lma/r0;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v13, Lgb/h;->j:Ljava/util/List;

    .line 181
    .line 182
    const-string v2, "proto.typeParameterList"

    .line 183
    .line 184
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v3, v27

    .line 188
    .line 189
    move-object/from16 v2, v29

    .line 190
    .line 191
    invoke-static {v2, v3, v1}, Lyb/n;->b(Lyb/n;Lpa/q;Ljava/util/List;)Lyb/n;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v4, v2, Lyb/n;->d:Lib/g;

    .line 196
    .line 197
    invoke-static {v13, v4}, Lib/f;->b(Lgb/h;Lib/g;)Lgb/p;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    const/4 v6, 0x0

    .line 202
    iget-object v7, v1, Lyb/n;->h:Lyb/k0;

    .line 203
    .line 204
    if-eqz v5, :cond_8

    .line 205
    .line 206
    invoke-virtual {v7, v5}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    if-eqz v5, :cond_8

    .line 211
    .line 212
    move-object/from16 v12, v28

    .line 213
    .line 214
    invoke-static {v3, v5, v12}, Lob/h;->h(Lma/a;Lcc/e0;Lna/h;)Lpa/o0;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    move-object/from16 v18, v5

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_8
    move-object/from16 v18, v6

    .line 222
    .line 223
    :goto_6
    iget-object v5, v2, Lyb/n;->c:Lma/j;

    .line 224
    .line 225
    instance-of v8, v5, Lma/e;

    .line 226
    .line 227
    if-eqz v8, :cond_9

    .line 228
    .line 229
    check-cast v5, Lma/e;

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_9
    move-object v5, v6

    .line 233
    :goto_7
    if-eqz v5, :cond_a

    .line 234
    .line 235
    invoke-interface {v5}, Lma/e;->J0()Lma/o0;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    move-object/from16 v19, v5

    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_a
    move-object/from16 v19, v6

    .line 243
    .line 244
    :goto_8
    const-string v5, "typeTable"

    .line 245
    .line 246
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v5, v13, Lgb/h;->m:Ljava/util/List;

    .line 250
    .line 251
    move-object v8, v5

    .line 252
    check-cast v8, Ljava/util/Collection;

    .line 253
    .line 254
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    xor-int/lit8 v8, v8, 0x1

    .line 259
    .line 260
    if-eqz v8, :cond_b

    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_b
    move-object v5, v6

    .line 264
    :goto_9
    if-nez v5, :cond_d

    .line 265
    .line 266
    iget-object v5, v13, Lgb/h;->n:Ljava/util/List;

    .line 267
    .line 268
    const-string v8, "contextReceiverTypeIdList"

    .line 269
    .line 270
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    check-cast v5, Ljava/lang/Iterable;

    .line 274
    .line 275
    new-instance v8, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_c

    .line 293
    .line 294
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    check-cast v9, Ljava/lang/Integer;

    .line 299
    .line 300
    const-string v10, "it"

    .line 301
    .line 302
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    invoke-virtual {v4, v9}, Lib/g;->a(I)Lgb/p;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_a

    .line 317
    :cond_c
    move-object v5, v8

    .line 318
    :cond_d
    check-cast v5, Ljava/lang/Iterable;

    .line 319
    .line 320
    new-instance v8, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    :cond_e
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    if-eqz v9, :cond_f

    .line 334
    .line 335
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    check-cast v9, Lgb/p;

    .line 340
    .line 341
    invoke-virtual {v7, v9}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-static {v3, v9, v6, v0}, Lob/h;->b(Lma/a;Lcc/e0;Llb/f;Lna/h;)Lpa/o0;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    if-eqz v9, :cond_e

    .line 350
    .line 351
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_f
    invoke-virtual {v7}, Lyb/k0;->b()Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v21

    .line 359
    iget-object v0, v13, Lgb/h;->q:Ljava/util/List;

    .line 360
    .line 361
    const-string v5, "proto.valueParameterList"

    .line 362
    .line 363
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v1, Lyb/n;->i:Lyb/z;

    .line 367
    .line 368
    invoke-virtual {v1, v0, v13, v15}, Lyb/z;->h(Ljava/util/List;Lmb/p;Lyb/c;)Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v22

    .line 372
    invoke-static {v13, v4}, Lib/f;->c(Lgb/h;Lib/g;)Lgb/p;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v7, v0}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 377
    .line 378
    .line 379
    move-result-object v23

    .line 380
    sget-object v0, Lib/b;->e:Lib/b$b;

    .line 381
    .line 382
    invoke-virtual {v0, v14}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    check-cast v0, Lgb/j;

    .line 387
    .line 388
    invoke-static {v0}, Lyb/h0;->a(Lgb/j;)Lma/a0;

    .line 389
    .line 390
    .line 391
    move-result-object v24

    .line 392
    sget-object v0, Lib/b;->d:Lib/b$b;

    .line 393
    .line 394
    invoke-virtual {v0, v14}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Lgb/w;

    .line 399
    .line 400
    invoke-static {v0}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 401
    .line 402
    .line 403
    move-result-object v25

    .line 404
    sget-object v26, Lm9/w;->a:Lm9/w;

    .line 405
    .line 406
    move-object/from16 v17, v3

    .line 407
    .line 408
    move-object/from16 v20, v8

    .line 409
    .line 410
    invoke-virtual/range {v17 .. v26}, Lpa/p0;->X0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;Ljava/util/Map;)Lpa/p0;

    .line 411
    .line 412
    .line 413
    sget-object v0, Lib/b;->p:Lib/b$a;

    .line 414
    .line 415
    const-string v1, "IS_OPERATOR.get(flags)"

    .line 416
    .line 417
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    iput-boolean v0, v3, Lpa/x;->n:Z

    .line 422
    .line 423
    sget-object v0, Lib/b;->q:Lib/b$a;

    .line 424
    .line 425
    const-string v1, "IS_INFIX.get(flags)"

    .line 426
    .line 427
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    iput-boolean v0, v3, Lpa/x;->p:Z

    .line 432
    .line 433
    sget-object v0, Lib/b;->t:Lib/b$a;

    .line 434
    .line 435
    const-string v1, "IS_EXTERNAL_FUNCTION.get(flags)"

    .line 436
    .line 437
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    iput-boolean v0, v3, Lpa/x;->q:Z

    .line 442
    .line 443
    sget-object v0, Lib/b;->r:Lib/b$a;

    .line 444
    .line 445
    const-string v1, "IS_INLINE.get(flags)"

    .line 446
    .line 447
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    iput-boolean v0, v3, Lpa/x;->r:Z

    .line 452
    .line 453
    sget-object v0, Lib/b;->s:Lib/b$a;

    .line 454
    .line 455
    const-string v1, "IS_TAILREC.get(flags)"

    .line 456
    .line 457
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    iput-boolean v0, v3, Lpa/x;->s:Z

    .line 462
    .line 463
    sget-object v0, Lib/b;->u:Lib/b$a;

    .line 464
    .line 465
    const-string v1, "IS_SUSPEND.get(flags)"

    .line 466
    .line 467
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    iput-boolean v0, v3, Lpa/x;->y:Z

    .line 472
    .line 473
    sget-object v0, Lib/b;->v:Lib/b$a;

    .line 474
    .line 475
    const-string v1, "IS_EXPECT_FUNCTION.get(flags)"

    .line 476
    .line 477
    invoke-static {v0, v14, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    iput-boolean v0, v3, Lpa/x;->t:Z

    .line 482
    .line 483
    sget-object v0, Lib/b;->w:Lib/b$a;

    .line 484
    .line 485
    invoke-virtual {v0, v14}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    xor-int/lit8 v0, v0, 0x1

    .line 494
    .line 495
    iput-boolean v0, v3, Lpa/x;->z:Z

    .line 496
    .line 497
    iget-object v0, v2, Lyb/n;->a:Lyb/l;

    .line 498
    .line 499
    iget-object v0, v0, Lyb/l;->m:Lyb/k;

    .line 500
    .line 501
    invoke-interface {v0, v13, v3, v4, v7}, Lyb/k;->a(Lgb/h;Lac/l;Lib/g;Lyb/k0;)V

    .line 502
    .line 503
    .line 504
    return-object v3
.end method

.method public final f(Lgb/m;)Lac/k;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    const-string v1, "proto"

    .line 6
    .line 7
    invoke-static {v15, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, v15, Lgb/m;->c:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    and-int/2addr v1, v2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const/16 v20, 0x6

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, v15, Lgb/m;->d:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget v1, v15, Lgb/m;->e:I

    .line 27
    .line 28
    and-int/lit8 v2, v1, 0x3f

    .line 29
    .line 30
    shr-int/lit8 v1, v1, 0x8

    .line 31
    .line 32
    shl-int/lit8 v1, v1, 0x6

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    :goto_1
    move v3, v1

    .line 36
    new-instance v14, Lac/k;

    .line 37
    .line 38
    move-object v1, v14

    .line 39
    iget-object v13, v0, Lyb/z;->a:Lyb/n;

    .line 40
    .line 41
    iget-object v2, v13, Lyb/n;->c:Lma/j;

    .line 42
    .line 43
    sget-object v4, Lyb/c;->b:Lyb/c;

    .line 44
    .line 45
    invoke-virtual {v0, v15, v3, v4}, Lyb/z;->b(Lmb/p;ILyb/c;)Lna/h;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget-object v5, Lib/b;->e:Lib/b$b;

    .line 50
    .line 51
    invoke-virtual {v5, v3}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lgb/j;

    .line 56
    .line 57
    invoke-static {v5}, Lyb/h0;->a(Lgb/j;)Lma/a0;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    sget-object v6, Lib/b;->d:Lib/b$b;

    .line 62
    .line 63
    invoke-virtual {v6, v3}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lgb/w;

    .line 68
    .line 69
    invoke-static {v6}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    sget-object v7, Lib/b;->x:Lib/b$a;

    .line 74
    .line 75
    const-string v8, "IS_VAR.get(flags)"

    .line 76
    .line 77
    invoke-static {v7, v3, v8}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    iget-object v8, v13, Lyb/n;->b:Lib/c;

    .line 82
    .line 83
    iget v9, v15, Lgb/m;->f:I

    .line 84
    .line 85
    invoke-static {v8, v9}, La6/a;->o(Lib/c;I)Llb/f;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    sget-object v9, Lib/b;->o:Lib/b$b;

    .line 90
    .line 91
    invoke-virtual {v9, v3}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, Lgb/i;

    .line 96
    .line 97
    invoke-static {v9}, Lyb/i0;->b(Lgb/i;)Lma/b$a;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    sget-object v10, Lib/b;->B:Lib/b$a;

    .line 102
    .line 103
    const-string v11, "IS_LATEINIT.get(flags)"

    .line 104
    .line 105
    invoke-static {v10, v3, v11}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    sget-object v11, Lib/b;->A:Lib/b$a;

    .line 110
    .line 111
    const-string v12, "IS_CONST.get(flags)"

    .line 112
    .line 113
    invoke-static {v11, v3, v12}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    sget-object v12, Lib/b;->D:Lib/b$a;

    .line 118
    .line 119
    move-object/from16 v16, v13

    .line 120
    .line 121
    const-string v13, "IS_EXTERNAL_PROPERTY.get(flags)"

    .line 122
    .line 123
    invoke-static {v12, v3, v13}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    sget-object v13, Lib/b;->E:Lib/b$a;

    .line 128
    .line 129
    move-object/from16 v17, v14

    .line 130
    .line 131
    const-string v14, "IS_DELEGATED.get(flags)"

    .line 132
    .line 133
    invoke-static {v13, v3, v14}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    move-object/from16 v14, v16

    .line 138
    .line 139
    sget-object v14, Lib/b;->F:Lib/b$a;

    .line 140
    .line 141
    const-string v15, "IS_EXPECT_PROPERTY.get(flags)"

    .line 142
    .line 143
    invoke-static {v14, v3, v15}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    move/from16 v21, v3

    .line 148
    .line 149
    move-object/from16 v3, v16

    .line 150
    .line 151
    move-object/from16 v15, v17

    .line 152
    .line 153
    move-object/from16 v22, v15

    .line 154
    .line 155
    iget-object v15, v3, Lyb/n;->b:Lib/c;

    .line 156
    .line 157
    move-object/from16 v16, v15

    .line 158
    .line 159
    iget-object v15, v3, Lyb/n;->d:Lib/g;

    .line 160
    .line 161
    move-object/from16 v17, v15

    .line 162
    .line 163
    iget-object v15, v3, Lyb/n;->e:Lib/h;

    .line 164
    .line 165
    move-object/from16 v18, v15

    .line 166
    .line 167
    iget-object v15, v3, Lyb/n;->g:Lac/g;

    .line 168
    .line 169
    move-object/from16 v19, v15

    .line 170
    .line 171
    const/4 v15, 0x0

    .line 172
    move-object v0, v3

    .line 173
    move-object v3, v15

    .line 174
    move-object/from16 v23, v0

    .line 175
    .line 176
    move-object/from16 v24, v22

    .line 177
    .line 178
    move-object/from16 v0, p1

    .line 179
    .line 180
    move-object/from16 v15, p1

    .line 181
    .line 182
    invoke-direct/range {v1 .. v19}, Lac/k;-><init>(Lma/j;Lma/l0;Lna/h;Lma/a0;Lma/q;ZLlb/f;Lma/b$a;ZZZZZLgb/m;Lib/c;Lib/g;Lib/h;Lac/g;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lgb/m;->j:Ljava/util/List;

    .line 186
    .line 187
    const-string v2, "proto.typeParameterList"

    .line 188
    .line 189
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    move-object/from16 v3, v23

    .line 193
    .line 194
    move-object/from16 v2, v24

    .line 195
    .line 196
    invoke-static {v3, v2, v1}, Lyb/n;->b(Lyb/n;Lpa/q;Ljava/util/List;)Lyb/n;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v4, Lib/b;->y:Lib/b$a;

    .line 201
    .line 202
    const-string v5, "HAS_GETTER.get(flags)"

    .line 203
    .line 204
    move/from16 v6, v21

    .line 205
    .line 206
    invoke-static {v4, v6, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    sget-object v11, Lyb/c;->c:Lyb/c;

    .line 211
    .line 212
    sget-object v4, Lna/h$a;->a:Lna/h$a$a;

    .line 213
    .line 214
    const/16 v5, 0x40

    .line 215
    .line 216
    const/16 v7, 0x20

    .line 217
    .line 218
    if-eqz v10, :cond_6

    .line 219
    .line 220
    iget v8, v0, Lgb/m;->c:I

    .line 221
    .line 222
    and-int/lit8 v9, v8, 0x20

    .line 223
    .line 224
    if-ne v9, v7, :cond_2

    .line 225
    .line 226
    const/4 v7, 0x1

    .line 227
    goto :goto_2

    .line 228
    :cond_2
    const/4 v7, 0x0

    .line 229
    :goto_2
    if-nez v7, :cond_5

    .line 230
    .line 231
    and-int/lit8 v7, v8, 0x40

    .line 232
    .line 233
    if-ne v7, v5, :cond_3

    .line 234
    .line 235
    const/4 v5, 0x1

    .line 236
    goto :goto_3

    .line 237
    :cond_3
    const/4 v5, 0x0

    .line 238
    :goto_3
    if-eqz v5, :cond_4

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_4
    const/4 v5, 0x0

    .line 242
    goto :goto_5

    .line 243
    :cond_5
    :goto_4
    const/4 v5, 0x1

    .line 244
    :goto_5
    if-eqz v5, :cond_6

    .line 245
    .line 246
    new-instance v5, Lac/a;

    .line 247
    .line 248
    iget-object v7, v3, Lyb/n;->a:Lyb/l;

    .line 249
    .line 250
    iget-object v7, v7, Lyb/l;->a:Lbc/l;

    .line 251
    .line 252
    new-instance v8, Lyb/a0;

    .line 253
    .line 254
    move-object/from16 v15, p0

    .line 255
    .line 256
    move v14, v6

    .line 257
    invoke-direct {v8, v15, v0, v11}, Lyb/a0;-><init>(Lyb/z;Lmb/p;Lyb/c;)V

    .line 258
    .line 259
    .line 260
    invoke-direct {v5, v7, v8}, Lac/a;-><init>(Lbc/l;Lx9/a;)V

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_6
    move-object/from16 v15, p0

    .line 265
    .line 266
    move v14, v6

    .line 267
    move-object v5, v4

    .line 268
    :goto_6
    iget-object v6, v3, Lyb/n;->d:Lib/g;

    .line 269
    .line 270
    invoke-static {v0, v6}, Lib/f;->d(Lgb/m;Lib/g;)Lgb/p;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    iget-object v8, v1, Lyb/n;->h:Lyb/k0;

    .line 275
    .line 276
    invoke-virtual {v8, v7}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v8}, Lyb/k0;->b()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    iget-object v12, v3, Lyb/n;->c:Lma/j;

    .line 285
    .line 286
    instance-of v13, v12, Lma/e;

    .line 287
    .line 288
    if-eqz v13, :cond_7

    .line 289
    .line 290
    check-cast v12, Lma/e;

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_7
    const/4 v12, 0x0

    .line 294
    :goto_7
    if-eqz v12, :cond_8

    .line 295
    .line 296
    invoke-interface {v12}, Lma/e;->J0()Lma/o0;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    goto :goto_8

    .line 301
    :cond_8
    const/4 v12, 0x0

    .line 302
    :goto_8
    const-string v13, "typeTable"

    .line 303
    .line 304
    invoke-static {v6, v13}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v16, v3

    .line 308
    .line 309
    iget v3, v0, Lgb/m;->c:I

    .line 310
    .line 311
    move-object/from16 v17, v1

    .line 312
    .line 313
    and-int/lit8 v1, v3, 0x20

    .line 314
    .line 315
    move-object/from16 v18, v11

    .line 316
    .line 317
    const/16 v11, 0x20

    .line 318
    .line 319
    if-ne v1, v11, :cond_9

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    goto :goto_9

    .line 323
    :cond_9
    const/4 v1, 0x0

    .line 324
    :goto_9
    if-eqz v1, :cond_a

    .line 325
    .line 326
    iget-object v1, v0, Lgb/m;->k:Lgb/p;

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_a
    const/16 v1, 0x40

    .line 330
    .line 331
    and-int/2addr v3, v1

    .line 332
    if-ne v3, v1, :cond_b

    .line 333
    .line 334
    const/4 v1, 0x1

    .line 335
    goto :goto_a

    .line 336
    :cond_b
    const/4 v1, 0x0

    .line 337
    :goto_a
    if-eqz v1, :cond_c

    .line 338
    .line 339
    iget v1, v0, Lgb/m;->l:I

    .line 340
    .line 341
    invoke-virtual {v6, v1}, Lib/g;->a(I)Lgb/p;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    goto :goto_b

    .line 346
    :cond_c
    const/4 v1, 0x0

    .line 347
    :goto_b
    if-eqz v1, :cond_d

    .line 348
    .line 349
    invoke-virtual {v8, v1}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-eqz v1, :cond_d

    .line 354
    .line 355
    invoke-static {v2, v1, v5}, Lob/h;->h(Lma/a;Lcc/e0;Lna/h;)Lpa/o0;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    goto :goto_c

    .line 360
    :cond_d
    const/4 v1, 0x0

    .line 361
    :goto_c
    invoke-static {v6, v13}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v3, v0, Lgb/m;->m:Ljava/util/List;

    .line 365
    .line 366
    move-object v5, v3

    .line 367
    check-cast v5, Ljava/util/Collection;

    .line 368
    .line 369
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    xor-int/lit8 v5, v5, 0x1

    .line 374
    .line 375
    if-eqz v5, :cond_e

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_e
    const/4 v3, 0x0

    .line 379
    :goto_d
    if-nez v3, :cond_10

    .line 380
    .line 381
    iget-object v3, v0, Lgb/m;->n:Ljava/util/List;

    .line 382
    .line 383
    const-string v5, "contextReceiverTypeIdList"

    .line 384
    .line 385
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    check-cast v3, Ljava/lang/Iterable;

    .line 389
    .line 390
    new-instance v5, Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    if-eqz v11, :cond_f

    .line 408
    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    check-cast v11, Ljava/lang/Integer;

    .line 414
    .line 415
    const-string v13, "it"

    .line 416
    .line 417
    invoke-static {v11, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 421
    .line 422
    .line 423
    move-result v11

    .line 424
    invoke-virtual {v6, v11}, Lib/g;->a(I)Lgb/p;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_f
    move-object v3, v5

    .line 433
    :cond_10
    check-cast v3, Ljava/lang/Iterable;

    .line 434
    .line 435
    new-instance v11, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    .line 443
    .line 444
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-eqz v5, :cond_11

    .line 453
    .line 454
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Lgb/p;

    .line 459
    .line 460
    invoke-virtual {v8, v5}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    const/4 v6, 0x0

    .line 465
    invoke-static {v2, v5, v6, v4}, Lob/h;->b(Lma/a;Lcc/e0;Llb/f;Lna/h;)Lpa/o0;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    goto :goto_f

    .line 473
    :cond_11
    move-object v4, v2

    .line 474
    move-object v5, v7

    .line 475
    move-object v6, v9

    .line 476
    move-object v7, v12

    .line 477
    move-object v8, v1

    .line 478
    move-object v9, v11

    .line 479
    invoke-virtual/range {v4 .. v9}, Lpa/l0;->Q0(Lcc/e0;Ljava/util/List;Lma/o0;Lpa/o0;Ljava/util/List;)V

    .line 480
    .line 481
    .line 482
    sget-object v1, Lib/b;->c:Lib/b$a;

    .line 483
    .line 484
    const-string v3, "HAS_ANNOTATIONS.get(flags)"

    .line 485
    .line 486
    invoke-static {v1, v14, v3}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    sget-object v13, Lib/b;->d:Lib/b$b;

    .line 491
    .line 492
    invoke-virtual {v13, v14}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    check-cast v4, Lgb/w;

    .line 497
    .line 498
    sget-object v12, Lib/b;->e:Lib/b$b;

    .line 499
    .line 500
    invoke-virtual {v12, v14}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    check-cast v5, Lgb/j;

    .line 505
    .line 506
    if-eqz v4, :cond_20

    .line 507
    .line 508
    if-eqz v5, :cond_1f

    .line 509
    .line 510
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v1, v3}, Lib/b$a;->d(Ljava/lang/Boolean;)I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    invoke-interface {v5}, Lmb/i$a;->f()I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    iget v5, v12, Lib/b$c;->a:I

    .line 523
    .line 524
    shl-int/2addr v3, v5

    .line 525
    or-int/2addr v1, v3

    .line 526
    invoke-interface {v4}, Lmb/i$a;->f()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    iget v4, v13, Lib/b$c;->a:I

    .line 531
    .line 532
    shl-int/2addr v3, v4

    .line 533
    or-int/2addr v1, v3

    .line 534
    sget-object v3, Lib/b;->J:Lib/b$a;

    .line 535
    .line 536
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 537
    .line 538
    invoke-virtual {v3, v4}, Lib/b$a;->d(Ljava/lang/Boolean;)I

    .line 539
    .line 540
    .line 541
    move-result v5

    .line 542
    or-int/2addr v1, v5

    .line 543
    sget-object v11, Lib/b;->K:Lib/b$a;

    .line 544
    .line 545
    invoke-virtual {v11, v4}, Lib/b$a;->d(Ljava/lang/Boolean;)I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    or-int/2addr v1, v5

    .line 550
    sget-object v9, Lib/b;->L:Lib/b$a;

    .line 551
    .line 552
    invoke-virtual {v9, v4}, Lib/b$a;->d(Ljava/lang/Boolean;)I

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    or-int/2addr v1, v4

    .line 557
    sget-object v19, Lma/r0;->a:Lma/r0$a;

    .line 558
    .line 559
    if-eqz v10, :cond_15

    .line 560
    .line 561
    iget v4, v0, Lgb/m;->c:I

    .line 562
    .line 563
    const/16 v5, 0x100

    .line 564
    .line 565
    and-int/2addr v4, v5

    .line 566
    if-ne v4, v5, :cond_12

    .line 567
    .line 568
    const/4 v4, 0x1

    .line 569
    goto :goto_10

    .line 570
    :cond_12
    const/4 v4, 0x0

    .line 571
    :goto_10
    if-eqz v4, :cond_13

    .line 572
    .line 573
    iget v4, v0, Lgb/m;->r:I

    .line 574
    .line 575
    goto :goto_11

    .line 576
    :cond_13
    move v4, v1

    .line 577
    :goto_11
    const-string v5, "IS_NOT_DEFAULT.get(getterFlags)"

    .line 578
    .line 579
    invoke-static {v3, v4, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    const-string v6, "IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    .line 584
    .line 585
    invoke-static {v11, v4, v6}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 586
    .line 587
    .line 588
    move-result v10

    .line 589
    const-string v6, "IS_INLINE_ACCESSOR.get(getterFlags)"

    .line 590
    .line 591
    invoke-static {v9, v4, v6}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 592
    .line 593
    .line 594
    move-result v21

    .line 595
    move-object/from16 v6, v18

    .line 596
    .line 597
    invoke-virtual {v15, v0, v4, v6}, Lyb/z;->b(Lmb/p;ILyb/c;)Lna/h;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    if-eqz v5, :cond_14

    .line 602
    .line 603
    new-instance v18, Lpa/m0;

    .line 604
    .line 605
    invoke-virtual {v12, v4}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    check-cast v7, Lgb/j;

    .line 610
    .line 611
    invoke-static {v7}, Lyb/h0;->a(Lgb/j;)Lma/a0;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-virtual {v13, v4}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    check-cast v4, Lgb/w;

    .line 620
    .line 621
    invoke-static {v4}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 622
    .line 623
    .line 624
    move-result-object v8

    .line 625
    xor-int/lit8 v22, v5, 0x1

    .line 626
    .line 627
    invoke-virtual {v2}, Lpa/l0;->k0()Lma/b$a;

    .line 628
    .line 629
    .line 630
    move-result-object v23

    .line 631
    const/16 v24, 0x0

    .line 632
    .line 633
    move-object/from16 v4, v18

    .line 634
    .line 635
    move-object v5, v2

    .line 636
    move-object/from16 v25, v9

    .line 637
    .line 638
    move/from16 v9, v22

    .line 639
    .line 640
    move-object/from16 v26, v11

    .line 641
    .line 642
    move/from16 v11, v21

    .line 643
    .line 644
    move/from16 v21, v1

    .line 645
    .line 646
    move-object v1, v12

    .line 647
    move-object/from16 v12, v23

    .line 648
    .line 649
    move-object/from16 v27, v13

    .line 650
    .line 651
    move-object/from16 v13, v24

    .line 652
    .line 653
    move-object/from16 v22, v1

    .line 654
    .line 655
    move v1, v14

    .line 656
    move-object/from16 v14, v19

    .line 657
    .line 658
    invoke-direct/range {v4 .. v14}, Lpa/m0;-><init>(Lma/l0;Lna/h;Lma/a0;Lma/q;ZZZLma/b$a;Lma/m0;Lma/r0;)V

    .line 659
    .line 660
    .line 661
    goto :goto_12

    .line 662
    :cond_14
    move/from16 v21, v1

    .line 663
    .line 664
    move-object/from16 v25, v9

    .line 665
    .line 666
    move-object/from16 v26, v11

    .line 667
    .line 668
    move-object/from16 v22, v12

    .line 669
    .line 670
    move-object/from16 v27, v13

    .line 671
    .line 672
    move v1, v14

    .line 673
    invoke-static {v2, v6}, Lob/h;->c(Lma/l0;Lna/h;)Lpa/m0;

    .line 674
    .line 675
    .line 676
    move-result-object v18

    .line 677
    move-object/from16 v4, v18

    .line 678
    .line 679
    :goto_12
    invoke-virtual {v2}, Lpa/l0;->getReturnType()Lcc/e0;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-virtual {v4, v5}, Lpa/m0;->M0(Lcc/e0;)V

    .line 684
    .line 685
    .line 686
    goto :goto_13

    .line 687
    :cond_15
    move/from16 v21, v1

    .line 688
    .line 689
    move-object/from16 v25, v9

    .line 690
    .line 691
    move-object/from16 v26, v11

    .line 692
    .line 693
    move-object/from16 v22, v12

    .line 694
    .line 695
    move-object/from16 v27, v13

    .line 696
    .line 697
    move v1, v14

    .line 698
    const/4 v4, 0x0

    .line 699
    :goto_13
    move-object v14, v4

    .line 700
    sget-object v4, Lib/b;->z:Lib/b$a;

    .line 701
    .line 702
    const-string v5, "HAS_SETTER.get(flags)"

    .line 703
    .line 704
    invoke-static {v4, v1, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    if-eqz v4, :cond_1a

    .line 709
    .line 710
    iget v4, v0, Lgb/m;->c:I

    .line 711
    .line 712
    const/16 v5, 0x200

    .line 713
    .line 714
    and-int/2addr v4, v5

    .line 715
    if-ne v4, v5, :cond_16

    .line 716
    .line 717
    const/4 v4, 0x1

    .line 718
    goto :goto_14

    .line 719
    :cond_16
    const/4 v4, 0x0

    .line 720
    :goto_14
    if-eqz v4, :cond_17

    .line 721
    .line 722
    iget v4, v0, Lgb/m;->s:I

    .line 723
    .line 724
    goto :goto_15

    .line 725
    :cond_17
    move/from16 v4, v21

    .line 726
    .line 727
    :goto_15
    const-string v5, "IS_NOT_DEFAULT.get(setterFlags)"

    .line 728
    .line 729
    invoke-static {v3, v4, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    const-string v5, "IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    .line 734
    .line 735
    move-object/from16 v6, v26

    .line 736
    .line 737
    invoke-static {v6, v4, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result v10

    .line 741
    const-string v5, "IS_INLINE_ACCESSOR.get(setterFlags)"

    .line 742
    .line 743
    move-object/from16 v6, v25

    .line 744
    .line 745
    invoke-static {v6, v4, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 746
    .line 747
    .line 748
    move-result v11

    .line 749
    sget-object v13, Lyb/c;->d:Lyb/c;

    .line 750
    .line 751
    invoke-virtual {v15, v0, v4, v13}, Lyb/z;->b(Lmb/p;ILyb/c;)Lna/h;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    if-eqz v3, :cond_19

    .line 756
    .line 757
    new-instance v12, Lpa/n0;

    .line 758
    .line 759
    move-object/from16 v5, v22

    .line 760
    .line 761
    invoke-virtual {v5, v4}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    check-cast v5, Lgb/j;

    .line 766
    .line 767
    invoke-static {v5}, Lyb/h0;->a(Lgb/j;)Lma/a0;

    .line 768
    .line 769
    .line 770
    move-result-object v7

    .line 771
    move-object/from16 v5, v27

    .line 772
    .line 773
    invoke-virtual {v5, v4}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    check-cast v4, Lgb/w;

    .line 778
    .line 779
    invoke-static {v4}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 780
    .line 781
    .line 782
    move-result-object v8

    .line 783
    xor-int/lit8 v9, v3, 0x1

    .line 784
    .line 785
    invoke-virtual {v2}, Lpa/l0;->k0()Lma/b$a;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    const/16 v18, 0x0

    .line 790
    .line 791
    move-object v4, v12

    .line 792
    move-object v5, v2

    .line 793
    move-object v15, v12

    .line 794
    move-object v12, v3

    .line 795
    move-object v3, v13

    .line 796
    move-object/from16 v13, v18

    .line 797
    .line 798
    move-object/from16 v28, v14

    .line 799
    .line 800
    move-object/from16 v14, v19

    .line 801
    .line 802
    invoke-direct/range {v4 .. v14}, Lpa/n0;-><init>(Lma/l0;Lna/h;Lma/a0;Lma/q;ZZZLma/b$a;Lma/n0;Lma/r0;)V

    .line 803
    .line 804
    .line 805
    sget-object v4, Lm9/v;->a:Lm9/v;

    .line 806
    .line 807
    move-object/from16 v5, v17

    .line 808
    .line 809
    invoke-static {v5, v15, v4}, Lyb/n;->b(Lyb/n;Lpa/q;Ljava/util/List;)Lyb/n;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    iget-object v5, v0, Lgb/m;->q:Lgb/t;

    .line 814
    .line 815
    invoke-static {v5}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    iget-object v4, v4, Lyb/n;->i:Lyb/z;

    .line 820
    .line 821
    invoke-virtual {v4, v5, v0, v3}, Lyb/z;->h(Ljava/util/List;Lmb/p;Lyb/c;)Ljava/util/List;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    invoke-static {v3}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    check-cast v3, Lma/a1;

    .line 830
    .line 831
    if-eqz v3, :cond_18

    .line 832
    .line 833
    iput-object v3, v15, Lpa/n0;->n:Lma/a1;

    .line 834
    .line 835
    move-object v12, v15

    .line 836
    goto :goto_16

    .line 837
    :cond_18
    invoke-static/range {v20 .. v20}, Lpa/n0;->C(I)V

    .line 838
    .line 839
    .line 840
    const/4 v0, 0x0

    .line 841
    throw v0

    .line 842
    :cond_19
    move-object/from16 v28, v14

    .line 843
    .line 844
    invoke-static {v2, v6}, Lob/h;->d(Lma/l0;Lna/h;)Lpa/n0;

    .line 845
    .line 846
    .line 847
    move-result-object v12

    .line 848
    goto :goto_16

    .line 849
    :cond_1a
    move-object/from16 v28, v14

    .line 850
    .line 851
    const/4 v12, 0x0

    .line 852
    :goto_16
    sget-object v3, Lib/b;->C:Lib/b$a;

    .line 853
    .line 854
    const-string v4, "HAS_CONSTANT.get(flags)"

    .line 855
    .line 856
    invoke-static {v3, v1, v4}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-eqz v1, :cond_1b

    .line 861
    .line 862
    new-instance v1, Lyb/c0;

    .line 863
    .line 864
    move-object/from16 v3, p0

    .line 865
    .line 866
    invoke-direct {v1, v3, v0, v2}, Lyb/c0;-><init>(Lyb/z;Lgb/m;Lac/k;)V

    .line 867
    .line 868
    .line 869
    const/4 v4, 0x0

    .line 870
    invoke-virtual {v2, v4, v1}, Lpa/x0;->E0(Lbc/j;Lx9/a;)V

    .line 871
    .line 872
    .line 873
    goto :goto_17

    .line 874
    :cond_1b
    move-object/from16 v3, p0

    .line 875
    .line 876
    :goto_17
    move-object/from16 v1, v16

    .line 877
    .line 878
    iget-object v1, v1, Lyb/n;->c:Lma/j;

    .line 879
    .line 880
    instance-of v4, v1, Lma/e;

    .line 881
    .line 882
    if-eqz v4, :cond_1c

    .line 883
    .line 884
    check-cast v1, Lma/e;

    .line 885
    .line 886
    goto :goto_18

    .line 887
    :cond_1c
    const/4 v1, 0x0

    .line 888
    :goto_18
    if-eqz v1, :cond_1d

    .line 889
    .line 890
    invoke-interface {v1}, Lma/e;->h()I

    .line 891
    .line 892
    .line 893
    move-result v1

    .line 894
    goto :goto_19

    .line 895
    :cond_1d
    const/4 v1, 0x0

    .line 896
    :goto_19
    const/4 v4, 0x5

    .line 897
    if-ne v1, v4, :cond_1e

    .line 898
    .line 899
    new-instance v1, Lyb/e0;

    .line 900
    .line 901
    invoke-direct {v1, v3, v0, v2}, Lyb/e0;-><init>(Lyb/z;Lgb/m;Lac/k;)V

    .line 902
    .line 903
    .line 904
    const/4 v4, 0x0

    .line 905
    invoke-virtual {v2, v4, v1}, Lpa/x0;->E0(Lbc/j;Lx9/a;)V

    .line 906
    .line 907
    .line 908
    :cond_1e
    new-instance v1, Lpa/u;

    .line 909
    .line 910
    const/4 v4, 0x0

    .line 911
    invoke-virtual {v3, v0, v4}, Lyb/z;->c(Lgb/m;Z)Lna/h;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    invoke-direct {v1, v2, v4}, Lpa/u;-><init>(Lpa/l0;Lna/h;)V

    .line 916
    .line 917
    .line 918
    new-instance v4, Lpa/u;

    .line 919
    .line 920
    const/4 v5, 0x1

    .line 921
    invoke-virtual {v3, v0, v5}, Lyb/z;->c(Lgb/m;Z)Lna/h;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-direct {v4, v2, v0}, Lpa/u;-><init>(Lpa/l0;Lna/h;)V

    .line 926
    .line 927
    .line 928
    move-object/from16 v0, v28

    .line 929
    .line 930
    invoke-virtual {v2, v0, v12, v1, v4}, Lpa/l0;->O0(Lpa/m0;Lpa/n0;Lma/s;Lma/s;)V

    .line 931
    .line 932
    .line 933
    return-object v2

    .line 934
    :cond_1f
    move-object v3, v15

    .line 935
    const/16 v0, 0xb

    .line 936
    .line 937
    invoke-static {v0}, Lib/b;->a(I)V

    .line 938
    .line 939
    .line 940
    const/4 v0, 0x0

    .line 941
    throw v0

    .line 942
    :cond_20
    move-object v3, v15

    .line 943
    const/4 v0, 0x0

    .line 944
    const/16 v1, 0xa

    .line 945
    .line 946
    invoke-static {v1}, Lib/b;->a(I)V

    .line 947
    .line 948
    .line 949
    throw v0
.end method

.method public final g(Lgb/q;)Lac/m;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v12, p1

    .line 3
    .line 4
    const-string v1, "proto"

    .line 5
    .line 6
    invoke-static {v12, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v12, Lgb/q;->l:Ljava/util/List;

    .line 10
    .line 11
    const-string v2, "proto.annotationList"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v13, v0, Lyb/z;->a:Lyb/n;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lgb/a;

    .line 44
    .line 45
    const-string v4, "it"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v13, Lyb/n;->b:Lib/c;

    .line 51
    .line 52
    iget-object v5, v0, Lyb/z;->b:Lyb/f;

    .line 53
    .line 54
    invoke-virtual {v5, v3, v4}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v2}, Lna/h$a;->a(Ljava/util/List;)Lna/h;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    sget-object v1, Lib/b;->d:Lib/b$b;

    .line 67
    .line 68
    iget v2, v12, Lgb/q;->d:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lgb/w;

    .line 75
    .line 76
    invoke-static {v1}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    new-instance v14, Lac/m;

    .line 81
    .line 82
    iget-object v1, v13, Lyb/n;->a:Lyb/l;

    .line 83
    .line 84
    iget-object v2, v1, Lyb/l;->a:Lbc/l;

    .line 85
    .line 86
    iget-object v3, v13, Lyb/n;->c:Lma/j;

    .line 87
    .line 88
    iget-object v1, v13, Lyb/n;->b:Lib/c;

    .line 89
    .line 90
    iget v5, v12, Lgb/q;->e:I

    .line 91
    .line 92
    invoke-static {v1, v5}, La6/a;->o(Lib/c;I)Llb/f;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v8, v13, Lyb/n;->b:Lib/c;

    .line 97
    .line 98
    iget-object v9, v13, Lyb/n;->d:Lib/g;

    .line 99
    .line 100
    iget-object v10, v13, Lyb/n;->e:Lib/h;

    .line 101
    .line 102
    iget-object v11, v13, Lyb/n;->g:Lac/g;

    .line 103
    .line 104
    move-object v1, v14

    .line 105
    move-object/from16 v7, p1

    .line 106
    .line 107
    invoke-direct/range {v1 .. v11}, Lac/m;-><init>(Lbc/l;Lma/j;Lna/h;Llb/f;Lma/q;Lgb/q;Lib/c;Lib/g;Lib/h;Lac/g;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v12, Lgb/q;->f:Ljava/util/List;

    .line 111
    .line 112
    const-string v2, "proto.typeParameterList"

    .line 113
    .line 114
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v13, v14, v1}, Lyb/n;->b(Lyb/n;Lpa/q;Ljava/util/List;)Lyb/n;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v1, v1, Lyb/n;->h:Lyb/k0;

    .line 122
    .line 123
    invoke-virtual {v1}, Lyb/k0;->b()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v3, v13, Lyb/n;->d:Lib/g;

    .line 128
    .line 129
    const-string v4, "typeTable"

    .line 130
    .line 131
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v5, v12, Lgb/q;->c:I

    .line 135
    .line 136
    and-int/lit8 v6, v5, 0x4

    .line 137
    .line 138
    const/4 v7, 0x1

    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v9, 0x4

    .line 141
    if-ne v6, v9, :cond_1

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    const/4 v6, 0x0

    .line 146
    :goto_1
    if-eqz v6, :cond_2

    .line 147
    .line 148
    iget-object v5, v12, Lgb/q;->g:Lgb/p;

    .line 149
    .line 150
    const-string v6, "underlyingType"

    .line 151
    .line 152
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_2
    const/16 v6, 0x8

    .line 157
    .line 158
    and-int/2addr v5, v6

    .line 159
    if-ne v5, v6, :cond_3

    .line 160
    .line 161
    const/4 v5, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    const/4 v5, 0x0

    .line 164
    :goto_2
    if-eqz v5, :cond_8

    .line 165
    .line 166
    iget v5, v12, Lgb/q;->h:I

    .line 167
    .line 168
    invoke-virtual {v3, v5}, Lib/g;->a(I)Lgb/p;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    :goto_3
    invoke-virtual {v1, v5, v8}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget v4, v12, Lgb/q;->c:I

    .line 180
    .line 181
    and-int/lit8 v6, v4, 0x10

    .line 182
    .line 183
    const/16 v9, 0x10

    .line 184
    .line 185
    if-ne v6, v9, :cond_4

    .line 186
    .line 187
    const/4 v6, 0x1

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    const/4 v6, 0x0

    .line 190
    :goto_4
    if-eqz v6, :cond_5

    .line 191
    .line 192
    iget-object v3, v12, Lgb/q;->j:Lgb/p;

    .line 193
    .line 194
    const-string v4, "expandedType"

    .line 195
    .line 196
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_5
    const/16 v6, 0x20

    .line 201
    .line 202
    and-int/2addr v4, v6

    .line 203
    if-ne v4, v6, :cond_6

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_6
    const/4 v7, 0x0

    .line 207
    :goto_5
    if-eqz v7, :cond_7

    .line 208
    .line 209
    iget v4, v12, Lgb/q;->k:I

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lib/g;->a(I)Lgb/p;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_6
    invoke-virtual {v1, v3, v8}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v14, v2, v5, v1}, Lac/m;->E0(Ljava/util/List;Lcc/m0;Lcc/m0;)V

    .line 220
    .line 221
    .line 222
    return-object v14

    .line 223
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string v2, "No expandedType in ProtoBuf.TypeAlias"

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v1

    .line 235
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string v2, "No underlyingType in ProtoBuf.TypeAlias"

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v1
.end method

.method public final h(Ljava/util/List;Lmb/p;Lyb/c;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgb/t;",
            ">;",
            "Lmb/p;",
            "Lyb/c;",
            ")",
            "Ljava/util/List<",
            "Lma/a1;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v8, v7, Lyb/z;->a:Lyb/n;

    .line 4
    .line 5
    iget-object v0, v8, Lyb/n;->c:Lma/j;

    .line 6
    .line 7
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object/from16 v21, v0

    .line 13
    .line 14
    check-cast v21, Lma/a;

    .line 15
    .line 16
    invoke-interface/range {v21 .. v21}, Lma/k;->b()Lma/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "callableDescriptor.containingDeclaration"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Lyb/z;->a(Lma/j;)Lyb/g0;

    .line 26
    .line 27
    .line 28
    move-result-object v22

    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    .line 33
    new-instance v15, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v23

    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_9

    .line 53
    .line 54
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    add-int/lit8 v24, v12, 0x1

    .line 59
    .line 60
    if-ltz v12, :cond_8

    .line 61
    .line 62
    move-object v9, v0

    .line 63
    check-cast v9, Lgb/t;

    .line 64
    .line 65
    iget v0, v9, Lgb/t;->c:I

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    and-int/2addr v0, v1

    .line 69
    if-ne v0, v1, :cond_0

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_1
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget v0, v9, Lgb/t;->d:I

    .line 77
    .line 78
    move v10, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    const/4 v10, 0x0

    .line 82
    :goto_2
    if-eqz v22, :cond_2

    .line 83
    .line 84
    sget-object v0, Lib/b;->c:Lib/b$a;

    .line 85
    .line 86
    const-string v1, "HAS_ANNOTATIONS.get(flags)"

    .line 87
    .line 88
    invoke-static {v0, v10, v1}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    new-instance v11, Lac/o;

    .line 95
    .line 96
    iget-object v0, v8, Lyb/n;->a:Lyb/l;

    .line 97
    .line 98
    iget-object v13, v0, Lyb/l;->a:Lbc/l;

    .line 99
    .line 100
    new-instance v14, Lyb/z$c;

    .line 101
    .line 102
    move-object v0, v14

    .line 103
    move-object/from16 v1, p0

    .line 104
    .line 105
    move-object/from16 v2, v22

    .line 106
    .line 107
    move-object/from16 v3, p2

    .line 108
    .line 109
    move-object/from16 v4, p3

    .line 110
    .line 111
    move v5, v12

    .line 112
    move-object v6, v9

    .line 113
    invoke-direct/range {v0 .. v6}, Lyb/z$c;-><init>(Lyb/z;Lyb/g0;Lmb/p;Lyb/c;ILgb/t;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v11, v13, v14}, Lac/o;-><init>(Lbc/l;Lx9/a;)V

    .line 117
    .line 118
    .line 119
    move-object v13, v11

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    sget-object v0, Lna/h$a;->a:Lna/h$a$a;

    .line 122
    .line 123
    move-object v13, v0

    .line 124
    :goto_3
    const/4 v11, 0x0

    .line 125
    iget-object v0, v8, Lyb/n;->b:Lib/c;

    .line 126
    .line 127
    iget v1, v9, Lgb/t;->e:I

    .line 128
    .line 129
    invoke-static {v0, v1}, La6/a;->o(Lib/c;I)Llb/f;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    iget-object v0, v8, Lyb/n;->d:Lib/g;

    .line 134
    .line 135
    invoke-static {v9, v0}, Lib/f;->e(Lgb/t;Lib/g;)Lgb/p;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget-object v2, v8, Lyb/n;->h:Lyb/k0;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sget-object v3, Lib/b;->G:Lib/b$a;

    .line 146
    .line 147
    const-string v4, "DECLARES_DEFAULT_VALUE.get(flags)"

    .line 148
    .line 149
    invoke-static {v3, v10, v4}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    sget-object v3, Lib/b;->H:Lib/b$a;

    .line 154
    .line 155
    const-string v4, "IS_CROSSINLINE.get(flags)"

    .line 156
    .line 157
    invoke-static {v3, v10, v4}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v17

    .line 161
    sget-object v3, Lib/b;->I:Lib/b$a;

    .line 162
    .line 163
    invoke-virtual {v3, v10}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-string v4, "IS_NOINLINE.get(flags)"

    .line 168
    .line 169
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v18

    .line 176
    const-string v3, "typeTable"

    .line 177
    .line 178
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v3, v9, Lgb/t;->c:I

    .line 182
    .line 183
    and-int/lit8 v4, v3, 0x10

    .line 184
    .line 185
    const/16 v5, 0x10

    .line 186
    .line 187
    if-ne v4, v5, :cond_3

    .line 188
    .line 189
    const/4 v4, 0x1

    .line 190
    goto :goto_4

    .line 191
    :cond_3
    const/4 v4, 0x0

    .line 192
    :goto_4
    if-eqz v4, :cond_4

    .line 193
    .line 194
    iget-object v0, v9, Lgb/t;->h:Lgb/p;

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_4
    and-int/lit8 v3, v3, 0x20

    .line 198
    .line 199
    const/16 v4, 0x20

    .line 200
    .line 201
    if-ne v3, v4, :cond_5

    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    goto :goto_5

    .line 205
    :cond_5
    const/4 v3, 0x0

    .line 206
    :goto_5
    if-eqz v3, :cond_6

    .line 207
    .line 208
    iget v3, v9, Lgb/t;->j:I

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Lib/g;->a(I)Lgb/p;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    goto :goto_6

    .line 215
    :cond_6
    const/4 v0, 0x0

    .line 216
    :goto_6
    if-eqz v0, :cond_7

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto :goto_7

    .line 223
    :cond_7
    const/4 v0, 0x0

    .line 224
    :goto_7
    move-object/from16 v19, v0

    .line 225
    .line 226
    sget-object v20, Lma/r0;->a:Lma/r0$a;

    .line 227
    .line 228
    new-instance v0, Lpa/v0;

    .line 229
    .line 230
    move-object v9, v0

    .line 231
    move-object/from16 v10, v21

    .line 232
    .line 233
    move-object v2, v15

    .line 234
    move-object v15, v1

    .line 235
    invoke-direct/range {v9 .. v20}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-object v15, v2

    .line 242
    move/from16 v12, v24

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_8
    invoke-static {}, Lb8/f;->k0()V

    .line 247
    .line 248
    .line 249
    const/4 v0, 0x0

    .line 250
    throw v0

    .line 251
    :cond_9
    move-object v2, v15

    .line 252
    invoke-static {v2}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    return-object v0
.end method
