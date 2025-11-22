.class public abstract Lza/o;
.super Lvb/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza/o$a;,
        Lza/o$b;
    }
.end annotation


# static fields
.field public static final synthetic m:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lp4/g7;

.field public final c:Lza/o;

.field public final d:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Collection<",
            "Lma/j;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Lza/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Llb/f;",
            "Ljava/util/Collection<",
            "Lma/q0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Llb/f;",
            "Lma/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Llb/f;",
            "Ljava/util/Collection<",
            "Lma/q0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lbc/i;

.field public final j:Lbc/i;

.field public final k:Lbc/i;

.field public final l:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Llb/f;",
            "Ljava/util/List<",
            "Lma/l0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lza/o;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "propertyNamesLazy"

    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "classNamesLazy"

    const-string v4, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lza/o;->m:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lp4/g7;Lza/o;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lvb/j;-><init>()V

    iput-object p1, p0, Lza/o;->b:Lp4/g7;

    iput-object p2, p0, Lza/o;->c:Lza/o;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$c;

    invoke-direct {v0, p0}, Lza/o$c;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->h(Lx9/a;)Lbc/d;

    move-result-object p2

    iput-object p2, p0, Lza/o;->d:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$g;

    invoke-direct {v0, p0}, Lza/o$g;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/o;->e:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$f;

    invoke-direct {v0, p0}, Lza/o$f;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    move-result-object p2

    iput-object p2, p0, Lza/o;->f:Lbc/g;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$e;

    invoke-direct {v0, p0}, Lza/o$e;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    move-result-object p2

    iput-object p2, p0, Lza/o;->g:Lbc/h;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$i;

    invoke-direct {v0, p0}, Lza/o$i;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    move-result-object p2

    iput-object p2, p0, Lza/o;->h:Lbc/g;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$h;

    invoke-direct {v0, p0}, Lza/o$h;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/o;->i:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$k;

    invoke-direct {v0, p0}, Lza/o$k;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/o;->j:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance v0, Lza/o$d;

    invoke-direct {v0, p0}, Lza/o$d;-><init>(Lza/o;)V

    invoke-interface {p2, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/o;->k:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p1

    new-instance p2, Lza/o$j;

    invoke-direct {p2, p0}, Lza/o$j;-><init>(Lza/o;)V

    invoke-interface {p1, p2}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    move-result-object p1

    iput-object p1, p0, Lza/o;->l:Lbc/g;

    return-void
.end method

.method public static l(Lcb/q;Lp4/g7;)Lcc/e0;
    .locals 5

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcb/p;->i()Lsa/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lsa/r;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x6

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v3, v0, v4, v1, v2}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p1, p1, Lp4/g7;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lab/d;

    .line 25
    .line 26
    invoke-interface {p0}, Lcb/q;->h()Lsa/e0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0, v0}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static u(Lp4/g7;Lpa/x;Ljava/util/List;)Lza/o$b;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "jValueParameters"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {v2}, Lm9/t;->z1(Ljava/lang/Iterable;)Lm9/z;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lm9/z;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_0
    move-object v6, v2

    .line 33
    check-cast v6, Lm9/a0;

    .line 34
    .line 35
    invoke-virtual {v6}, Lm9/a0;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_6

    .line 40
    .line 41
    invoke-virtual {v6}, Lm9/a0;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lm9/y;

    .line 46
    .line 47
    iget v10, v6, Lm9/y;->a:I

    .line 48
    .line 49
    iget-object v6, v6, Lm9/y;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Lcb/z;

    .line 52
    .line 53
    invoke-static {v0, v6}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    const/4 v7, 0x2

    .line 58
    const/4 v8, 0x7

    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-static {v7, v4, v4, v9, v8}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v6}, Lcb/z;->a()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/4 v8, 0x1

    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    invoke-interface {v6}, Lcb/z;->getType()Lcb/w;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    instance-of v12, v7, Lcb/f;

    .line 76
    .line 77
    if-eqz v12, :cond_0

    .line 78
    .line 79
    move-object v9, v7

    .line 80
    check-cast v9, Lcb/f;

    .line 81
    .line 82
    :cond_0
    if-eqz v9, :cond_1

    .line 83
    .line 84
    iget-object v7, v0, Lp4/g7;->e:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v7, Lab/d;

    .line 87
    .line 88
    invoke-virtual {v7, v9, v4, v8}, Lab/d;->c(Lcb/f;Lab/a;Z)Lcc/s1;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual/range {p0 .. p0}, Lp4/g7;->a()Lma/b0;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {v7}, Lma/b0;->m()Lja/k;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7, v4}, Lja/k;->g(Lcc/e0;)Lcc/e0;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    new-instance v9, Ll9/g;

    .line 105
    .line 106
    invoke-direct {v9, v4, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "Vararg parameter should be an array: "

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_2
    iget-object v7, v0, Lp4/g7;->e:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v7, Lab/d;

    .line 133
    .line 134
    invoke-interface {v6}, Lcb/z;->getType()Lcb/w;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v7, v12, v4}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    new-instance v7, Ll9/g;

    .line 143
    .line 144
    invoke-direct {v7, v4, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    move-object v9, v7

    .line 148
    :goto_1
    iget-object v4, v9, Ll9/g;->a:Ljava/lang/Object;

    .line 149
    .line 150
    move-object v13, v4

    .line 151
    check-cast v13, Lcc/e0;

    .line 152
    .line 153
    iget-object v4, v9, Ll9/g;->b:Ljava/lang/Object;

    .line 154
    .line 155
    move-object/from16 v17, v4

    .line 156
    .line 157
    check-cast v17, Lcc/e0;

    .line 158
    .line 159
    invoke-virtual/range {p1 .. p1}, Lpa/p;->getName()Llb/f;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Llb/f;->o()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const-string v7, "equals"

    .line 168
    .line 169
    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_3

    .line 174
    .line 175
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-ne v4, v8, :cond_3

    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Lp4/g7;->a()Lma/b0;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-interface {v4}, Lma/b0;->m()Lja/k;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lja/k;->o()Lcc/m0;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4, v13}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_3

    .line 198
    .line 199
    const-string v4, "other"

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_3
    invoke-interface {v6}, Lcb/z;->getName()Llb/f;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v4, :cond_4

    .line 207
    .line 208
    const/4 v5, 0x1

    .line 209
    :cond_4
    if-nez v4, :cond_5

    .line 210
    .line 211
    const-string v4, "p"

    .line 212
    .line 213
    invoke-static {v4, v10}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    :goto_2
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    :cond_5
    move-object v12, v4

    .line 222
    new-instance v4, Lpa/v0;

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v14, 0x0

    .line 226
    const/4 v15, 0x0

    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    iget-object v7, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v7, Lya/c;

    .line 232
    .line 233
    iget-object v7, v7, Lya/c;->j:Lbb/b;

    .line 234
    .line 235
    invoke-interface {v7, v6}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 236
    .line 237
    .line 238
    move-result-object v18

    .line 239
    move-object v7, v4

    .line 240
    move-object/from16 v8, p1

    .line 241
    .line 242
    invoke-direct/range {v7 .. v18}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    const/4 v4, 0x0

    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_6
    invoke-static {v3}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    new-instance v1, Lza/o$b;

    .line 256
    .line 257
    invoke-direct {v1, v0, v5}, Lza/o$b;-><init>(Ljava/util/List;Z)V

    .line 258
    .line 259
    .line 260
    return-object v1
.end method


# virtual methods
.method public a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lza/o;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1

    :cond_0
    iget-object p2, p0, Lza/o;->l:Lbc/g;

    check-cast p2, Lbc/c$k;

    invoke-virtual {p2, p1}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lza/o;->m:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lza/o;->i:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lza/o;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1

    :cond_0
    iget-object p2, p0, Lza/o;->h:Lbc/g;

    check-cast p2, Lbc/c$k;

    invoke-virtual {p2, p1}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lza/o;->m:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lza/o;->j:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public f(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/d;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lma/j;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lza/o;->d:Lbc/i;

    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lza/o;->m:[Lda/m;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lza/o;->k:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public abstract h(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;
.end method

.method public abstract i(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;
.end method

.method public j(Ljava/util/ArrayList;Llb/f;)V
    .locals 0

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract k()Lza/b;
.end method

.method public abstract m(Ljava/util/LinkedHashSet;Llb/f;)V
.end method

.method public abstract n(Ljava/util/ArrayList;Llb/f;)V
.end method

.method public abstract o(Lvb/d;)Ljava/util/Set;
.end method

.method public abstract p()Lma/o0;
.end method

.method public abstract q()Lma/j;
.end method

.method public r(Lxa/e;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract s(Lcb/q;Ljava/util/ArrayList;Lcc/e0;Ljava/util/List;)Lza/o$a;
.end method

.method public final t(Lcb/q;)Lxa/e;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "method"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lza/o;->b:Lp4/g7;

    .line 11
    .line 12
    invoke-static {v2, v1}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lza/o;->q()Lma/j;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface/range {p1 .. p1}, Lcb/s;->getName()Llb/f;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v6, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Lya/c;

    .line 27
    .line 28
    iget-object v6, v6, Lya/c;->j:Lbb/b;

    .line 29
    .line 30
    invoke-interface {v6, v1}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v7, v0, Lza/o;->e:Lbc/i;

    .line 35
    .line 36
    invoke-interface {v7}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Lza/b;

    .line 41
    .line 42
    invoke-interface/range {p1 .. p1}, Lcb/s;->getName()Llb/f;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-interface {v7, v8}, Lza/b;->d(Llb/f;)Lcb/v;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/4 v8, 0x1

    .line 51
    const/4 v9, 0x0

    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, Lcb/q;->g()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    const/4 v7, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v7, 0x0

    .line 67
    :goto_0
    invoke-static {v4, v3, v5, v6, v7}, Lxa/e;->Y0(Lma/j;Lya/e;Llb/f;Lbb/a;Z)Lxa/e;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "<this>"

    .line 72
    .line 73
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, v2, Lp4/g7;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Ll9/e;

    .line 79
    .line 80
    iget-object v5, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Lya/c;

    .line 83
    .line 84
    new-instance v6, Lya/g;

    .line 85
    .line 86
    invoke-direct {v6, v2, v3, v1, v9}, Lya/g;-><init>(Lp4/g7;Lma/j;Lcb/y;I)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lp4/g7;

    .line 90
    .line 91
    invoke-direct {v2, v5, v6, v4}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 92
    .line 93
    .line 94
    invoke-interface/range {p1 .. p1}, Lcb/y;->getTypeParameters()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_1

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lcb/x;

    .line 122
    .line 123
    iget-object v7, v2, Lp4/g7;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v7, Lya/j;

    .line 126
    .line 127
    invoke-interface {v7, v6}, Lya/j;->a(Lcb/x;)Lma/w0;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcb/q;->g()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v2, v3, v4}, Lza/o;->u(Lp4/g7;Lpa/x;Ljava/util/List;)Lza/o$b;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v1, v2}, Lza/o;->l(Lcb/q;Lp4/g7;)Lcc/e0;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget-object v7, v4, Lza/o$b;->a:Ljava/util/List;

    .line 151
    .line 152
    invoke-virtual {v0, v1, v5, v6, v7}, Lza/o;->s(Lcb/q;Ljava/util/ArrayList;Lcc/e0;Ljava/util/List;)Lza/o$a;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v6, v5, Lza/o$a;->b:Lcc/e0;

    .line 157
    .line 158
    const/16 v20, 0x0

    .line 159
    .line 160
    if-eqz v6, :cond_2

    .line 161
    .line 162
    sget-object v10, Lna/h$a;->a:Lna/h$a$a;

    .line 163
    .line 164
    invoke-static {v3, v6, v10}, Lob/h;->h(Lma/a;Lcc/e0;Lna/h;)Lpa/o0;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    move-object v11, v6

    .line 169
    goto :goto_2

    .line 170
    :cond_2
    move-object/from16 v11, v20

    .line 171
    .line 172
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lza/o;->p()Lma/o0;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    sget-object v13, Lm9/v;->a:Lm9/v;

    .line 177
    .line 178
    iget-object v14, v5, Lza/o$a;->d:Ljava/util/List;

    .line 179
    .line 180
    iget-object v15, v5, Lza/o$a;->c:Ljava/util/List;

    .line 181
    .line 182
    iget-object v6, v5, Lza/o$a;->a:Lcc/e0;

    .line 183
    .line 184
    invoke-interface/range {p1 .. p1}, Lcb/r;->isAbstract()Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    invoke-interface/range {p1 .. p1}, Lcb/r;->isFinal()Z

    .line 189
    .line 190
    .line 191
    move-result v16

    .line 192
    xor-int/lit8 v0, v16, 0x1

    .line 193
    .line 194
    invoke-static {v9, v10, v0}, Lma/a0$a;->a(ZZZ)Lma/a0;

    .line 195
    .line 196
    .line 197
    move-result-object v17

    .line 198
    invoke-interface/range {p1 .. p1}, Lcb/r;->getVisibility()Lma/e1;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0}, Lva/c0;->a(Lma/e1;)Lma/q;

    .line 203
    .line 204
    .line 205
    move-result-object v18

    .line 206
    iget-object v0, v5, Lza/o$a;->b:Lcc/e0;

    .line 207
    .line 208
    if-eqz v0, :cond_3

    .line 209
    .line 210
    sget-object v0, Lxa/e;->K:Lxa/e$a;

    .line 211
    .line 212
    invoke-static {v7}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    new-instance v7, Ll9/g;

    .line 217
    .line 218
    invoke-direct {v7, v0, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v7}, Lb8/f;->W(Ll9/g;)Ljava/util/Map;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    goto :goto_3

    .line 226
    :cond_3
    sget-object v0, Lm9/w;->a:Lm9/w;

    .line 227
    .line 228
    :goto_3
    move-object/from16 v19, v0

    .line 229
    .line 230
    move-object v10, v3

    .line 231
    move-object/from16 v16, v6

    .line 232
    .line 233
    invoke-virtual/range {v10 .. v19}, Lxa/e;->X0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;Ljava/util/Map;)Lpa/p0;

    .line 234
    .line 235
    .line 236
    iget-boolean v0, v5, Lza/o$a;->e:Z

    .line 237
    .line 238
    iget-boolean v1, v4, Lza/o$b;->b:Z

    .line 239
    .line 240
    invoke-virtual {v3, v0, v1}, Lxa/e;->Z0(ZZ)V

    .line 241
    .line 242
    .line 243
    iget-object v0, v5, Lza/o$a;->f:Ljava/util/List;

    .line 244
    .line 245
    move-object v1, v0

    .line 246
    check-cast v1, Ljava/util/Collection;

    .line 247
    .line 248
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    xor-int/2addr v1, v8

    .line 253
    if-eqz v1, :cond_5

    .line 254
    .line 255
    iget-object v1, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v1, Lya/c;

    .line 258
    .line 259
    iget-object v1, v1, Lya/c;->e:Lwa/k;

    .line 260
    .line 261
    check-cast v1, Lwa/k$a;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    if-nez v0, :cond_4

    .line 267
    .line 268
    const/4 v0, 0x6

    .line 269
    invoke-static {v0}, Lwa/k$a;->a(I)V

    .line 270
    .line 271
    .line 272
    throw v20

    .line 273
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 274
    .line 275
    const-string v1, "Should not be called"

    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_5
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lza/o;->q()Lma/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
