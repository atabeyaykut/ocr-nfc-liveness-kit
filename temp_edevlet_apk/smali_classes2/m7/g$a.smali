.class public final Lm7/g$a;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj7/u<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lm7/n;

.field public final b:Lm7/n;

.field public final c:Ll7/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll7/j<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lm7/g;


# direct methods
.method public constructor <init>(Lm7/g;Lj7/h;Ljava/lang/reflect/Type;Lj7/u;Ljava/lang/reflect/Type;Lj7/u;Ll7/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h;",
            "Ljava/lang/reflect/Type;",
            "Lj7/u<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lj7/u<",
            "TV;>;",
            "Ll7/j<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lm7/g$a;->d:Lm7/g;

    invoke-direct {p0}, Lj7/u;-><init>()V

    new-instance p1, Lm7/n;

    invoke-direct {p1, p2, p4, p3}, Lm7/n;-><init>(Lj7/h;Lj7/u;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lm7/g$a;->a:Lm7/n;

    new-instance p1, Lm7/n;

    invoke-direct {p1, p2, p6, p5}, Lm7/n;-><init>(Lj7/h;Lj7/u;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lm7/g$a;->b:Lm7/n;

    iput-object p7, p0, Lm7/g$a;->c:Ll7/j;

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lq7/a;->B()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lq7/a;->s()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lm7/g$a;->c:Ll7/j;

    .line 16
    .line 17
    invoke-interface {v2}, Ll7/j;->h()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    iget-object v4, p0, Lm7/g$a;->b:Lm7/n;

    .line 25
    .line 26
    iget-object v5, p0, Lm7/g$a;->a:Lm7/n;

    .line 27
    .line 28
    const-string v6, "duplicate key: "

    .line 29
    .line 30
    if-ne v0, v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lq7/a;->a()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1}, Lq7/a;->i()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lq7/a;->a()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, p1}, Lm7/n;->a(Lq7/a;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v4, p1}, Lm7/n;->a(Lq7/a;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lq7/a;->e()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p1, Lj7/s;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Lj7/s;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    invoke-virtual {p1}, Lq7/a;->e()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_3
    invoke-virtual {p1}, Lq7/a;->b()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p1}, Lq7/a;->i()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_a

    .line 93
    .line 94
    sget-object v0, Ll7/p;->a:Lq7/a$a;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    instance-of v0, p1, Lm7/e;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    move-object v0, p1

    .line 104
    check-cast v0, Lm7/e;

    .line 105
    .line 106
    const/4 v3, 0x5

    .line 107
    invoke-virtual {v0, v3}, Lm7/e;->Z(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lm7/e;->c0()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/util/Iterator;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/util/Map$Entry;

    .line 121
    .line 122
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v0, v7}, Lm7/e;->e0(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v7, Lj7/q;

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v7, v3}, Lj7/q;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v7}, Lm7/e;->e0(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    iget v0, p1, Lq7/a;->h:I

    .line 145
    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lq7/a;->d()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    :cond_5
    const/16 v3, 0xd

    .line 153
    .line 154
    if-ne v0, v3, :cond_6

    .line 155
    .line 156
    iput v1, p1, Lq7/a;->h:I

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    const/16 v3, 0xc

    .line 160
    .line 161
    if-ne v0, v3, :cond_7

    .line 162
    .line 163
    const/16 v0, 0x8

    .line 164
    .line 165
    :goto_2
    iput v0, p1, Lq7/a;->h:I

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    const/16 v3, 0xe

    .line 169
    .line 170
    if-ne v0, v3, :cond_9

    .line 171
    .line 172
    const/16 v0, 0xa

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_3
    invoke-virtual {v5, p1}, Lm7/n;->a(Lq7/a;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v4, p1}, Lm7/n;->a(Lq7/a;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-nez v3, :cond_8

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    new-instance p1, Lj7/s;

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {p1, v0}, Lj7/s;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v2, "Expected a name but was "

    .line 213
    .line 214
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lq7/a;->B()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lq7/a;->k()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_a
    invoke-virtual {p1}, Lq7/a;->f()V

    .line 244
    .line 245
    .line 246
    :goto_4
    move-object p1, v2

    .line 247
    :goto_5
    return-object p1
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lq7/b;->j()Lq7/b;

    .line 6
    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lm7/g$a;->d:Lm7/g;

    .line 11
    .line 12
    iget-boolean v0, v0, Lm7/g;->b:Z

    .line 13
    .line 14
    iget-object v1, p0, Lm7/g$a;->b:Lm7/n;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lq7/b;->c()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_e

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v2}, Lq7/b;->g(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, p1, v0}, Lm7/n;->b(Lq7/b;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/util/Map$Entry;

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iget-object v7, p0, Lm7/g$a;->a:Lm7/n;

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    :try_start_0
    new-instance v8, Lm7/f;

    .line 110
    .line 111
    invoke-direct {v8}, Lm7/f;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v8, v6}, Lm7/n;->b(Lq7/b;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v6, v8, Lm7/f;->l:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    iget-object v6, v8, Lm7/f;->n:Lj7/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    instance-of v5, v6, Lj7/j;

    .line 141
    .line 142
    if-nez v5, :cond_3

    .line 143
    .line 144
    instance-of v5, v6, Lj7/o;

    .line 145
    .line 146
    if-eqz v5, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    const/4 v5, 0x0

    .line 150
    goto :goto_3

    .line 151
    :cond_3
    :goto_2
    const/4 v5, 0x1

    .line 152
    :goto_3
    or-int/2addr v4, v5

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v0, "Expected one JSON element but was "

    .line 159
    .line 160
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :catch_0
    move-exception p1

    .line 175
    new-instance p2, Lj7/m;

    .line 176
    .line 177
    invoke-direct {p2, p1}, Lj7/m;-><init>(Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    throw p2

    .line 181
    :cond_5
    if-eqz v4, :cond_7

    .line 182
    .line 183
    invoke-virtual {p1}, Lq7/b;->b()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    :goto_4
    if-ge v3, p2, :cond_6

    .line 191
    .line 192
    invoke-virtual {p1}, Lq7/b;->b()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Lj7/l;

    .line 200
    .line 201
    sget-object v5, Lm7/o;->A:Lm7/o$u;

    .line 202
    .line 203
    invoke-virtual {v5, p1, v4}, Lm7/o$u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v1, p1, v4}, Lm7/n;->b(Lq7/b;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lq7/b;->e()V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_6
    invoke-virtual {p1}, Lq7/b;->e()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_7
    invoke-virtual {p1}, Lq7/b;->c()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    :goto_5
    if-ge v3, p2, :cond_e

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Lj7/l;

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    instance-of v5, v4, Lj7/q;

    .line 243
    .line 244
    if-eqz v5, :cond_c

    .line 245
    .line 246
    if-eqz v5, :cond_b

    .line 247
    .line 248
    check-cast v4, Lj7/q;

    .line 249
    .line 250
    iget-object v5, v4, Lj7/q;->a:Ljava/lang/Object;

    .line 251
    .line 252
    instance-of v6, v5, Ljava/lang/Number;

    .line 253
    .line 254
    if-eqz v6, :cond_8

    .line 255
    .line 256
    invoke-virtual {v4}, Lj7/q;->l()Ljava/lang/Number;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    goto :goto_6

    .line 265
    :cond_8
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 266
    .line 267
    if-eqz v6, :cond_9

    .line 268
    .line 269
    invoke-virtual {v4}, Lj7/q;->h()Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    goto :goto_6

    .line 278
    :cond_9
    instance-of v5, v5, Ljava/lang/String;

    .line 279
    .line 280
    if-eqz v5, :cond_a

    .line 281
    .line 282
    invoke-virtual {v4}, Lj7/q;->m()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    goto :goto_6

    .line 287
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    .line 288
    .line 289
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 290
    .line 291
    .line 292
    throw p1

    .line 293
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v0, "Not a JSON Primitive: "

    .line 298
    .line 299
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :cond_c
    instance-of v4, v4, Lj7/n;

    .line 314
    .line 315
    if-eqz v4, :cond_d

    .line 316
    .line 317
    const-string v4, "null"

    .line 318
    .line 319
    :goto_6
    invoke-virtual {p1, v4}, Lq7/b;->g(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v1, p1, v4}, Lm7/n;->b(Lq7/b;Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    .line 333
    .line 334
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 335
    .line 336
    .line 337
    throw p1

    .line 338
    :cond_e
    invoke-virtual {p1}, Lq7/b;->f()V

    .line 339
    .line 340
    .line 341
    :goto_7
    return-void
.end method
