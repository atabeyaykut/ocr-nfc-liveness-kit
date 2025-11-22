.class public final Lga/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llb/c;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v0

    sput-object v0, Lga/x0;->a:Llb/b;

    return-void
.end method

.method public static a(Lma/u;)Lga/f$e;
    .locals 4

    .line 1
    new-instance v0, Lga/f$e;

    .line 2
    .line 3
    new-instance v1, Lkb/d$b;

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a(Lma/b;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_2

    .line 10
    .line 11
    instance-of v2, p0, Lma/m0;

    .line 12
    .line 13
    const-string v3, "descriptor.propertyIfAccessor.name.asString()"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lva/w;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    instance-of v2, p0, Lma/n0;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-static {p0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lva/w;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "descriptor.name.asString()"

    .line 70
    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 75
    invoke-static {p0, v3}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v1, v2, p0}, Lkb/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Lga/f$e;-><init>(Lkb/d$b;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public static b(Lma/l0;)Lga/g;
    .locals 7

    .line 1
    const-string v0, "possiblyOverriddenProperty"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lob/i;->u(Lma/b;)Lma/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lma/l0;

    .line 11
    .line 12
    invoke-interface {p0}, Lma/l0;->a()Lma/l0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string p0, "unwrapFakeOverride(possi\u2026rriddenProperty).original"

    .line 17
    .line 18
    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    instance-of p0, v1, Lac/k;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    move-object p0, v1

    .line 27
    check-cast p0, Lac/k;

    .line 28
    .line 29
    sget-object v2, Ljb/a;->d:Lmb/h$e;

    .line 30
    .line 31
    const-string v3, "propertySignature"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lac/k;->E:Lgb/m;

    .line 37
    .line 38
    invoke-static {v3, v2}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move-object v4, v2

    .line 43
    check-cast v4, Ljb/a$c;

    .line 44
    .line 45
    if-eqz v4, :cond_a

    .line 46
    .line 47
    new-instance v6, Lga/g$c;

    .line 48
    .line 49
    iget-object v5, p0, Lac/k;->F:Lib/c;

    .line 50
    .line 51
    iget-object p0, p0, Lac/k;->G:Lib/g;

    .line 52
    .line 53
    move-object v0, v6

    .line 54
    move-object v2, v3

    .line 55
    move-object v3, v4

    .line 56
    move-object v4, v5

    .line 57
    move-object v5, p0

    .line 58
    invoke-direct/range {v0 .. v5}, Lga/g$c;-><init>(Lma/l0;Lgb/m;Ljb/a$c;Lib/c;Lib/g;)V

    .line 59
    .line 60
    .line 61
    return-object v6

    .line 62
    :cond_0
    instance-of p0, v1, Lxa/f;

    .line 63
    .line 64
    if-eqz p0, :cond_a

    .line 65
    .line 66
    move-object p0, v1

    .line 67
    check-cast p0, Lxa/f;

    .line 68
    .line 69
    invoke-virtual {p0}, Lpa/q;->getSource()Lma/r0;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    instance-of v2, p0, Lbb/a;

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    check-cast p0, Lbb/a;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object p0, v0

    .line 81
    :goto_0
    if-eqz p0, :cond_2

    .line 82
    .line 83
    invoke-interface {p0}, Lbb/a;->b()Lsa/v;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object p0, v0

    .line 89
    :goto_1
    instance-of v2, p0, Lsa/x;

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    new-instance v0, Lga/g$a;

    .line 94
    .line 95
    check-cast p0, Lsa/x;

    .line 96
    .line 97
    iget-object p0, p0, Lsa/x;->a:Ljava/lang/reflect/Field;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lga/g$a;-><init>(Ljava/lang/reflect/Field;)V

    .line 100
    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_3
    instance-of v2, p0, Lsa/a0;

    .line 104
    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    new-instance v2, Lga/g$b;

    .line 108
    .line 109
    check-cast p0, Lsa/a0;

    .line 110
    .line 111
    iget-object p0, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    .line 112
    .line 113
    invoke-interface {v1}, Lma/l0;->f()Lma/n0;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    invoke-interface {v1}, Lma/m;->getSource()Lma/r0;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move-object v1, v0

    .line 125
    :goto_2
    instance-of v3, v1, Lbb/a;

    .line 126
    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    check-cast v1, Lbb/a;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move-object v1, v0

    .line 133
    :goto_3
    if-eqz v1, :cond_6

    .line 134
    .line 135
    invoke-interface {v1}, Lbb/a;->b()Lsa/v;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    move-object v1, v0

    .line 141
    :goto_4
    instance-of v3, v1, Lsa/a0;

    .line 142
    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    check-cast v1, Lsa/a0;

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    move-object v1, v0

    .line 149
    :goto_5
    if-eqz v1, :cond_8

    .line 150
    .line 151
    iget-object v0, v1, Lsa/a0;->a:Ljava/lang/reflect/Method;

    .line 152
    .line 153
    :cond_8
    invoke-direct {v2, p0, v0}, Lga/g$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 154
    .line 155
    .line 156
    move-object v0, v2

    .line 157
    :goto_6
    return-object v0

    .line 158
    :cond_9
    new-instance v0, Ll9/f;

    .line 159
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v3, "Incorrect resolution sequence for Java field "

    .line 163
    .line 164
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, " (source = "

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const/16 p0, 0x29

    .line 179
    .line 180
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    const/4 v1, 0x1

    .line 188
    invoke-direct {v0, p0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_a
    invoke-interface {v1}, Lma/l0;->l()Lpa/m0;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-static {p0}, Lga/x0;->a(Lma/u;)Lga/f$e;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-interface {v1}, Lma/l0;->f()Lma/n0;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    invoke-static {v1}, Lga/x0;->a(Lma/u;)Lga/f$e;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_b
    new-instance v1, Lga/g$d;

    .line 214
    .line 215
    invoke-direct {v1, p0, v0}, Lga/g$d;-><init>(Lga/f$e;Lga/f$e;)V

    .line 216
    .line 217
    .line 218
    return-object v1
.end method

.method public static c(Lma/u;)Lga/f;
    .locals 7

    .line 1
    const-string v0, "possiblySubstitutedFunction"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lob/i;->u(Lma/b;)Lma/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lma/u;

    .line 11
    .line 12
    invoke-interface {v0}, Lma/u;->a()Lma/u;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "unwrapFakeOverride(possi\u2026titutedFunction).original"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    instance-of v1, v0, Lac/b;

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lac/b;

    .line 27
    .line 28
    invoke-interface {v1}, Lac/h;->z()Lmb/p;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v3, v2, Lgb/h;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    sget-object v3, Lkb/h;->a:Lmb/f;

    .line 37
    .line 38
    move-object v3, v2

    .line 39
    check-cast v3, Lgb/h;

    .line 40
    .line 41
    invoke-interface {v1}, Lac/h;->U()Lib/c;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v1}, Lac/h;->O()Lib/g;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v3, v4, v5}, Lkb/h;->c(Lgb/h;Lib/c;Lib/g;)Lkb/d$b;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    new-instance p0, Lga/f$e;

    .line 56
    .line 57
    invoke-direct {p0, v3}, Lga/f$e;-><init>(Lkb/d$b;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_0
    instance-of v3, v2, Lgb/c;

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    sget-object v3, Lkb/h;->a:Lmb/f;

    .line 66
    .line 67
    check-cast v2, Lgb/c;

    .line 68
    .line 69
    invoke-interface {v1}, Lac/h;->U()Lib/c;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v1}, Lac/h;->O()Lib/g;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v2, v3, v1}, Lkb/h;->a(Lgb/c;Lib/c;Lib/g;)Lkb/d$b;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-interface {p0}, Lma/u;->b()Lma/j;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    .line 88
    .line 89
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lob/k;->b(Lma/j;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_1

    .line 97
    .line 98
    new-instance p0, Lga/f$e;

    .line 99
    .line 100
    invoke-direct {p0, v1}, Lga/f$e;-><init>(Lkb/d$b;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    new-instance p0, Lga/f$d;

    .line 105
    .line 106
    invoke-direct {p0, v1}, Lga/f$d;-><init>(Lkb/d$b;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    return-object p0

    .line 110
    :cond_2
    invoke-static {v0}, Lga/x0;->a(Lma/u;)Lga/f$e;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_3
    instance-of p0, v0, Lxa/e;

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    const/4 v2, 0x0

    .line 119
    if-eqz p0, :cond_8

    .line 120
    .line 121
    move-object p0, v0

    .line 122
    check-cast p0, Lxa/e;

    .line 123
    .line 124
    invoke-virtual {p0}, Lpa/q;->getSource()Lma/r0;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    instance-of v3, p0, Lbb/a;

    .line 129
    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    check-cast p0, Lbb/a;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move-object p0, v2

    .line 136
    :goto_1
    if-eqz p0, :cond_5

    .line 137
    .line 138
    invoke-interface {p0}, Lbb/a;->b()Lsa/v;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move-object p0, v2

    .line 144
    :goto_2
    instance-of v3, p0, Lsa/a0;

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    move-object v2, p0

    .line 149
    check-cast v2, Lsa/a0;

    .line 150
    .line 151
    :cond_6
    if-eqz v2, :cond_7

    .line 152
    .line 153
    iget-object p0, v2, Lsa/a0;->a:Ljava/lang/reflect/Method;

    .line 154
    .line 155
    if-eqz p0, :cond_7

    .line 156
    .line 157
    new-instance v0, Lga/f$c;

    .line 158
    .line 159
    invoke-direct {v0, p0}, Lga/f$c;-><init>(Ljava/lang/reflect/Method;)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_7
    new-instance p0, Ll9/f;

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "Incorrect resolution sequence for Java method "

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {p0, v0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_8
    instance-of p0, v0, Lxa/b;

    .line 184
    .line 185
    const/16 v3, 0x29

    .line 186
    .line 187
    const-string v4, " ("

    .line 188
    .line 189
    if-eqz p0, :cond_d

    .line 190
    .line 191
    move-object p0, v0

    .line 192
    check-cast p0, Lxa/b;

    .line 193
    .line 194
    invoke-virtual {p0}, Lpa/q;->getSource()Lma/r0;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    instance-of v5, p0, Lbb/a;

    .line 199
    .line 200
    if-eqz v5, :cond_9

    .line 201
    .line 202
    check-cast p0, Lbb/a;

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_9
    move-object p0, v2

    .line 206
    :goto_3
    if-eqz p0, :cond_a

    .line 207
    .line 208
    invoke-interface {p0}, Lbb/a;->b()Lsa/v;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :cond_a
    instance-of p0, v2, Lsa/u;

    .line 213
    .line 214
    if-eqz p0, :cond_b

    .line 215
    .line 216
    new-instance p0, Lga/f$b;

    .line 217
    .line 218
    check-cast v2, Lsa/u;

    .line 219
    .line 220
    iget-object v0, v2, Lsa/u;->a:Ljava/lang/reflect/Constructor;

    .line 221
    .line 222
    invoke-direct {p0, v0}, Lga/f$b;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_b
    instance-of p0, v2, Lsa/r;

    .line 227
    .line 228
    if-eqz p0, :cond_c

    .line 229
    .line 230
    move-object p0, v2

    .line 231
    check-cast p0, Lsa/r;

    .line 232
    .line 233
    invoke-virtual {p0}, Lsa/r;->p()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_c

    .line 238
    .line 239
    new-instance v0, Lga/f$a;

    .line 240
    .line 241
    iget-object p0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 242
    .line 243
    invoke-direct {v0, p0}, Lga/f$a;-><init>(Ljava/lang/Class;)V

    .line 244
    .line 245
    .line 246
    move-object p0, v0

    .line 247
    :goto_4
    return-object p0

    .line 248
    :cond_c
    new-instance p0, Ll9/f;

    .line 249
    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v6, "Incorrect resolution sequence for Java constructor "

    .line 253
    .line 254
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-direct {p0, v0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :cond_d
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    sget-object v2, Lja/o;->c:Llb/f;

    .line 282
    .line 283
    invoke-virtual {p0, v2}, Llb/f;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result p0

    .line 287
    const/4 v2, 0x0

    .line 288
    if-eqz p0, :cond_e

    .line 289
    .line 290
    invoke-static {v0}, Lob/h;->k(Lma/u;)Z

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    if-eqz p0, :cond_e

    .line 295
    .line 296
    const/4 p0, 0x1

    .line 297
    goto :goto_5

    .line 298
    :cond_e
    const/4 p0, 0x0

    .line 299
    :goto_5
    if-nez p0, :cond_11

    .line 300
    .line 301
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    sget-object v5, Lja/o;->a:Llb/f;

    .line 306
    .line 307
    invoke-virtual {p0, v5}, Llb/f;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_f

    .line 312
    .line 313
    invoke-static {v0}, Lob/h;->k(Lma/u;)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_f

    .line 318
    .line 319
    const/4 p0, 0x1

    .line 320
    goto :goto_6

    .line 321
    :cond_f
    const/4 p0, 0x0

    .line 322
    :goto_6
    if-eqz p0, :cond_10

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_10
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    sget-object v5, Lla/a;->e:Llb/f;

    .line 330
    .line 331
    invoke-static {p0, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    if-eqz p0, :cond_12

    .line 336
    .line 337
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    if-eqz p0, :cond_12

    .line 346
    .line 347
    :cond_11
    :goto_7
    const/4 v2, 0x1

    .line 348
    :cond_12
    if-eqz v2, :cond_13

    .line 349
    .line 350
    invoke-static {v0}, Lga/x0;->a(Lma/u;)Lga/f$e;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    return-object p0

    .line 355
    :cond_13
    new-instance p0, Ll9/f;

    .line 356
    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v5, "Unknown origin of "

    .line 360
    .line 361
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-direct {p0, v0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    throw p0
.end method
