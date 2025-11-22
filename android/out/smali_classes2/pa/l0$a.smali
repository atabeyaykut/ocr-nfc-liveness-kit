.class public final Lpa/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lma/j;

.field public b:Lma/a0;

.field public c:Lma/q;

.field public d:Lma/l0;

.field public e:Lma/b$a;

.field public f:Lcc/l1;

.field public g:Z

.field public final h:Lma/o0;

.field public final i:Llb/f;

.field public final j:Lcc/e0;

.field public final synthetic k:Lpa/l0;


# direct methods
.method public constructor <init>(Lpa/l0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lpa/l0$a;->k:Lpa/l0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lpa/q;->b()Lma/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lpa/l0$a;->a:Lma/j;

    .line 11
    .line 12
    invoke-virtual {p1}, Lpa/l0;->j()Lma/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lpa/l0$a;->b:Lma/a0;

    .line 17
    .line 18
    invoke-virtual {p1}, Lpa/l0;->getVisibility()Lma/q;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lpa/l0$a;->c:Lma/q;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lpa/l0$a;->d:Lma/l0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lpa/l0;->k0()Lma/b$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lpa/l0$a;->e:Lma/b$a;

    .line 32
    .line 33
    sget-object v0, Lcc/l1;->a:Lcc/l1$a;

    .line 34
    .line 35
    iput-object v0, p0, Lpa/l0$a;->f:Lcc/l1;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lpa/l0$a;->g:Z

    .line 39
    .line 40
    iget-object v0, p1, Lpa/l0;->x:Lma/o0;

    .line 41
    .line 42
    iput-object v0, p0, Lpa/l0$a;->h:Lma/o0;

    .line 43
    .line 44
    invoke-virtual {p1}, Lpa/p;->getName()Llb/f;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lpa/l0$a;->i:Llb/f;

    .line 49
    .line 50
    invoke-virtual {p1}, Lpa/w0;->getType()Lcc/e0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lpa/l0$a;->j:Lcc/e0;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v14, 0x3

    goto :goto_1

    :cond_1
    const/4 v14, 0x2

    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_0
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_1
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_2
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_3
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_4
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_5
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_6
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_7
    aput-object v15, v14, v16

    :goto_2
    const-string v16, "setName"

    const-string v17, "setSubstitution"

    const-string v18, "setTypeParameters"

    const-string v19, "setKind"

    const-string v20, "setVisibility"

    const-string v21, "setModality"

    const-string v22, "setReturnType"

    const-string v23, "setOwner"

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v15, v14, v12

    goto :goto_3

    :cond_2
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_3
    aput-object v17, v14, v12

    goto :goto_3

    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_5
    aput-object v18, v14, v12

    goto :goto_3

    :cond_6
    aput-object v16, v14, v12

    goto :goto_3

    :cond_7
    aput-object v19, v14, v12

    goto :goto_3

    :cond_8
    aput-object v20, v14, v12

    goto :goto_3

    :cond_9
    aput-object v21, v14, v12

    goto :goto_3

    :cond_a
    aput-object v22, v14, v12

    goto :goto_3

    :cond_b
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_c
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_d
    aput-object v23, v14, v12

    :goto_3
    packed-switch v0, :pswitch_data_1

    aput-object v23, v14, v11

    goto :goto_4

    :pswitch_8
    aput-object v16, v14, v11

    goto :goto_4

    :pswitch_9
    aput-object v17, v14, v11

    goto :goto_4

    :pswitch_a
    aput-object v18, v14, v11

    goto :goto_4

    :pswitch_b
    aput-object v19, v14, v11

    goto :goto_4

    :pswitch_c
    aput-object v20, v14, v11

    goto :goto_4

    :pswitch_d
    aput-object v21, v14, v11

    goto :goto_4

    :pswitch_e
    aput-object v22, v14, v11

    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_e

    if-eq v0, v11, :cond_e

    if-eq v0, v10, :cond_e

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final b()Lpa/l0;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v8, v0, Lpa/l0$a;->k:Lpa/l0;

    .line 4
    .line 5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lpa/l0$a;->a:Lma/j;

    .line 9
    .line 10
    iget-object v3, v0, Lpa/l0$a;->b:Lma/a0;

    .line 11
    .line 12
    iget-object v4, v0, Lpa/l0$a;->c:Lma/q;

    .line 13
    .line 14
    iget-object v5, v0, Lpa/l0$a;->d:Lma/l0;

    .line 15
    .line 16
    iget-object v6, v0, Lpa/l0$a;->e:Lma/b$a;

    .line 17
    .line 18
    iget-object v7, v0, Lpa/l0$a;->i:Llb/f;

    .line 19
    .line 20
    sget-object v20, Lma/r0;->a:Lma/r0$a;

    .line 21
    .line 22
    move-object v1, v8

    .line 23
    invoke-virtual/range {v1 .. v7}, Lpa/l0;->M0(Lma/j;Lma/a0;Lma/q;Lma/l0;Lma/b$a;Llb/f;)Lpa/l0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v8}, Lpa/l0;->getTypeParameters()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v11, Ljava/util/ArrayList;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lpa/l0$a;->f:Lcc/l1;

    .line 44
    .line 45
    invoke-static {v2, v3, v1, v11}, La6/a;->B(Ljava/util/List;Lcc/l1;Lma/j;Ljava/util/List;)Lcc/p1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lcc/t1;->e:Lcc/t1;

    .line 50
    .line 51
    iget-object v4, v0, Lpa/l0$a;->j:Lcc/e0;

    .line 52
    .line 53
    invoke-virtual {v2, v4, v3}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    if-nez v10, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    sget-object v6, Lcc/t1;->d:Lcc/t1;

    .line 61
    .line 62
    invoke-virtual {v2, v4, v6}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Lpa/l0;->P0(Lcc/e0;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v4, v0, Lpa/l0$a;->h:Lma/o0;

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-interface {v4, v2}, Lma/o0;->c(Lcc/p1;)Lpa/d;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-nez v4, :cond_2

    .line 80
    .line 81
    :goto_0
    const/4 v1, 0x0

    .line 82
    goto/16 :goto_f

    .line 83
    .line 84
    :cond_2
    move-object v12, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 v12, 0x0

    .line 87
    :goto_1
    iget-object v4, v8, Lpa/l0;->y:Lma/o0;

    .line 88
    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    invoke-interface {v4}, Lma/z0;->getType()Lcc/e0;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v2, v7, v6}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    if-nez v7, :cond_4

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    new-instance v9, Lpa/o0;

    .line 104
    .line 105
    new-instance v13, Lwb/d;

    .line 106
    .line 107
    invoke-interface {v4}, Lma/o0;->getValue()Lwb/g;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    invoke-direct {v13, v1, v7, v14}, Lwb/d;-><init>(Lma/a;Lcc/e0;Lwb/g;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v4}, Lna/a;->getAnnotations()Lna/h;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-direct {v9, v1, v13, v4}, Lpa/o0;-><init>(Lma/j;Lwb/a;Lna/h;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    move-object v13, v9

    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const/4 v13, 0x0

    .line 124
    :goto_3
    new-instance v14, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v4, v8, Lpa/l0;->w:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_8

    .line 140
    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lma/o0;

    .line 146
    .line 147
    invoke-interface {v7}, Lma/z0;->getType()Lcc/e0;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v2, v9, v6}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    if-nez v9, :cond_6

    .line 156
    .line 157
    move-object/from16 v17, v4

    .line 158
    .line 159
    move-object/from16 v16, v6

    .line 160
    .line 161
    const/4 v15, 0x0

    .line 162
    goto :goto_5

    .line 163
    :cond_6
    new-instance v15, Lpa/o0;

    .line 164
    .line 165
    new-instance v5, Lwb/c;

    .line 166
    .line 167
    invoke-interface {v7}, Lma/o0;->getValue()Lwb/g;

    .line 168
    .line 169
    .line 170
    move-result-object v16

    .line 171
    check-cast v16, Lwb/f;

    .line 172
    .line 173
    move-object/from16 v17, v4

    .line 174
    .line 175
    invoke-interface/range {v16 .. v16}, Lwb/f;->a()Llb/f;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object/from16 v16, v6

    .line 180
    .line 181
    invoke-interface {v7}, Lma/o0;->getValue()Lwb/g;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-direct {v5, v1, v9, v4, v6}, Lwb/c;-><init>(Lma/a;Lcc/e0;Llb/f;Lwb/g;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v7}, Lna/a;->getAnnotations()Lna/h;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-direct {v15, v1, v5, v4}, Lpa/o0;-><init>(Lma/j;Lwb/a;Lna/h;)V

    .line 193
    .line 194
    .line 195
    :goto_5
    if-eqz v15, :cond_7

    .line 196
    .line 197
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_7
    move-object/from16 v6, v16

    .line 201
    .line 202
    move-object/from16 v4, v17

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    move-object v9, v1

    .line 206
    invoke-virtual/range {v9 .. v14}, Lpa/l0;->Q0(Lcc/e0;Ljava/util/List;Lma/o0;Lpa/o0;Ljava/util/List;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, v8, Lpa/l0;->A:Lpa/m0;

    .line 210
    .line 211
    sget-object v5, Lma/b$a;->b:Lma/b$a;

    .line 212
    .line 213
    if-nez v4, :cond_9

    .line 214
    .line 215
    const/4 v6, 0x0

    .line 216
    goto :goto_7

    .line 217
    :cond_9
    new-instance v6, Lpa/m0;

    .line 218
    .line 219
    invoke-virtual {v4}, Lna/b;->getAnnotations()Lna/h;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    iget-object v12, v0, Lpa/l0$a;->b:Lma/a0;

    .line 224
    .line 225
    iget-object v4, v8, Lpa/l0;->A:Lpa/m0;

    .line 226
    .line 227
    invoke-virtual {v4}, Lpa/k0;->getVisibility()Lma/q;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iget-object v7, v0, Lpa/l0$a;->e:Lma/b$a;

    .line 232
    .line 233
    if-ne v7, v5, :cond_a

    .line 234
    .line 235
    invoke-virtual {v4}, Lma/q;->d()Lma/q;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-static {v7}, Lma/p;->e(Lma/q;)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_a

    .line 244
    .line 245
    sget-object v4, Lma/p;->h:Lma/p$k;

    .line 246
    .line 247
    :cond_a
    move-object v13, v4

    .line 248
    iget-object v4, v8, Lpa/l0;->A:Lpa/m0;

    .line 249
    .line 250
    iget-boolean v14, v4, Lpa/k0;->e:Z

    .line 251
    .line 252
    iget-boolean v15, v4, Lpa/k0;->f:Z

    .line 253
    .line 254
    iget-boolean v4, v4, Lpa/k0;->j:Z

    .line 255
    .line 256
    iget-object v7, v0, Lpa/l0$a;->e:Lma/b$a;

    .line 257
    .line 258
    iget-object v9, v0, Lpa/l0$a;->d:Lma/l0;

    .line 259
    .line 260
    if-nez v9, :cond_b

    .line 261
    .line 262
    const/16 v18, 0x0

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    invoke-interface {v9}, Lma/l0;->l()Lpa/m0;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    move-object/from16 v18, v9

    .line 270
    .line 271
    :goto_6
    move-object v9, v6

    .line 272
    move-object v10, v1

    .line 273
    move/from16 v16, v4

    .line 274
    .line 275
    move-object/from16 v17, v7

    .line 276
    .line 277
    move-object/from16 v19, v20

    .line 278
    .line 279
    invoke-direct/range {v9 .. v19}, Lpa/m0;-><init>(Lma/l0;Lna/h;Lma/a0;Lma/q;ZZZLma/b$a;Lma/m0;Lma/r0;)V

    .line 280
    .line 281
    .line 282
    :goto_7
    if-eqz v6, :cond_d

    .line 283
    .line 284
    iget-object v4, v8, Lpa/l0;->A:Lpa/m0;

    .line 285
    .line 286
    iget-object v7, v4, Lpa/m0;->n:Lcc/e0;

    .line 287
    .line 288
    invoke-static {v2, v4}, Lpa/l0;->N0(Lcc/p1;Lma/k0;)Lma/u;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    iput-object v4, v6, Lpa/k0;->m:Lma/u;

    .line 293
    .line 294
    if-eqz v7, :cond_c

    .line 295
    .line 296
    invoke-virtual {v2, v7, v3}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    goto :goto_8

    .line 301
    :cond_c
    const/4 v3, 0x0

    .line 302
    :goto_8
    invoke-virtual {v6, v3}, Lpa/m0;->M0(Lcc/e0;)V

    .line 303
    .line 304
    .line 305
    :cond_d
    iget-object v3, v8, Lpa/l0;->B:Lma/n0;

    .line 306
    .line 307
    if-nez v3, :cond_e

    .line 308
    .line 309
    const/4 v4, 0x0

    .line 310
    goto :goto_a

    .line 311
    :cond_e
    new-instance v4, Lpa/n0;

    .line 312
    .line 313
    invoke-interface {v3}, Lna/a;->getAnnotations()Lna/h;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    iget-object v12, v0, Lpa/l0$a;->b:Lma/a0;

    .line 318
    .line 319
    iget-object v3, v8, Lpa/l0;->B:Lma/n0;

    .line 320
    .line 321
    invoke-interface {v3}, Lma/z;->getVisibility()Lma/q;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iget-object v7, v0, Lpa/l0$a;->e:Lma/b$a;

    .line 326
    .line 327
    if-ne v7, v5, :cond_f

    .line 328
    .line 329
    invoke-virtual {v3}, Lma/q;->d()Lma/q;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static {v5}, Lma/p;->e(Lma/q;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_f

    .line 338
    .line 339
    sget-object v3, Lma/p;->h:Lma/p$k;

    .line 340
    .line 341
    :cond_f
    move-object v13, v3

    .line 342
    iget-object v3, v8, Lpa/l0;->B:Lma/n0;

    .line 343
    .line 344
    invoke-interface {v3}, Lma/k0;->Q()Z

    .line 345
    .line 346
    .line 347
    move-result v14

    .line 348
    iget-object v3, v8, Lpa/l0;->B:Lma/n0;

    .line 349
    .line 350
    invoke-interface {v3}, Lma/z;->isExternal()Z

    .line 351
    .line 352
    .line 353
    move-result v15

    .line 354
    iget-object v3, v8, Lpa/l0;->B:Lma/n0;

    .line 355
    .line 356
    invoke-interface {v3}, Lma/u;->isInline()Z

    .line 357
    .line 358
    .line 359
    move-result v16

    .line 360
    iget-object v3, v0, Lpa/l0$a;->e:Lma/b$a;

    .line 361
    .line 362
    iget-object v5, v0, Lpa/l0$a;->d:Lma/l0;

    .line 363
    .line 364
    if-nez v5, :cond_10

    .line 365
    .line 366
    const/16 v18, 0x0

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_10
    invoke-interface {v5}, Lma/l0;->f()Lma/n0;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    move-object/from16 v18, v5

    .line 374
    .line 375
    :goto_9
    move-object v9, v4

    .line 376
    move-object v10, v1

    .line 377
    move-object/from16 v17, v3

    .line 378
    .line 379
    move-object/from16 v19, v20

    .line 380
    .line 381
    invoke-direct/range {v9 .. v19}, Lpa/n0;-><init>(Lma/l0;Lna/h;Lma/a0;Lma/q;ZZZLma/b$a;Lma/n0;Lma/r0;)V

    .line 382
    .line 383
    .line 384
    :goto_a
    if-eqz v4, :cond_14

    .line 385
    .line 386
    iget-object v3, v8, Lpa/l0;->B:Lma/n0;

    .line 387
    .line 388
    invoke-interface {v3}, Lma/a;->g()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v13

    .line 392
    const/4 v15, 0x0

    .line 393
    const/16 v16, 0x0

    .line 394
    .line 395
    const/16 v17, 0x0

    .line 396
    .line 397
    move-object v12, v4

    .line 398
    move-object v14, v2

    .line 399
    invoke-static/range {v12 .. v17}, Lpa/x;->M0(Lma/u;Ljava/util/List;Lcc/p1;ZZ[Z)Ljava/util/ArrayList;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    const/4 v5, 0x0

    .line 404
    if-nez v3, :cond_11

    .line 405
    .line 406
    iget-object v3, v0, Lpa/l0$a;->a:Lma/j;

    .line 407
    .line 408
    invoke-static {v3}, Lsb/b;->e(Lma/j;)Lja/k;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v3}, Lja/k;->n()Lcc/m0;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    iget-object v7, v8, Lpa/l0;->B:Lma/n0;

    .line 417
    .line 418
    invoke-interface {v7}, Lma/a;->g()Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    check-cast v7, Lma/a1;

    .line 427
    .line 428
    invoke-interface {v7}, Lna/a;->getAnnotations()Lna/h;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-static {v4, v3, v7}, Lpa/n0;->L0(Lpa/n0;Lcc/e0;Lna/h;)Lpa/v0;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    const/4 v9, 0x1

    .line 445
    if-ne v7, v9, :cond_13

    .line 446
    .line 447
    iget-object v7, v8, Lpa/l0;->B:Lma/n0;

    .line 448
    .line 449
    invoke-static {v2, v7}, Lpa/l0;->N0(Lcc/p1;Lma/k0;)Lma/u;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    iput-object v7, v4, Lpa/k0;->m:Lma/u;

    .line 454
    .line 455
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    check-cast v3, Lma/a1;

    .line 460
    .line 461
    if-eqz v3, :cond_12

    .line 462
    .line 463
    iput-object v3, v4, Lpa/n0;->n:Lma/a1;

    .line 464
    .line 465
    goto :goto_b

    .line 466
    :cond_12
    const/4 v1, 0x6

    .line 467
    invoke-static {v1}, Lpa/n0;->C(I)V

    .line 468
    .line 469
    .line 470
    const/4 v3, 0x0

    .line 471
    throw v3

    .line 472
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 473
    .line 474
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 475
    .line 476
    .line 477
    throw v1

    .line 478
    :cond_14
    :goto_b
    const/4 v3, 0x0

    .line 479
    iget-object v5, v8, Lpa/l0;->C:Lma/s;

    .line 480
    .line 481
    if-nez v5, :cond_15

    .line 482
    .line 483
    move-object v7, v3

    .line 484
    goto :goto_c

    .line 485
    :cond_15
    new-instance v7, Lpa/u;

    .line 486
    .line 487
    invoke-interface {v5}, Lna/a;->getAnnotations()Lna/h;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-direct {v7, v1, v5}, Lpa/u;-><init>(Lpa/l0;Lna/h;)V

    .line 492
    .line 493
    .line 494
    :goto_c
    iget-object v5, v8, Lpa/l0;->D:Lma/s;

    .line 495
    .line 496
    if-nez v5, :cond_16

    .line 497
    .line 498
    goto :goto_d

    .line 499
    :cond_16
    new-instance v3, Lpa/u;

    .line 500
    .line 501
    invoke-interface {v5}, Lna/a;->getAnnotations()Lna/h;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-direct {v3, v1, v5}, Lpa/u;-><init>(Lpa/l0;Lna/h;)V

    .line 506
    .line 507
    .line 508
    :goto_d
    move-object v5, v3

    .line 509
    invoke-virtual {v1, v6, v4, v7, v5}, Lpa/l0;->O0(Lpa/m0;Lpa/n0;Lma/s;Lma/s;)V

    .line 510
    .line 511
    .line 512
    iget-boolean v3, v0, Lpa/l0$a;->g:Z

    .line 513
    .line 514
    if-eqz v3, :cond_18

    .line 515
    .line 516
    new-instance v3, Lkc/d;

    .line 517
    .line 518
    invoke-direct {v3}, Lkc/d;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v8}, Lpa/l0;->e()Ljava/util/Collection;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    .line 531
    .line 532
    move-result v5

    .line 533
    if-eqz v5, :cond_17

    .line 534
    .line 535
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    check-cast v5, Lma/l0;

    .line 540
    .line 541
    invoke-interface {v5, v2}, Lma/l0;->c(Lcc/p1;)Lma/l0;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-virtual {v3, v5}, Lkc/d;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_17
    invoke-virtual {v1, v3}, Lpa/l0;->w0(Ljava/util/Collection;)V

    .line 550
    .line 551
    .line 552
    :cond_18
    invoke-virtual {v8}, Lpa/l0;->v()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_19

    .line 557
    .line 558
    iget-object v2, v8, Lpa/x0;->h:Lx9/a;

    .line 559
    .line 560
    if-eqz v2, :cond_19

    .line 561
    .line 562
    iget-object v3, v8, Lpa/x0;->g:Lbc/j;

    .line 563
    .line 564
    invoke-virtual {v1, v3, v2}, Lpa/x0;->E0(Lbc/j;Lx9/a;)V

    .line 565
    .line 566
    .line 567
    :cond_19
    :goto_f
    return-object v1
.end method
