.class public final Lea/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea/c$a;
    }
.end annotation


# direct methods
.method public static final a(Lga/n;Z)Lga/p0;
    .locals 12

    .line 1
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 2
    .line 3
    invoke-interface {p0}, Lga/q;->i()Lma/g;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_9

    .line 9
    .line 10
    invoke-interface {v1}, Lma/g;->i()Lcc/c1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "descriptor.typeConstructor"

    .line 15
    .line 16
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "typeConstructor.parameters"

    .line 24
    .line 25
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_8

    .line 33
    .line 34
    sget-object v1, Lcc/a1;->b:Lcc/a1$a;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcc/a1;->c:Lcc/a1;

    .line 40
    .line 41
    new-instance v4, Lga/p0;

    .line 42
    .line 43
    invoke-interface {p0}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v6, 0x0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/4 v8, 0x0

    .line 69
    if-eqz v7, :cond_7

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    add-int/lit8 v9, v6, 0x1

    .line 76
    .line 77
    if-ltz v6, :cond_6

    .line 78
    .line 79
    check-cast v7, Lda/p;

    .line 80
    .line 81
    iget-object v10, v7, Lda/p;->b:Lda/n;

    .line 82
    .line 83
    check-cast v10, Lga/p0;

    .line 84
    .line 85
    if-eqz v10, :cond_0

    .line 86
    .line 87
    iget-object v8, v10, Lga/p0;->a:Lcc/e0;

    .line 88
    .line 89
    :cond_0
    const/4 v10, -0x1

    .line 90
    iget v7, v7, Lda/p;->a:I

    .line 91
    .line 92
    if-nez v7, :cond_1

    .line 93
    .line 94
    const/4 v7, -0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget-object v11, Lea/c$a;->a:[I

    .line 97
    .line 98
    invoke-static {v7}, Lg/d;->c(I)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    aget v7, v11, v7

    .line 103
    .line 104
    :goto_1
    if-eq v7, v10, :cond_5

    .line 105
    .line 106
    if-eq v7, v2, :cond_4

    .line 107
    .line 108
    const/4 v6, 0x2

    .line 109
    if-eq v7, v6, :cond_3

    .line 110
    .line 111
    const/4 v6, 0x3

    .line 112
    if-ne v7, v6, :cond_2

    .line 113
    .line 114
    new-instance v6, Lcc/k1;

    .line 115
    .line 116
    sget-object v7, Lcc/t1;->e:Lcc/t1;

    .line 117
    .line 118
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v6, v8, v7}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    new-instance p0, Lj7/p;

    .line 126
    .line 127
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_3
    new-instance v6, Lcc/k1;

    .line 132
    .line 133
    sget-object v7, Lcc/t1;->d:Lcc/t1;

    .line 134
    .line 135
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v6, v8, v7}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    new-instance v6, Lcc/k1;

    .line 143
    .line 144
    sget-object v7, Lcc/t1;->c:Lcc/t1;

    .line 145
    .line 146
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v6, v8, v7}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    new-instance v7, Lcc/s0;

    .line 154
    .line 155
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    const-string v8, "parameters[index]"

    .line 160
    .line 161
    invoke-static {v6, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    check-cast v6, Lma/w0;

    .line 165
    .line 166
    invoke-direct {v7, v6}, Lcc/s0;-><init>(Lma/w0;)V

    .line 167
    .line 168
    .line 169
    move-object v6, v7

    .line 170
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move v6, v9

    .line 174
    goto :goto_0

    .line 175
    :cond_6
    invoke-static {}, Lb8/f;->k0()V

    .line 176
    .line 177
    .line 178
    throw v8

    .line 179
    :cond_7
    invoke-static {v1, p0, v3, p1, v8}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-direct {v4, p0, v8}, Lga/p0;-><init>(Lcc/e0;Lx9/a;)V

    .line 184
    .line 185
    .line 186
    return-object v4

    .line 187
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v0, "Class declares "

    .line 192
    .line 193
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, " type parameters, but 0 were provided."

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_9
    new-instance p1, Ll9/f;

    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v1, "Cannot create type for an unsupported classifier: "

    .line 221
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p0, " ("

    .line 229
    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-class p0, Lga/n;

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const/16 p0, 0x29

    .line 239
    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-direct {p1, p0, v2}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    throw p1
.end method
