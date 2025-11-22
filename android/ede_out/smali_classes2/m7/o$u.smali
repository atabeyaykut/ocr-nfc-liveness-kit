.class public final Lm7/o$u;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj7/u<",
        "Lj7/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj7/u;-><init>()V

    return-void
.end method

.method public static c(Lq7/a;)Lj7/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq7/a;->B()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lg/d;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lq7/a;->s()V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lj7/n;->a:Lj7/n;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    new-instance v0, Lj7/q;

    .line 40
    .line 41
    invoke-virtual {p0}, Lq7/a;->m()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Lj7/q;-><init>(Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lq7/a;->v()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v0, Lj7/q;

    .line 58
    .line 59
    new-instance v1, Ll7/h;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Ll7/h;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Lj7/q;-><init>(Ljava/lang/Number;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    new-instance v0, Lj7/q;

    .line 69
    .line 70
    invoke-virtual {p0}, Lq7/a;->v()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Lj7/q;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    new-instance v0, Lj7/o;

    .line 79
    .line 80
    invoke-direct {v0}, Lj7/o;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lq7/a;->b()V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {p0}, Lq7/a;->i()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Lq7/a;->q()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {p0}, Lm7/o$u;->c(Lq7/a;)Lj7/l;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-nez v2, :cond_5

    .line 101
    .line 102
    sget-object v2, Lj7/n;->a:Lj7/n;

    .line 103
    .line 104
    :cond_5
    iget-object v3, v0, Lj7/o;->a:Ll7/i;

    .line 105
    .line 106
    invoke-virtual {v3, v1, v2}, Ll7/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    invoke-virtual {p0}, Lq7/a;->f()V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_7
    new-instance v0, Lj7/j;

    .line 115
    .line 116
    invoke-direct {v0}, Lj7/j;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lq7/a;->a()V

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-virtual {p0}, Lq7/a;->i()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    invoke-static {p0}, Lm7/o$u;->c(Lq7/a;)Lj7/l;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    sget-object v1, Lj7/n;->a:Lj7/n;

    .line 135
    .line 136
    :cond_8
    iget-object v2, v0, Lj7/j;->a:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_9
    invoke-virtual {p0}, Lq7/a;->e()V

    .line 143
    .line 144
    .line 145
    return-object v0
.end method

.method public static d(Lj7/l;Lq7/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_e

    .line 2
    .line 3
    instance-of v0, p0, Lj7/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Lj7/q;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    check-cast p0, Lj7/q;

    .line 16
    .line 17
    iget-object v0, p0, Lj7/q;->a:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v1, v0, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lj7/q;->l()Ljava/lang/Number;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Lq7/b;->p(Ljava/lang/Number;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lj7/q;->h()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p0}, Lq7/b;->r(Z)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Lj7/q;->m()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Lq7/b;->q(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Not a JSON Primitive: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_4
    instance-of v0, p0, Lj7/j;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {p1}, Lq7/b;->b()V

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    check-cast p0, Lj7/j;

    .line 84
    .line 85
    invoke-virtual {p0}, Lj7/j;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lj7/l;

    .line 100
    .line 101
    invoke-static {v0, p1}, Lm7/o$u;->d(Lj7/l;Lq7/b;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p1}, Lq7/b;->e()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v1, "Not a JSON Array: "

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_7
    instance-of v0, p0, Lj7/o;

    .line 131
    .line 132
    if-eqz v0, :cond_d

    .line 133
    .line 134
    invoke-virtual {p1}, Lq7/b;->c()V

    .line 135
    .line 136
    .line 137
    if-eqz v0, :cond_c

    .line 138
    .line 139
    check-cast p0, Lj7/o;

    .line 140
    .line 141
    iget-object p0, p0, Lj7/o;->a:Ll7/i;

    .line 142
    .line 143
    invoke-virtual {p0}, Ll7/i;->entrySet()Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Ll7/i$b;

    .line 148
    .line 149
    iget-object p0, p0, Ll7/i$b;->a:Ll7/i;

    .line 150
    .line 151
    iget-object v0, p0, Ll7/i;->e:Ll7/i$e;

    .line 152
    .line 153
    iget-object v0, v0, Ll7/i$e;->d:Ll7/i$e;

    .line 154
    .line 155
    iget v1, p0, Ll7/i;->d:I

    .line 156
    .line 157
    :goto_1
    iget-object v2, p0, Ll7/i;->e:Ll7/i$e;

    .line 158
    .line 159
    if-eq v0, v2, :cond_8

    .line 160
    .line 161
    const/4 v3, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_8
    const/4 v3, 0x0

    .line 164
    :goto_2
    if-eqz v3, :cond_b

    .line 165
    .line 166
    if-eq v0, v2, :cond_a

    .line 167
    .line 168
    iget v2, p0, Ll7/i;->d:I

    .line 169
    .line 170
    if-ne v2, v1, :cond_9

    .line 171
    .line 172
    iget-object v2, v0, Ll7/i$e;->d:Ll7/i$e;

    .line 173
    .line 174
    iget-object v3, v0, Ll7/i$e;->f:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v3, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Lq7/b;->g(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v0, Ll7/i$e;->g:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, Lj7/l;

    .line 184
    .line 185
    invoke-static {v0, p1}, Lm7/o$u;->d(Lj7/l;Lq7/b;)V

    .line 186
    .line 187
    .line 188
    move-object v0, v2

    .line 189
    goto :goto_1

    .line 190
    :cond_9
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 191
    .line 192
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 197
    .line 198
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_b
    invoke-virtual {p1}, Lq7/b;->f()V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v1, "Not a JSON Object: "

    .line 211
    .line 212
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v1, "Couldn\'t write "

    .line 231
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p1

    .line 250
    :cond_e
    :goto_3
    invoke-virtual {p1}, Lq7/b;->j()Lq7/b;

    .line 251
    .line 252
    .line 253
    :goto_4
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lq7/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lm7/o$u;->c(Lq7/a;)Lj7/l;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lq7/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lj7/l;

    invoke-static {p2, p1}, Lm7/o$u;->d(Lj7/l;Lq7/b;)V

    return-void
.end method
