.class public final Lga/c0$a$e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/c0$a;-><init>(Lga/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lvb/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/c0$a;


# direct methods
.method public constructor <init>(Lga/c0$a;)V
    .locals 0

    iput-object p1, p0, Lga/c0$a$e;->a:Lga/c0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lga/c0$a$e;->a:Lga/c0$a;

    .line 2
    .line 3
    invoke-static {v0}, Lga/c0$a;->a(Lga/c0$a;)Lra/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    sget-object v2, Lga/s$a;->b:[Lda/m;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aget-object v2, v2, v3

    .line 13
    .line 14
    iget-object v0, v0, Lga/s$a;->a:Lga/t0$a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "<get-moduleData>(...)"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Lra/h;

    .line 26
    .line 27
    iget-object v0, v0, Lra/h;->b:Lra/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lra/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-virtual {v1}, Lra/e;->c()Llb/b;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_a

    .line 43
    .line 44
    invoke-virtual {v1}, Lra/e;->c()Llb/b;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Llb/b;->h()Llb/c;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "fileClass.classId.packageFqName"

    .line 53
    .line 54
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v6, v1, Lra/e;->b:Lfb/a;

    .line 58
    .line 59
    iget-object v7, v6, Lfb/a;->a:Lfb/a$a;

    .line 60
    .line 61
    sget-object v8, Lfb/a$a;->g:Lfb/a$a;

    .line 62
    .line 63
    if-ne v7, v8, :cond_5

    .line 64
    .line 65
    if-ne v7, v8, :cond_0

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    :cond_0
    const/4 v7, 0x0

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    iget-object v3, v6, Lfb/a;->c:[Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-object v3, v7

    .line 75
    :goto_0
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-static {v3}, Lm9/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    :cond_2
    if-nez v7, :cond_3

    .line 82
    .line 83
    sget-object v7, Lm9/v;->a:Lm9/v;

    .line 84
    .line 85
    :cond_3
    check-cast v7, Ljava/lang/Iterable;

    .line 86
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_6

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v7}, Ltb/b;->d(Ljava/lang/String;)Ltb/b;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    new-instance v8, Llb/c;

    .line 113
    .line 114
    const/16 v9, 0x2e

    .line 115
    .line 116
    iget-object v7, v7, Ltb/b;->a:Ljava/lang/String;

    .line 117
    .line 118
    const/16 v10, 0x2f

    .line 119
    .line 120
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-direct {v8, v7}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v8}, Llb/b;->l(Llb/c;)Llb/b;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    iget-object v8, v0, Lra/a;->b:Lra/f;

    .line 132
    .line 133
    invoke-static {v8, v7}, Leb/r;->a(Leb/q;Llb/b;)Leb/s;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    if-eqz v7, :cond_4

    .line 138
    .line 139
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    :cond_6
    new-instance v6, Lpa/r;

    .line 148
    .line 149
    iget-object v0, v0, Lra/a;->a:Leb/k;

    .line 150
    .line 151
    invoke-virtual {v0}, Leb/k;->c()Lyb/l;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    iget-object v7, v7, Lyb/l;->b:Lma/b0;

    .line 156
    .line 157
    invoke-direct {v6, v7, v5}, Lpa/r;-><init>(Lma/b0;Llb/c;)V

    .line 158
    .line 159
    .line 160
    check-cast v3, Ljava/lang/Iterable;

    .line 161
    .line 162
    new-instance v7, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_8

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    check-cast v8, Leb/s;

    .line 182
    .line 183
    invoke-virtual {v0, v6, v8}, Leb/k;->a(Lpa/i0;Leb/s;)Lac/j;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    if-eqz v8, :cond_7

    .line 188
    .line 189
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_8
    invoke-static {v7}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v6, "package "

    .line 200
    .line 201
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v5, " ("

    .line 208
    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const/16 v1, 0x29

    .line 216
    .line 217
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v0, Ljava/lang/Iterable;

    .line 225
    .line 226
    invoke-static {v1, v0}, Lvb/b$a;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lvb/i;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-nez v0, :cond_9

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_9
    move-object v5, v0

    .line 238
    :cond_a
    :goto_3
    const-string v0, "cache.getOrPut(fileClass\u2026ileClass)\", scopes)\n    }"

    .line 239
    .line 240
    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    check-cast v5, Lvb/i;

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_b
    sget-object v5, Lvb/i$b;->b:Lvb/i$b;

    .line 247
    .line 248
    :goto_4
    return-object v5
.end method
