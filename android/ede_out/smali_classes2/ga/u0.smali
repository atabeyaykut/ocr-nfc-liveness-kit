.class public Lga/u0;
.super Lkotlin/jvm/internal/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/x;-><init>()V

    return-void
.end method

.method public static i(Lkotlin/jvm/internal/a;)Lga/s;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getOwner()Lda/f;

    move-result-object p0

    instance-of v0, p0, Lga/s;

    if-eqz v0, :cond_0

    check-cast p0, Lga/s;

    goto :goto_0

    :cond_0
    sget-object p0, Lga/e;->b:Lga/e;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/internal/f;)Lda/g;
    .locals 7

    .line 1
    new-instance v6, Lga/x;

    .line 2
    .line 3
    invoke-static {p1}, Lga/u0;->i(Lkotlin/jvm/internal/a;)Lga/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getSignature()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getBoundReceiver()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string p1, "container"

    .line 20
    .line 21
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "name"

    .line 25
    .line 26
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "signature"

    .line 30
    .line 31
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    move-object v0, v6

    .line 36
    invoke-direct/range {v0 .. v5}, Lga/x;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Lma/u;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v6
.end method

.method public final b(Ljava/lang/Class;)Lda/d;
    .locals 0

    invoke-static {p1}, Lga/b;->a(Ljava/lang/Class;)Lga/n;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)Lda/f;
    .locals 2

    .line 1
    sget-object p2, Lga/b;->a:Lga/c;

    .line 2
    .line 3
    const-string p2, "jClass"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p2, Lga/b;->b:Lga/c;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p2, Lga/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object p2, p2, Lga/c;->a:Lx9/l;

    .line 22
    .line 23
    invoke-interface {p2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v1, p1

    .line 35
    :cond_1
    :goto_0
    check-cast v1, Lda/f;

    .line 36
    .line 37
    return-object v1
.end method

.method public final d(Lkotlin/jvm/internal/k;)Lda/i;
    .locals 4

    new-instance v0, Lga/z;

    invoke-static {p1}, Lga/u0;->i(Lkotlin/jvm/internal/a;)Lga/s;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lga/z;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e(Lkotlin/jvm/internal/o;)Lda/k;
    .locals 4

    new-instance v0, Lga/g0;

    invoke-static {p1}, Lga/u0;->i(Lkotlin/jvm/internal/a;)Lga/s;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lga/g0;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f(Lkotlin/jvm/internal/q;)Lda/l;
    .locals 4

    new-instance v0, Lga/h0;

    invoke-static {p1}, Lga/u0;->i(Lkotlin/jvm/internal/a;)Lga/s;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/a;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lga/h0;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Lkotlin/jvm/internal/e;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Lkotlin/Metadata;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lkotlin/Metadata;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    array-length v3, v2

    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_0
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v2, v1

    .line 39
    :goto_1
    if-nez v2, :cond_3

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v3, Lkb/h;->a:Lmb/f;

    .line 47
    .line 48
    const-string v3, "strings"

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 54
    .line 55
    invoke-static {v2}, Lkb/a;->b([Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v1}, Lkb/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lkb/f;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    sget-object v1, Lgb/h;->y:Lgb/h$a;

    .line 67
    .line 68
    sget-object v2, Lkb/h;->a:Lmb/f;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v6, Lmb/d;

    .line 74
    .line 75
    invoke-direct {v6, v3}, Lmb/d;-><init>(Ljava/io/InputStream;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v6, v2}, Lmb/r;->a(Lmb/d;Lmb/f;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lmb/p;

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v6, v5}, Lmb/d;->a(I)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lmb/b;->b(Lmb/p;)V

    .line 88
    .line 89
    .line 90
    move-object v7, v1

    .line 91
    check-cast v7, Lgb/h;

    .line 92
    .line 93
    new-instance v10, Lkb/e;

    .line 94
    .line 95
    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    and-int/lit8 v0, v0, 0x8

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const/4 v4, 0x0

    .line 109
    :goto_2
    invoke-direct {v10, v1, v4}, Lkb/e;-><init>([IZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    new-instance v9, Lib/g;

    .line 117
    .line 118
    iget-object v0, v7, Lgb/h;->r:Lgb/s;

    .line 119
    .line 120
    const-string v1, "proto.typeTable"

    .line 121
    .line 122
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v9, v0}, Lib/g;-><init>(Lgb/s;)V

    .line 126
    .line 127
    .line 128
    sget-object v11, Lfa/c;->a:Lfa/c;

    .line 129
    .line 130
    invoke-static/range {v6 .. v11}, Lga/z0;->f(Ljava/lang/Class;Lmb/h$c;Lib/c;Lib/g;Lib/a;Lx9/p;)Lma/a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lma/q0;

    .line 135
    .line 136
    new-instance v1, Lga/x;

    .line 137
    .line 138
    sget-object v2, Lga/e;->b:Lga/e;

    .line 139
    .line 140
    invoke-direct {v1, v2, v0}, Lga/x;-><init>(Lga/s;Lma/u;)V

    .line 141
    .line 142
    .line 143
    :goto_3
    if-eqz v1, :cond_5

    .line 144
    .line 145
    invoke-static {v1}, Lga/z0;->b(Ljava/lang/Object;)Lga/x;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    sget-object p1, Lga/v0;->a:Lnb/d;

    .line 152
    .line 153
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {v7, p1}, Lga/v0;->a(Ljava/lang/StringBuilder;Lma/a;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "invoke.valueParameters"

    .line 170
    .line 171
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    check-cast v0, Ljava/lang/Iterable;

    .line 175
    .line 176
    const-string v2, ", "

    .line 177
    .line 178
    const-string v3, "("

    .line 179
    .line 180
    const-string v4, ")"

    .line 181
    .line 182
    sget-object v5, Lga/w0;->a:Lga/w0;

    .line 183
    .line 184
    const/16 v6, 0x30

    .line 185
    .line 186
    move-object v1, v7

    .line 187
    invoke-static/range {v0 .. v6}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 188
    .line 189
    .line 190
    const-string v0, " -> "

    .line 191
    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-interface {p1}, Lma/a;->getReturnType()Lcc/e0;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Lga/v0;->d(Lcc/e0;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 214
    .line 215
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-object p1

    .line 219
    :cond_5
    invoke-super {p0, p1}, Lkotlin/jvm/internal/x;->g(Lkotlin/jvm/internal/e;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    return-object p1

    .line 224
    :catch_0
    move-exception p1

    .line 225
    iput-object v1, p1, Lmb/j;->a:Lmb/p;

    .line 226
    .line 227
    throw p1
.end method

.method public final h(Lkotlin/jvm/internal/j;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lga/u0;->g(Lkotlin/jvm/internal/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
