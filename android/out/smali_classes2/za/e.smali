.class public final Lza/e;
.super Lpa/m;
.source "SourceFile"

# interfaces
.implements Lxa/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza/e$a;
    }
.end annotation


# instance fields
.field public final h:Lp4/g7;

.field public final j:Lcb/g;

.field public final k:Lma/e;

.field public final l:Lp4/g7;

.field public final m:Ll9/j;

.field public final n:I

.field public final p:Lma/a0;

.field public final q:Lma/e1;

.field public final r:Z

.field public final s:Lza/e$a;

.field public final t:Lza/k;

.field public final v:Lma/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lma/p0<",
            "Lza/k;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lvb/g;

.field public final x:Lza/x;

.field public final y:Lya/e;

.field public final z:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    const-string v5, "notifyAll"

    const-string v6, "toString"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lp4/g7;Lma/j;Lcb/g;Lma/e;)V
    .locals 6

    .line 1
    const-string v0, "outerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "jClass"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p3}, Lcb/s;->getName()Llb/f;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lya/c;

    .line 27
    .line 28
    iget-object v2, v2, Lya/c;->j:Lbb/b;

    .line 29
    .line 30
    invoke-interface {v2, p3}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p0, v0, p2, v1, v2}, Lpa/m;-><init>(Lbc/l;Lma/j;Llb/f;Lma/r0;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lza/e;->h:Lp4/g7;

    .line 38
    .line 39
    iput-object p3, p0, Lza/e;->j:Lcb/g;

    .line 40
    .line 41
    iput-object p4, p0, Lza/e;->k:Lma/e;

    .line 42
    .line 43
    const/4 p2, 0x4

    .line 44
    invoke-static {p1, p0, p3, p2}, Lya/b;->a(Lp4/g7;Lma/f;Lcb/y;I)Lp4/g7;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lza/e;->l:Lp4/g7;

    .line 49
    .line 50
    iget-object p2, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p2, Lya/c;

    .line 53
    .line 54
    iget-object p2, p2, Lya/c;->g:Lwa/h;

    .line 55
    .line 56
    check-cast p2, Lwa/h$a;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-interface {p3}, Lcb/g;->G()V

    .line 62
    .line 63
    .line 64
    new-instance p2, Lza/e$d;

    .line 65
    .line 66
    invoke-direct {p2, p0}, Lza/e$d;-><init>(Lza/e;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p0, Lza/e;->m:Ll9/j;

    .line 74
    .line 75
    invoke-interface {p3}, Lcb/g;->p()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    const/4 v0, 0x1

    .line 80
    if-eqz p2, :cond_0

    .line 81
    .line 82
    const/4 p2, 0x5

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p3}, Lcb/g;->E()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_1

    .line 89
    .line 90
    const/4 p2, 0x2

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p3}, Lcb/g;->y()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    const/4 p2, 0x3

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const/4 p2, 0x1

    .line 101
    :goto_0
    iput p2, p0, Lza/e;->n:I

    .line 102
    .line 103
    invoke-interface {p3}, Lcb/g;->p()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    const/4 v1, 0x0

    .line 108
    if-nez p2, :cond_6

    .line 109
    .line 110
    invoke-interface {p3}, Lcb/g;->y()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-interface {p3}, Lcb/g;->B()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-interface {p3}, Lcb/g;->B()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    invoke-interface {p3}, Lcb/r;->isAbstract()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_5

    .line 132
    .line 133
    invoke-interface {p3}, Lcb/g;->E()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    const/4 v2, 0x0

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    :goto_1
    const/4 v2, 0x1

    .line 143
    :goto_2
    invoke-interface {p3}, Lcb/r;->isFinal()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    xor-int/2addr v3, v0

    .line 148
    invoke-static {p2, v2, v3}, Lma/a0$a;->a(ZZZ)Lma/a0;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    goto :goto_4

    .line 153
    :cond_6
    :goto_3
    sget-object p2, Lma/a0;->a:Lma/a0;

    .line 154
    .line 155
    :goto_4
    iput-object p2, p0, Lza/e;->p:Lma/a0;

    .line 156
    .line 157
    invoke-interface {p3}, Lcb/r;->getVisibility()Lma/e1;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    iput-object p2, p0, Lza/e;->q:Lma/e1;

    .line 162
    .line 163
    invoke-interface {p3}, Lcb/g;->q()Lsa/r;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_7

    .line 168
    .line 169
    invoke-interface {p3}, Lcb/r;->f()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-nez p2, :cond_7

    .line 174
    .line 175
    const/4 p2, 0x1

    .line 176
    goto :goto_5

    .line 177
    :cond_7
    const/4 p2, 0x0

    .line 178
    :goto_5
    iput-boolean p2, p0, Lza/e;->r:Z

    .line 179
    .line 180
    new-instance p2, Lza/e$a;

    .line 181
    .line 182
    invoke-direct {p2, p0}, Lza/e$a;-><init>(Lza/e;)V

    .line 183
    .line 184
    .line 185
    iput-object p2, p0, Lza/e;->s:Lza/e$a;

    .line 186
    .line 187
    new-instance p2, Lza/k;

    .line 188
    .line 189
    if-eqz p4, :cond_8

    .line 190
    .line 191
    const/4 v4, 0x1

    .line 192
    goto :goto_6

    .line 193
    :cond_8
    const/4 v4, 0x0

    .line 194
    :goto_6
    const/4 v5, 0x0

    .line 195
    move-object v0, p2

    .line 196
    move-object v1, p1

    .line 197
    move-object v2, p0

    .line 198
    move-object v3, p3

    .line 199
    invoke-direct/range {v0 .. v5}, Lza/k;-><init>(Lp4/g7;Lma/e;Lcb/g;ZLza/k;)V

    .line 200
    .line 201
    .line 202
    iput-object p2, p0, Lza/e;->t:Lza/k;

    .line 203
    .line 204
    sget-object p4, Lma/p0;->e:Lma/p0$a;

    .line 205
    .line 206
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Lya/c;

    .line 213
    .line 214
    iget-object v1, v1, Lya/c;->u:Ldc/l;

    .line 215
    .line 216
    invoke-interface {v1}, Ldc/l;->b()Ldc/f;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v2, Lza/e$e;

    .line 221
    .line 222
    invoke-direct {v2, p0}, Lza/e$e;-><init>(Lza/e;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-static {v2, p0, v0, v1}, Lma/p0$a;->a(Lx9/l;Lma/e;Lbc/l;Ldc/f;)Lma/p0;

    .line 229
    .line 230
    .line 231
    move-result-object p4

    .line 232
    iput-object p4, p0, Lza/e;->v:Lma/p0;

    .line 233
    .line 234
    new-instance p4, Lvb/g;

    .line 235
    .line 236
    invoke-direct {p4, p2}, Lvb/g;-><init>(Lvb/i;)V

    .line 237
    .line 238
    .line 239
    iput-object p4, p0, Lza/e;->w:Lvb/g;

    .line 240
    .line 241
    new-instance p2, Lza/x;

    .line 242
    .line 243
    invoke-direct {p2, p1, p3, p0}, Lza/x;-><init>(Lp4/g7;Lcb/g;Lxa/c;)V

    .line 244
    .line 245
    .line 246
    iput-object p2, p0, Lza/e;->x:Lza/x;

    .line 247
    .line 248
    invoke-static {p1, p3}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    iput-object p2, p0, Lza/e;->y:Lya/e;

    .line 253
    .line 254
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-instance p2, Lza/e$b;

    .line 259
    .line 260
    invoke-direct {p2, p0}, Lza/e$b;-><init>(Lza/e;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Lza/e;->z:Lbc/i;

    .line 268
    .line 269
    return-void
.end method


# virtual methods
.method public final bridge synthetic C0()Lvb/i;
    .locals 1

    invoke-virtual {p0}, Lza/e;->K0()Lza/k;

    move-result-object v0

    return-object v0
.end method

.method public final D0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final E()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lma/a0;->b:Lma/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lza/e;->p:Lma/a0;

    .line 4
    .line 5
    if-ne v1, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x7

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v2, v2, v3, v1}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lza/e;->j:Lcb/g;

    .line 16
    .line 17
    invoke-interface {v1}, Lcb/g;->M()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcb/j;

    .line 43
    .line 44
    iget-object v5, p0, Lza/e;->l:Lp4/g7;

    .line 45
    .line 46
    iget-object v5, v5, Lp4/g7;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Lab/d;

    .line 49
    .line 50
    invoke-virtual {v5, v4, v0}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lcc/e0;->M0()Lcc/c1;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v4}, Lcc/c1;->n()Lma/g;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    instance-of v5, v4, Lma/e;

    .line 63
    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    check-cast v4, Lma/e;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object v4, v3

    .line 70
    :goto_1
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Lza/e$c;

    .line 77
    .line 78
    invoke-direct {v0}, Lza/e$c;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v0}, Lm9/t;->s1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/util/Collection;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 89
    .line 90
    :goto_2
    return-object v0
.end method

.method public final F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lza/e;->r:Z

    return v0
.end method

.method public final H0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final K0()Lza/k;
    .locals 2

    invoke-super {p0}, Lpa/b;->C0()Lvb/i;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lza/k;

    return-object v0
.end method

.method public final M()Lma/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final N()Lvb/i;
    .locals 1

    iget-object v0, p0, Lza/e;->x:Lza/x;

    return-object v0
.end method

.method public final P()Lma/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e0(Ldc/f;)Lvb/i;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lza/e;->v:Lma/p0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lma/p0;->a(Ldc/f;)Lvb/i;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lza/k;

    .line 13
    .line 14
    return-object p1
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    iget-object v0, p0, Lza/e;->y:Lya/e;

    return-object v0
.end method

.method public final getVisibility()Lma/q;
    .locals 2

    sget-object v0, Lma/p;->a:Lma/p$d;

    iget-object v1, p0, Lza/e;->q:Lma/e1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lza/e;->j:Lcb/g;

    invoke-interface {v0}, Lcb/g;->q()Lsa/r;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lva/o;->a:Lva/o$a;

    const-string v1, "{\n            JavaDescri\u2026KAGE_VISIBILITY\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lva/c0;->a(Lma/e1;)Lma/q;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lza/e;->n:I

    return v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lza/e;->s:Lza/e$a;

    return-object v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lma/a0;
    .locals 1

    iget-object v0, p0, Lza/e;->p:Lma/a0;

    return-object v0
.end method

.method public final k()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lza/e;->t:Lza/k;

    .line 2
    .line 3
    iget-object v0, v0, Lza/k;->q:Lbc/i;

    .line 4
    .line 5
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lza/e;->z:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsb/b;->h(Lma/j;)Llb/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x0()Lvb/i;
    .locals 1

    iget-object v0, p0, Lza/e;->w:Lvb/g;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y0()Lma/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/y0<",
            "Lcc/m0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
