.class public final Lob/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lob/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lob/g;

    invoke-direct {v0}, Lob/g;-><init>()V

    sput-object v0, Lob/g;->a:Lob/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lma/a;)Lma/r0;
    .locals 3

    :goto_0
    instance-of v0, p0, Lma/b;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lma/b;

    invoke-interface {v0}, Lma/b;->k0()Lma/b$a;

    move-result-object v1

    sget-object v2, Lma/b$a;->b:Lma/b$a;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lma/b;->e()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lm9/t;->q1(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lma/b;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Lma/m;->getSource()Lma/r0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lma/j;Lma/j;ZZ)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lma/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p2, Lma/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lma/e;

    .line 10
    .line 11
    check-cast p2, Lma/e;

    .line 12
    .line 13
    invoke-interface {p1}, Lma/g;->i()Lcc/c1;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2}, Lma/g;->i()Lcc/c1;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    instance-of v0, p1, Lma/w0;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    instance-of v0, p2, Lma/w0;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Lma/w0;

    .line 36
    .line 37
    check-cast p2, Lma/w0;

    .line 38
    .line 39
    sget-object p4, Lob/f;->a:Lob/f;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lob/g;->b(Lma/w0;Lma/w0;ZLx9/p;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    instance-of v0, p1, Lma/a;

    .line 48
    .line 49
    if-eqz v0, :cond_a

    .line 50
    .line 51
    instance-of v0, p2, Lma/a;

    .line 52
    .line 53
    if-eqz v0, :cond_a

    .line 54
    .line 55
    check-cast p1, Lma/a;

    .line 56
    .line 57
    check-cast p2, Lma/a;

    .line 58
    .line 59
    sget-object v0, Ldc/f$a;->a:Ldc/f$a;

    .line 60
    .line 61
    const-string v1, "a"

    .line 62
    .line 63
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "b"

    .line 67
    .line 68
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "kotlinTypeRefiner"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {p2}, Lma/j;->getName()Llb/f;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_3
    if-eqz p4, :cond_4

    .line 102
    .line 103
    instance-of p4, p1, Lma/z;

    .line 104
    .line 105
    if-eqz p4, :cond_4

    .line 106
    .line 107
    instance-of p4, p2, Lma/z;

    .line 108
    .line 109
    if-eqz p4, :cond_4

    .line 110
    .line 111
    move-object p4, p1

    .line 112
    check-cast p4, Lma/z;

    .line 113
    .line 114
    invoke-interface {p4}, Lma/z;->G()Z

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    move-object v1, p2

    .line 119
    check-cast v1, Lma/z;

    .line 120
    .line 121
    invoke-interface {v1}, Lma/z;->G()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eq p4, v1, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-interface {p1}, Lma/k;->b()Lma/j;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    invoke-interface {p2}, Lma/k;->b()Lma/j;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {p4, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p4

    .line 140
    if-eqz p4, :cond_6

    .line 141
    .line 142
    if-nez p3, :cond_5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    invoke-static {p1}, Lob/g;->d(Lma/a;)Lma/r0;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    invoke-static {p2}, Lob/g;->d(Lma/a;)Lma/r0;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {p4, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p4

    .line 157
    if-nez p4, :cond_6

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    invoke-static {p1}, Lob/i;->o(Lma/j;)Z

    .line 161
    .line 162
    .line 163
    move-result p4

    .line 164
    if-nez p4, :cond_9

    .line 165
    .line 166
    invoke-static {p2}, Lob/i;->o(Lma/j;)Z

    .line 167
    .line 168
    .line 169
    move-result p4

    .line 170
    if-eqz p4, :cond_7

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_7
    sget-object p4, Lob/d;->a:Lob/d;

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2, p4, p3}, Lob/g;->c(Lma/j;Lma/j;Lx9/p;Z)Z

    .line 176
    .line 177
    .line 178
    move-result p4

    .line 179
    if-nez p4, :cond_8

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_8
    new-instance p4, Lob/c;

    .line 183
    .line 184
    invoke-direct {p4, p1, p2, p3}, Lob/c;-><init>(Lma/a;Lma/a;Z)V

    .line 185
    .line 186
    .line 187
    new-instance p3, Lob/n;

    .line 188
    .line 189
    sget-object v1, Ldc/e$a;->a:Ldc/e$a;

    .line 190
    .line 191
    invoke-direct {p3, p4, v0, v1}, Lob/n;-><init>(Ldc/d$a;Ldc/f$a;Ldc/e$a;)V

    .line 192
    .line 193
    .line 194
    const/4 p4, 0x0

    .line 195
    invoke-virtual {p3, p1, p2, p4, v2}, Lob/n;->m(Lma/a;Lma/a;Lma/e;Z)Lob/n$b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lob/n$b;->c()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ne v0, v2, :cond_9

    .line 204
    .line 205
    invoke-virtual {p3, p2, p1, p4, v2}, Lob/n;->m(Lma/a;Lma/a;Lma/e;Z)Lob/n$b;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lob/n$b;->c()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-ne p1, v2, :cond_9

    .line 214
    .line 215
    :goto_0
    const/4 p1, 0x1

    .line 216
    goto :goto_2

    .line 217
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 218
    goto :goto_2

    .line 219
    :cond_a
    instance-of p3, p1, Lma/e0;

    .line 220
    .line 221
    if-eqz p3, :cond_b

    .line 222
    .line 223
    instance-of p3, p2, Lma/e0;

    .line 224
    .line 225
    if-eqz p3, :cond_b

    .line 226
    .line 227
    check-cast p1, Lma/e0;

    .line 228
    .line 229
    invoke-interface {p1}, Lma/e0;->d()Llb/c;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p2, Lma/e0;

    .line 234
    .line 235
    invoke-interface {p2}, Lma/e0;->d()Llb/c;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    :cond_b
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    :goto_2
    return p1
.end method

.method public final b(Lma/w0;Lma/w0;ZLx9/p;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/w0;",
            "Lma/w0;",
            "Z",
            "Lx9/p<",
            "-",
            "Lma/j;",
            "-",
            "Lma/j;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "equivalentCallables"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lma/k;->b()Lma/j;

    move-result-object v0

    invoke-interface {p2}, Lma/k;->b()Lma/j;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2, p4, p3}, Lob/g;->c(Lma/j;Lma/j;Lx9/p;Z)Z

    move-result p3

    if-nez p3, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lma/w0;->getIndex()I

    move-result p1

    invoke-interface {p2}, Lma/w0;->getIndex()I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Lma/j;Lma/j;Lx9/p;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/j;",
            "Lma/j;",
            "Lx9/p<",
            "-",
            "Lma/j;",
            "-",
            "Lma/j;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lma/j;->b()Lma/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p2}, Lma/j;->b()Lma/j;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    instance-of v0, p1, Lma/b;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p2, Lma/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p0, p1, p2, p4, p3}, Lob/g;->a(Lma/j;Lma/j;ZZ)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_1
    return p1
.end method
