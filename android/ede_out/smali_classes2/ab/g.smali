.class public final Lab/g;
.super Lcc/l1;
.source "SourceFile"


# static fields
.field public static final d:Lab/a;

.field public static final e:Lab/a;


# instance fields
.field public final b:Lab/f;

.field public final c:Lcc/f1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lab/a;->f(I)Lab/a;

    move-result-object v5

    sput-object v5, Lab/g;->d:Lab/a;

    invoke-static {v0, v1, v2, v3, v4}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lab/a;->f(I)Lab/a;

    move-result-object v0

    sput-object v0, Lab/g;->e:Lab/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcc/l1;-><init>()V

    new-instance v0, Lab/f;

    invoke-direct {v0}, Lab/f;-><init>()V

    iput-object v0, p0, Lab/g;->b:Lab/f;

    new-instance v1, Lcc/f1;

    invoke-direct {v1, v0}, Lcc/f1;-><init>(Lab/f;)V

    iput-object v1, p0, Lab/g;->c:Lcc/f1;

    return-void
.end method


# virtual methods
.method public final d(Lcc/e0;)Lcc/i1;
    .locals 8

    .line 1
    new-instance v0, Lcc/k1;

    .line 2
    .line 3
    new-instance v7, Lab/a;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/16 v6, 0x3e

    .line 10
    .line 11
    move-object v1, v7

    .line 12
    invoke-direct/range {v1 .. v6}, Lab/a;-><init>(IZZLjava/util/Set;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v7}, Lab/g;->h(Lcc/e0;Lab/a;)Lcc/e0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final g(Lcc/m0;Lma/e;Lab/a;)Ll9/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/m0;",
            "Lma/e;",
            "Lab/a;",
            ")",
            "Ll9/g<",
            "Lcc/m0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    new-instance p3, Ll9/g;

    .line 18
    .line 19
    invoke-direct {p3, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_0
    invoke-static {p1}, Lja/k;->y(Lcc/e0;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcc/e0;->K0()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcc/i1;

    .line 39
    .line 40
    new-instance v0, Lcc/k1;

    .line 41
    .line 42
    invoke-interface {p2}, Lcc/i1;->b()Lcc/t1;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p2}, Lcc/i1;->getType()Lcc/e0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v2, "componentTypeProjection.type"

    .line 51
    .line 52
    invoke-static {p2, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2, p3}, Lab/g;->h(Lcc/e0;Lab/a;)Lcc/e0;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {v0, p2, v1}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcc/e0;->L0()Lcc/a1;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcc/e0;->N0()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-static {p3, v0, p2, p1, v1}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    new-instance p3, Ll9/g;

    .line 86
    .line 87
    invoke-direct {p3, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object p3

    .line 91
    :cond_1
    invoke-static {p1}, Lc5/v;->y(Lcc/e0;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget-object p2, Lec/h;->p:Lec/h;

    .line 98
    .line 99
    const/4 p3, 0x1

    .line 100
    new-array p3, p3, [Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    aput-object p1, p3, v1

    .line 111
    .line 112
    invoke-static {p2, p3}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    new-instance p3, Ll9/g;

    .line 119
    .line 120
    invoke-direct {p3, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object p3

    .line 124
    :cond_2
    invoke-interface {p2, p0}, Lma/e;->J(Lcc/l1;)Lvb/i;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string v0, "declaration.getMemberScope(this)"

    .line 129
    .line 130
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcc/e0;->L0()Lcc/a1;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {p2}, Lma/g;->i()Lcc/c1;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const-string v2, "declaration.typeConstructor"

    .line 142
    .line 143
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p2}, Lma/g;->i()Lcc/c1;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v2}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v3, "declaration.typeConstructor.parameters"

    .line 155
    .line 156
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v2, Ljava/lang/Iterable;

    .line 160
    .line 161
    new-instance v3, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_3

    .line 179
    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lma/w0;

    .line 185
    .line 186
    const-string v6, "parameter"

    .line 187
    .line 188
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v6, p0, Lab/g;->c:Lcc/f1;

    .line 192
    .line 193
    invoke-virtual {v6, v5, p3}, Lcc/f1;->a(Lma/w0;Lcc/x;)Lcc/e0;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    iget-object v8, p0, Lab/g;->b:Lab/f;

    .line 198
    .line 199
    invoke-virtual {v8, v5, p3, v6, v7}, Lab/f;->q(Lma/w0;Lcc/x;Lcc/f1;Lcc/e0;)Lcc/i1;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {p1}, Lcc/e0;->N0()Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    new-instance v6, Lab/g$a;

    .line 212
    .line 213
    invoke-direct {v6, p2, p3, p0, p1}, Lab/g$a;-><init>(Lma/e;Lab/a;Lab/g;Lcc/m0;)V

    .line 214
    .line 215
    .line 216
    move-object v2, v3

    .line 217
    move v3, v5

    .line 218
    move-object v5, v6

    .line 219
    invoke-static/range {v0 .. v5}, Lcc/f0;->g(Lcc/a1;Lcc/c1;Ljava/util/List;ZLvb/i;Lx9/l;)Lcc/m0;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    new-instance p3, Ll9/g;

    .line 226
    .line 227
    invoke-direct {p3, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object p3
.end method

.method public final h(Lcc/e0;Lab/a;)Lcc/e0;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lma/w0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lma/w0;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/16 v6, 0x3b

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v1, p2

    .line 25
    invoke-static/range {v1 .. v6}, Lab/a;->e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v1, p0, Lab/g;->c:Lcc/f1;

    .line 30
    .line 31
    invoke-virtual {v1, v0, p1}, Lcc/f1;->a(Lma/w0;Lcc/x;)Lcc/e0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, p2}, Lab/g;->h(Lcc/e0;Lab/a;)Lcc/e0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    instance-of p2, v0, Lma/e;

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    invoke-static {p1}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p2}, Lcc/c1;->n()Lma/g;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    instance-of v1, p2, Lma/e;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v0, Lma/e;

    .line 65
    .line 66
    sget-object v2, Lab/g;->d:Lab/a;

    .line 67
    .line 68
    invoke-virtual {p0, v1, v0, v2}, Lab/g;->g(Lcc/m0;Lma/e;Lab/a;)Ll9/g;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, v0, Ll9/g;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lcc/m0;

    .line 75
    .line 76
    iget-object v0, v0, Ll9/g;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p1}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p2, Lma/e;

    .line 89
    .line 90
    sget-object v2, Lab/g;->e:Lab/a;

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2}, Lab/g;->g(Lcc/m0;Lma/e;Lab/a;)Ll9/g;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p2, p1, Ll9/g;->a:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p2, Lcc/m0;

    .line 99
    .line 100
    iget-object p1, p1, Ll9/g;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1, p2}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    new-instance p1, Lab/h;

    .line 119
    .line 120
    invoke-direct {p1, v1, p2}, Lab/h;-><init>(Lcc/m0;Lcc/m0;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-object p1

    .line 124
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "For some reason declaration for upper bound is not a class but \""

    .line 127
    .line 128
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p2, "\" while for lower it\'s \""

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 p2, 0x22

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p2

    .line 161
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, "Unexpected declaration kind: "

    .line 166
    .line 167
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method
