.class public final Lyb/j$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/j;-><init>(Lyb/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lyb/j$a;",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/j;


# direct methods
.method public constructor <init>(Lyb/j;)V
    .locals 0

    iput-object p1, p0, Lyb/j$b;->a:Lyb/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lyb/j$a;

    .line 2
    .line 3
    const-string v0, "key"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lyb/j$b;->a:Lyb/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lyb/j;->a:Lyb/l;

    .line 14
    .line 15
    iget-object v2, v1, Lyb/l;->k:Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p1, Lyb/j$a;->a:Llb/b;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Loa/b;

    .line 34
    .line 35
    invoke-interface {v3, v4}, Loa/b;->a(Llb/b;)Lma/e;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    sget-object v2, Lyb/j;->c:Ljava/util/Set;

    .line 44
    .line 45
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_2
    iget-object p1, p1, Lyb/j$a;->b:Lyb/h;

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget-object p1, v1, Lyb/l;->d:Lyb/i;

    .line 59
    .line 60
    invoke-interface {p1, v4}, Lyb/i;->a(Llb/b;)Lyb/h;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_3
    iget-object v2, p1, Lyb/h;->a:Lib/c;

    .line 69
    .line 70
    iget-object v12, p1, Lyb/h;->b:Lgb/b;

    .line 71
    .line 72
    iget-object v13, p1, Lyb/h;->c:Lib/a;

    .line 73
    .line 74
    iget-object p1, p1, Lyb/h;->d:Lma/r0;

    .line 75
    .line 76
    invoke-virtual {v4}, Llb/b;->g()Llb/b;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "classId.shortClassName"

    .line 81
    .line 82
    if-eqz v5, :cond_7

    .line 83
    .line 84
    invoke-virtual {v0, v5, v3}, Lyb/j;->a(Llb/b;Lyb/h;)Lma/e;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    instance-of v1, v0, Lac/d;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    check-cast v0, Lac/d;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    move-object v0, v3

    .line 96
    :goto_0
    if-nez v0, :cond_5

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_5
    invoke-virtual {v4}, Llb/b;->j()Llb/f;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lac/d;->K0()Lac/d$a;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lac/i;->m()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_6
    iget-object v0, v0, Lac/d;->m:Lyb/n;

    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :cond_7
    invoke-virtual {v4}, Llb/b;->h()Llb/c;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const-string v7, "classId.packageFqName"

    .line 132
    .line 133
    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v1, Lyb/l;->f:Lma/f0;

    .line 137
    .line 138
    invoke-static {v1, v5}, Lc5/v;->F(Lma/f0;Llb/c;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_b

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    move-object v7, v5

    .line 157
    check-cast v7, Lma/e0;

    .line 158
    .line 159
    instance-of v8, v7, Lyb/r;

    .line 160
    .line 161
    if-eqz v8, :cond_a

    .line 162
    .line 163
    check-cast v7, Lyb/r;

    .line 164
    .line 165
    invoke-virtual {v4}, Llb/b;->j()Llb/f;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-static {v8, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    check-cast v7, Lyb/t;

    .line 176
    .line 177
    invoke-virtual {v7}, Lyb/t;->o()Lvb/i;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Lac/i;

    .line 182
    .line 183
    invoke-virtual {v7}, Lac/i;->m()Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v7, :cond_9

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_9
    const/4 v7, 0x0

    .line 195
    goto :goto_2

    .line 196
    :cond_a
    :goto_1
    const/4 v7, 0x1

    .line 197
    :goto_2
    if-eqz v7, :cond_8

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_b
    move-object v5, v3

    .line 201
    :goto_3
    move-object v6, v5

    .line 202
    check-cast v6, Lma/e0;

    .line 203
    .line 204
    if-nez v6, :cond_c

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    iget-object v5, v0, Lyb/j;->a:Lyb/l;

    .line 208
    .line 209
    new-instance v8, Lib/g;

    .line 210
    .line 211
    iget-object v0, v12, Lgb/b;->H:Lgb/s;

    .line 212
    .line 213
    const-string v1, "classProto.typeTable"

    .line 214
    .line 215
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v8, v0}, Lib/g;-><init>(Lgb/s;)V

    .line 219
    .line 220
    .line 221
    sget-object v0, Lib/h;->b:Lib/h;

    .line 222
    .line 223
    iget-object v0, v12, Lgb/b;->K:Lgb/v;

    .line 224
    .line 225
    const-string v1, "classProto.versionRequirementTable"

    .line 226
    .line 227
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v0}, Lib/h$a;->a(Lgb/v;)Lib/h;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    const/4 v11, 0x0

    .line 235
    move-object v7, v2

    .line 236
    move-object v10, v13

    .line 237
    invoke-virtual/range {v5 .. v11}, Lyb/l;->a(Lma/e0;Lib/c;Lib/g;Lib/h;Lib/a;Lac/g;)Lyb/n;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :goto_4
    move-object v6, v0

    .line 242
    new-instance v3, Lac/d;

    .line 243
    .line 244
    move-object v5, v3

    .line 245
    move-object v7, v12

    .line 246
    move-object v8, v2

    .line 247
    move-object v9, v13

    .line 248
    move-object v10, p1

    .line 249
    invoke-direct/range {v5 .. v10}, Lac/d;-><init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V

    .line 250
    .line 251
    .line 252
    :goto_5
    return-object v3
.end method
