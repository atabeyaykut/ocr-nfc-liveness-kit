.class public final Lyb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb/f$a;
    }
.end annotation


# instance fields
.field public final a:Lma/b0;

.field public final b:Lma/d0;


# direct methods
.method public constructor <init>(Lma/b0;Lma/d0;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/f;->a:Lma/b0;

    iput-object p2, p0, Lyb/f;->b:Lma/d0;

    return-void
.end method


# virtual methods
.method public final a(Lgb/a;Lib/c;)Lna/d;
    .locals 10

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lgb/a;->c:I

    .line 12
    .line 13
    invoke-static {p2, v0}, La6/a;->n(Lib/c;I)Llb/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lyb/f;->a:Lma/b0;

    .line 18
    .line 19
    iget-object v2, p0, Lyb/f;->b:Lma/d0;

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Lma/t;->c(Lma/b0;Llb/b;Lma/d0;)Lma/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lm9/w;->a:Lm9/w;

    .line 26
    .line 27
    iget-object v2, p1, Lgb/a;->d:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_7

    .line 34
    .line 35
    invoke-static {v0}, Lec/i;->f(Lma/j;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_7

    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    invoke-static {v0, v2}, Lob/i;->n(Lma/j;I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    invoke-interface {v0}, Lma/e;->k()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "annotationClass.constructors"

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v2, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-static {v2}, Lm9/t;->q1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lma/d;

    .line 64
    .line 65
    if-eqz v2, :cond_7

    .line 66
    .line 67
    invoke-interface {v2}, Lma/a;->g()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "constructor.valueParameters"

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v1, Ljava/lang/Iterable;

    .line 77
    .line 78
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Lb8/f;->V(I)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/16 v3, 0x10

    .line 87
    .line 88
    if-ge v2, v3, :cond_0

    .line 89
    .line 90
    const/16 v2, 0x10

    .line 91
    .line 92
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    move-object v4, v2

    .line 112
    check-cast v4, Lma/a1;

    .line 113
    .line 114
    invoke-interface {v4}, Lma/j;->getName()Llb/f;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p1, Lgb/a;->d:Ljava/util/List;

    .line 123
    .line 124
    const-string v1, "proto.argumentList"

    .line 125
    .line 126
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    check-cast p1, Ljava/lang/Iterable;

    .line 130
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lgb/a$b;

    .line 151
    .line 152
    const-string v4, "it"

    .line 153
    .line 154
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget v4, v2, Lgb/a$b;->c:I

    .line 158
    .line 159
    invoke-static {p2, v4}, La6/a;->o(Lib/c;I)Llb/f;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Lma/a1;

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    if-nez v4, :cond_3

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    new-instance v6, Ll9/g;

    .line 174
    .line 175
    iget v7, v2, Lgb/a$b;->c:I

    .line 176
    .line 177
    invoke-static {p2, v7}, La6/a;->o(Lib/c;I)Llb/f;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-interface {v4}, Lma/z0;->getType()Lcc/e0;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const-string v8, "parameter.type"

    .line 186
    .line 187
    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v2, Lgb/a$b;->d:Lgb/a$b$c;

    .line 191
    .line 192
    const-string v8, "proto.value"

    .line 193
    .line 194
    invoke-static {v2, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v4, v2, p2}, Lyb/f;->c(Lcc/e0;Lgb/a$b$c;Lib/c;)Lqb/g;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {p0, v8, v4, v2}, Lyb/f;->b(Lqb/g;Lcc/e0;Lgb/a$b$c;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_4

    .line 206
    .line 207
    move-object v5, v8

    .line 208
    :cond_4
    if-nez v5, :cond_5

    .line 209
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v8, "Unexpected argument value: actual type "

    .line 213
    .line 214
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v2, v2, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 218
    .line 219
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, " != expected type "

    .line 223
    .line 224
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const-string v4, "message"

    .line 235
    .line 236
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v5, Lqb/l$a;

    .line 240
    .line 241
    invoke-direct {v5, v2}, Lqb/l$a;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_5
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    move-object v5, v6

    .line 248
    :goto_2
    if-eqz v5, :cond_2

    .line 249
    .line 250
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_6
    invoke-static {v1}, Lm9/e0;->S0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :cond_7
    new-instance p1, Lna/d;

    .line 259
    .line 260
    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    sget-object v0, Lma/r0;->a:Lma/r0$a;

    .line 265
    .line 266
    invoke-direct {p1, p2, v1, v0}, Lna/d;-><init>(Lcc/m0;Ljava/util/Map;Lma/r0;)V

    .line 267
    .line 268
    .line 269
    return-object p1
.end method

.method public final b(Lqb/g;Lcc/e0;Lgb/a$b$c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqb/g<",
            "*>;",
            "Lcc/e0;",
            "Lgb/a$b$c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lyb/f$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v2, v0

    .line 15
    .line 16
    :goto_0
    const/16 v2, 0xa

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eq v0, v2, :cond_6

    .line 21
    .line 22
    const/16 v2, 0xd

    .line 23
    .line 24
    iget-object v5, p0, Lyb/f;->a:Lma/b0;

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v5}, Lqb/g;->a(Lma/b0;)Lcc/e0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    instance-of v0, p1, Lqb/b;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Lqb/b;

    .line 44
    .line 45
    iget-object v0, v0, Lqb/g;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v2, p3, Lgb/a$b$c;->l:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-ne v0, v2, :cond_2

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_1
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-interface {v5}, Lma/b0;->m()Lja/k;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p2}, Lja/k;->g(Lcc/e0;)Lcc/e0;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p1, Lqb/b;

    .line 75
    .line 76
    iget-object v0, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/util/Collection;

    .line 79
    .line 80
    const-string v2, "<this>"

    .line 81
    .line 82
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lca/d;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v0, v1

    .line 92
    invoke-direct {v2, v4, v0}, Lca/d;-><init>(II)V

    .line 93
    .line 94
    .line 95
    instance-of v0, v2, Ljava/util/Collection;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    move-object v0, v2

    .line 100
    check-cast v0, Ljava/util/Collection;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_3
    invoke-virtual {v2}, Lca/b;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_4
    move-object v1, v0

    .line 114
    check-cast v1, Lca/c;

    .line 115
    .line 116
    iget-boolean v1, v1, Lca/c;->c:Z

    .line 117
    .line 118
    if-eqz v1, :cond_9

    .line 119
    .line 120
    move-object v1, v0

    .line 121
    check-cast v1, Lm9/b0;

    .line 122
    .line 123
    invoke-virtual {v1}, Lm9/b0;->nextInt()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v2, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lqb/g;

    .line 136
    .line 137
    iget-object v5, p3, Lgb/a$b$c;->l:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lgb/a$b$c;

    .line 144
    .line 145
    const-string v5, "value.getArrayElement(i)"

    .line 146
    .line 147
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2, p2, v1}, Lyb/f;->b(Lqb/g;Lcc/e0;Lgb/a$b$c;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_4

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p3, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    .line 160
    .line 161
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p2

    .line 181
    :cond_6
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    instance-of p2, p1, Lma/e;

    .line 190
    .line 191
    if-eqz p2, :cond_7

    .line 192
    .line 193
    check-cast p1, Lma/e;

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_7
    const/4 p1, 0x0

    .line 197
    :goto_2
    if-eqz p1, :cond_9

    .line 198
    .line 199
    sget-object p2, Lja/k;->e:Llb/f;

    .line 200
    .line 201
    sget-object p2, Lja/o$a;->P:Llb/d;

    .line 202
    .line 203
    invoke-static {p1, p2}, Lja/k;->c(Lma/g;Llb/d;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_8

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 211
    :cond_9
    :goto_4
    return v3
.end method

.method public final c(Lcc/e0;Lgb/a$b$c;Lib/c;)Lqb/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/e0;",
            "Lgb/a$b$c;",
            "Lib/c;",
            ")",
            "Lqb/g<",
            "*>;"
        }
    .end annotation

    .line 1
    const-string v0, "nameResolver"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lib/b;->M:Lib/b$a;

    .line 7
    .line 8
    iget v1, p2, Lgb/a$b$c;->n:I

    .line 9
    .line 10
    const-string v2, "IS_UNSIGNED.get(value.flags)"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p2, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v2, Lyb/f$a;->a:[I

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    aget v1, v2, v1

    .line 29
    .line 30
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Unsupported annotation argument type: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :pswitch_0
    iget-object p2, p2, Lgb/a$b$c;->l:Ljava/util/List;

    .line 45
    .line 46
    const-string v0, "value.arrayElementList"

    .line 47
    .line 48
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast p2, Ljava/lang/Iterable;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lgb/a$b$c;

    .line 77
    .line 78
    iget-object v2, p0, Lyb/f;->a:Lma/b0;

    .line 79
    .line 80
    invoke-interface {v2}, Lma/b0;->m()Lja/k;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lja/k;->f()Lcc/m0;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "builtIns.anyType"

    .line 89
    .line 90
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v3, "it"

    .line 94
    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2, v1, p3}, Lyb/f;->c(Lcc/e0;Lgb/a$b$c;Lib/c;)Lqb/g;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    new-instance p2, Lyb/p;

    .line 107
    .line 108
    invoke-direct {p2, v0, p1}, Lyb/p;-><init>(Ljava/util/ArrayList;Lcc/e0;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :pswitch_1
    new-instance p1, Lqb/a;

    .line 114
    .line 115
    iget-object p2, p2, Lgb/a$b$c;->k:Lgb/a;

    .line 116
    .line 117
    const-string v0, "value.annotation"

    .line 118
    .line 119
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p2, p3}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2}, Lqb/a;-><init>(Lna/c;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_4

    .line 130
    .line 131
    :pswitch_2
    new-instance p1, Lqb/k;

    .line 132
    .line 133
    iget v0, p2, Lgb/a$b$c;->h:I

    .line 134
    .line 135
    invoke-static {p3, v0}, La6/a;->n(Lib/c;I)Llb/b;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget p2, p2, Lgb/a$b$c;->j:I

    .line 140
    .line 141
    invoke-static {p3, p2}, La6/a;->o(Lib/c;I)Llb/f;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-direct {p1, v0, p2}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :pswitch_3
    new-instance p1, Lqb/s;

    .line 151
    .line 152
    iget v0, p2, Lgb/a$b$c;->h:I

    .line 153
    .line 154
    invoke-static {p3, v0}, La6/a;->n(Lib/c;I)Llb/b;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    iget p2, p2, Lgb/a$b$c;->m:I

    .line 159
    .line 160
    invoke-direct {p1, p3, p2}, Lqb/s;-><init>(Llb/b;I)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :pswitch_4
    new-instance p1, Lqb/w;

    .line 166
    .line 167
    iget p2, p2, Lgb/a$b$c;->g:I

    .line 168
    .line 169
    invoke-interface {p3, p2}, Lib/c;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p1, p2}, Lqb/w;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :pswitch_5
    new-instance p1, Lqb/c;

    .line 178
    .line 179
    iget-wide p2, p2, Lgb/a$b$c;->d:J

    .line 180
    .line 181
    const-wide/16 v0, 0x0

    .line 182
    .line 183
    cmp-long v2, p2, v0

    .line 184
    .line 185
    if-eqz v2, :cond_2

    .line 186
    .line 187
    const/4 p2, 0x1

    .line 188
    goto :goto_2

    .line 189
    :cond_2
    const/4 p2, 0x0

    .line 190
    :goto_2
    invoke-direct {p1, p2}, Lqb/c;-><init>(Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :pswitch_6
    new-instance p1, Lqb/j;

    .line 195
    .line 196
    iget-wide p2, p2, Lgb/a$b$c;->f:D

    .line 197
    .line 198
    invoke-direct {p1, p2, p3}, Lqb/j;-><init>(D)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :pswitch_7
    new-instance p1, Lqb/m;

    .line 203
    .line 204
    iget p2, p2, Lgb/a$b$c;->e:F

    .line 205
    .line 206
    invoke-direct {p1, p2}, Lqb/m;-><init>(F)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :pswitch_8
    iget-wide p1, p2, Lgb/a$b$c;->d:J

    .line 211
    .line 212
    if-eqz v0, :cond_3

    .line 213
    .line 214
    new-instance p3, Lqb/z;

    .line 215
    .line 216
    invoke-direct {p3, p1, p2}, Lqb/z;-><init>(J)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_3
    new-instance p3, Lqb/t;

    .line 221
    .line 222
    invoke-direct {p3, p1, p2}, Lqb/t;-><init>(J)V

    .line 223
    .line 224
    .line 225
    :goto_3
    move-object p2, p3

    .line 226
    goto :goto_5

    .line 227
    :pswitch_9
    iget-wide p1, p2, Lgb/a$b$c;->d:J

    .line 228
    .line 229
    long-to-int p2, p1

    .line 230
    if-eqz v0, :cond_4

    .line 231
    .line 232
    new-instance p1, Lqb/y;

    .line 233
    .line 234
    invoke-direct {p1, p2}, Lqb/y;-><init>(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_4
    new-instance p1, Lqb/n;

    .line 239
    .line 240
    invoke-direct {p1, p2}, Lqb/n;-><init>(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :pswitch_a
    iget-wide p1, p2, Lgb/a$b$c;->d:J

    .line 245
    .line 246
    long-to-int p2, p1

    .line 247
    int-to-short p1, p2

    .line 248
    if-eqz v0, :cond_5

    .line 249
    .line 250
    new-instance p2, Lqb/a0;

    .line 251
    .line 252
    invoke-direct {p2, p1}, Lqb/a0;-><init>(S)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_5
    new-instance p2, Lqb/v;

    .line 257
    .line 258
    invoke-direct {p2, p1}, Lqb/v;-><init>(S)V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :pswitch_b
    new-instance p1, Lqb/e;

    .line 263
    .line 264
    iget-wide p2, p2, Lgb/a$b$c;->d:J

    .line 265
    .line 266
    long-to-int p3, p2

    .line 267
    int-to-char p2, p3

    .line 268
    invoke-direct {p1, p2}, Lqb/e;-><init>(C)V

    .line 269
    .line 270
    .line 271
    :goto_4
    move-object p2, p1

    .line 272
    goto :goto_5

    .line 273
    :pswitch_c
    iget-wide p1, p2, Lgb/a$b$c;->d:J

    .line 274
    .line 275
    long-to-int p2, p1

    .line 276
    int-to-byte p1, p2

    .line 277
    if-eqz v0, :cond_6

    .line 278
    .line 279
    new-instance p2, Lqb/x;

    .line 280
    .line 281
    invoke-direct {p2, p1}, Lqb/x;-><init>(B)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_6
    new-instance p2, Lqb/d;

    .line 286
    .line 287
    invoke-direct {p2, p1}, Lqb/d;-><init>(B)V

    .line 288
    .line 289
    .line 290
    :goto_5
    return-object p2

    .line 291
    :goto_6
    iget-object p2, p2, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 292
    .line 293
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string p2, " (expected "

    .line 297
    .line 298
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const/16 p1, 0x29

    .line 305
    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p3

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
