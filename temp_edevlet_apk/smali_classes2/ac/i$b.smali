.class public final Lac/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final synthetic j:[Lda/m;
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
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/f;",
            "[B>;"
        }
    .end annotation
.end field

.field public final d:Lbc/g;
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

.field public final e:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Llb/f;",
            "Ljava/util/Collection<",
            "Lma/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Llb/f;",
            "Lma/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lbc/i;

.field public final h:Lbc/i;

.field public final synthetic i:Lac/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lac/i$b;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "variableNames"

    const-string v4, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lac/i$b;->j:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lac/i;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgb/h;",
            ">;",
            "Ljava/util/List<",
            "Lgb/m;",
            ">;",
            "Ljava/util/List<",
            "Lgb/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/util/Collection;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Lmb/p;

    .line 31
    .line 32
    iget-object v3, p1, Lac/i;->b:Lyb/n;

    .line 33
    .line 34
    iget-object v3, v3, Lyb/n;->b:Lib/c;

    .line 35
    .line 36
    check-cast v2, Lgb/h;

    .line 37
    .line 38
    iget v2, v2, Lgb/h;->f:I

    .line 39
    .line 40
    invoke-static {v3, v2}, La6/a;->o(Lib/c;I)Llb/f;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    new-instance v3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v0}, Lac/i$b;->h(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lac/i$b;->a:Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    check-cast p3, Ljava/util/Collection;

    .line 71
    .line 72
    check-cast p3, Ljava/lang/Iterable;

    .line 73
    .line 74
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 75
    .line 76
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v1, v0

    .line 96
    check-cast v1, Lmb/p;

    .line 97
    .line 98
    iget-object v2, p1, Lac/i;->b:Lyb/n;

    .line 99
    .line 100
    iget-object v2, v2, Lyb/n;->b:Lib/c;

    .line 101
    .line 102
    check-cast v1, Lgb/m;

    .line 103
    .line 104
    iget v1, v1, Lgb/m;->f:I

    .line 105
    .line 106
    invoke-static {v2, v1}, La6/a;->o(Lib/c;I)Llb/f;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-nez v2, :cond_2

    .line 115
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-static {p2}, Lac/i$b;->h(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lac/i$b;->b:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 137
    .line 138
    iget-object p1, p1, Lac/i;->b:Lyb/n;

    .line 139
    .line 140
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 141
    .line 142
    iget-object p1, p1, Lyb/l;->c:Lyb/m;

    .line 143
    .line 144
    invoke-interface {p1}, Lyb/m;->f()V

    .line 145
    .line 146
    .line 147
    check-cast p4, Ljava/util/Collection;

    .line 148
    .line 149
    check-cast p4, Ljava/lang/Iterable;

    .line 150
    .line 151
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 152
    .line 153
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result p4

    .line 166
    if-eqz p4, :cond_5

    .line 167
    .line 168
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    move-object v0, p4

    .line 173
    check-cast v0, Lmb/p;

    .line 174
    .line 175
    iget-object v1, p1, Lac/i;->b:Lyb/n;

    .line 176
    .line 177
    iget-object v1, v1, Lyb/n;->b:Lib/c;

    .line 178
    .line 179
    check-cast v0, Lgb/q;

    .line 180
    .line 181
    iget v0, v0, Lgb/q;->e:I

    .line 182
    .line 183
    invoke-static {v1, v0}, La6/a;->o(Lib/c;I)Llb/f;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-nez v1, :cond_4

    .line 192
    .line 193
    new-instance v1, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 202
    .line 203
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    invoke-static {p2}, Lac/i$b;->h(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lac/i$b;->c:Ljava/util/Map;

    .line 212
    .line 213
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 214
    .line 215
    iget-object p1, p1, Lac/i;->b:Lyb/n;

    .line 216
    .line 217
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 218
    .line 219
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 220
    .line 221
    new-instance p2, Lac/i$b$c;

    .line 222
    .line 223
    invoke-direct {p2, p0}, Lac/i$b$c;-><init>(Lac/i$b;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {p1, p2}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iput-object p1, p0, Lac/i$b;->d:Lbc/g;

    .line 231
    .line 232
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 233
    .line 234
    iget-object p1, p1, Lac/i;->b:Lyb/n;

    .line 235
    .line 236
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 237
    .line 238
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 239
    .line 240
    new-instance p2, Lac/i$b$d;

    .line 241
    .line 242
    invoke-direct {p2, p0}, Lac/i$b$d;-><init>(Lac/i$b;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1, p2}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iput-object p1, p0, Lac/i$b;->e:Lbc/g;

    .line 250
    .line 251
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 252
    .line 253
    iget-object p1, p1, Lac/i;->b:Lyb/n;

    .line 254
    .line 255
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 256
    .line 257
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 258
    .line 259
    new-instance p2, Lac/i$b$e;

    .line 260
    .line 261
    invoke-direct {p2, p0}, Lac/i$b$e;-><init>(Lac/i$b;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, p2}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lac/i$b;->f:Lbc/h;

    .line 269
    .line 270
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 271
    .line 272
    iget-object p2, p1, Lac/i;->b:Lyb/n;

    .line 273
    .line 274
    iget-object p2, p2, Lyb/n;->a:Lyb/l;

    .line 275
    .line 276
    iget-object p2, p2, Lyb/l;->a:Lbc/l;

    .line 277
    .line 278
    new-instance p3, Lac/i$b$b;

    .line 279
    .line 280
    invoke-direct {p3, p0, p1}, Lac/i$b$b;-><init>(Lac/i$b;Lac/i;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, p0, Lac/i$b;->g:Lbc/i;

    .line 288
    .line 289
    iget-object p1, p0, Lac/i$b;->i:Lac/i;

    .line 290
    .line 291
    iget-object p2, p1, Lac/i;->b:Lyb/n;

    .line 292
    .line 293
    iget-object p2, p2, Lyb/n;->a:Lyb/l;

    .line 294
    .line 295
    iget-object p2, p2, Lyb/l;->a:Lbc/l;

    .line 296
    .line 297
    new-instance p3, Lac/i$b$f;

    .line 298
    .line 299
    invoke-direct {p3, p0, p1}, Lac/i$b$f;-><init>(Lac/i$b;Lac/i;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iput-object p1, p0, Lac/i$b;->h:Lbc/i;

    .line 307
    .line 308
    return-void
.end method

.method public static h(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lb8/f;->V(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Iterable;

    .line 48
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lmb/a;

    .line 73
    .line 74
    invoke-interface {v5}, Lmb/p;->c()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-static {v6}, Lmb/e;->f(I)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    add-int/2addr v7, v6

    .line 83
    const/16 v8, 0x1000

    .line 84
    .line 85
    if-le v7, v8, :cond_0

    .line 86
    .line 87
    const/16 v7, 0x1000

    .line 88
    .line 89
    :cond_0
    invoke-static {v3, v7}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7, v6}, Lmb/e;->v(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v5, v7}, Lmb/p;->d(Lmb/e;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Lmb/e;->i()V

    .line 100
    .line 101
    .line 102
    sget-object v5, Ll9/m;->a:Ll9/m;

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lac/i$b;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1

    :cond_0
    iget-object p2, p0, Lac/i$b;->e:Lbc/g;

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

    sget-object v0, Lac/i$b;->j:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lac/i$b;->g:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lac/i$b;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1

    :cond_0
    iget-object p2, p0, Lac/i$b;->d:Lbc/g;

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

    sget-object v0, Lac/i$b;->j:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lac/i$b;->h:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final e(Ljava/util/ArrayList;Lvb/d;Lx9/l;)V
    .locals 6

    .line 1
    sget-object v0, Lua/c;->d:Lua/c;

    .line 2
    .line 3
    const-string v1, "kindFilter"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "nameFilter"

    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v1, Lvb/d;->j:I

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Lvb/d;->a(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lob/l;->a:Lob/l;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lac/i$b;->d()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Llb/f;

    .line 47
    .line 48
    invoke-interface {p3, v4}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v4, v0}, Lac/i$b;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v3, v2}, Lm9/o;->R0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    sget v1, Lvb/d;->i:I

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Lvb/d;->a(I)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0}, Lac/i$b;->b()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Llb/f;

    .line 106
    .line 107
    invoke-interface {p3, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0, v3, v0}, Lac/i$b;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-static {v1, v2}, Lm9/o;->R0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void
.end method

.method public final f(Llb/f;)Lma/v0;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lac/i$b;->f:Lbc/h;

    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma/v0;

    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/i$b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
