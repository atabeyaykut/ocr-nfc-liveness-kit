.class public final Lkotlin/jvm/internal/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/Collection;
    .locals 1

    instance-of v0, p0, Ly9/a;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ly9/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kotlin.collections.MutableCollection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/z;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 1
    instance-of v0, p0, Ly9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ly9/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "kotlin.collections.MutableSet"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/z;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-class v0, Lkotlin/jvm/internal/z;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->j(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static c(ILjava/lang/Object;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1a

    .line 2
    .line 3
    instance-of v0, p1, Ll9/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_18

    .line 7
    .line 8
    instance-of v0, p1, Lkotlin/jvm/internal/e;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lkotlin/jvm/internal/e;

    .line 15
    .line 16
    invoke-interface {v0}, Lkotlin/jvm/internal/e;->getArity()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    instance-of v0, p1, Lx9/a;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    instance-of v0, p1, Lx9/l;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_2
    instance-of v0, p1, Lx9/p;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_3
    instance-of v0, p1, Lx9/q;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_4
    instance-of v0, p1, Lx9/r;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_5
    instance-of v0, p1, Lx9/s;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    const/4 v0, 0x5

    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_6
    instance-of v0, p1, Lx9/t;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_7
    instance-of v0, p1, Lx9/u;

    .line 72
    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    const/4 v0, 0x7

    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_8
    instance-of v0, p1, Lx9/v;

    .line 79
    .line 80
    if-eqz v0, :cond_9

    .line 81
    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_9
    instance-of v0, p1, Lx9/w;

    .line 87
    .line 88
    if-eqz v0, :cond_a

    .line 89
    .line 90
    const/16 v0, 0x9

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_a
    instance-of v0, p1, Lx9/b;

    .line 95
    .line 96
    if-eqz v0, :cond_b

    .line 97
    .line 98
    const/16 v0, 0xa

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_b
    instance-of v0, p1, Lx9/c;

    .line 102
    .line 103
    if-eqz v0, :cond_c

    .line 104
    .line 105
    const/16 v0, 0xb

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_c
    instance-of v0, p1, Lx9/d;

    .line 109
    .line 110
    if-eqz v0, :cond_d

    .line 111
    .line 112
    const/16 v0, 0xc

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_d
    instance-of v0, p1, Lx9/e;

    .line 116
    .line 117
    if-eqz v0, :cond_e

    .line 118
    .line 119
    const/16 v0, 0xd

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_e
    instance-of v0, p1, Lx9/f;

    .line 123
    .line 124
    if-eqz v0, :cond_f

    .line 125
    .line 126
    const/16 v0, 0xe

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_f
    instance-of v0, p1, Lx9/g;

    .line 130
    .line 131
    if-eqz v0, :cond_10

    .line 132
    .line 133
    const/16 v0, 0xf

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_10
    instance-of v0, p1, Lx9/h;

    .line 137
    .line 138
    if-eqz v0, :cond_11

    .line 139
    .line 140
    const/16 v0, 0x10

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_11
    instance-of v0, p1, Lx9/i;

    .line 144
    .line 145
    if-eqz v0, :cond_12

    .line 146
    .line 147
    const/16 v0, 0x11

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_12
    instance-of v0, p1, Lx9/j;

    .line 151
    .line 152
    if-eqz v0, :cond_13

    .line 153
    .line 154
    const/16 v0, 0x12

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_13
    instance-of v0, p1, Lx9/k;

    .line 158
    .line 159
    if-eqz v0, :cond_14

    .line 160
    .line 161
    const/16 v0, 0x13

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_14
    instance-of v0, p1, Lx9/m;

    .line 165
    .line 166
    if-eqz v0, :cond_15

    .line 167
    .line 168
    const/16 v0, 0x14

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_15
    instance-of v0, p1, Lx9/n;

    .line 172
    .line 173
    if-eqz v0, :cond_16

    .line 174
    .line 175
    const/16 v0, 0x15

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_16
    instance-of v0, p1, Lx9/o;

    .line 179
    .line 180
    if-eqz v0, :cond_17

    .line 181
    .line 182
    const/16 v0, 0x16

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_17
    const/4 v0, -0x1

    .line 186
    :goto_0
    if-ne v0, p0, :cond_18

    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    :cond_18
    if-eqz v1, :cond_19

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v1, "kotlin.jvm.functions.Function"

    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {p1, p0}, Lkotlin/jvm/internal/z;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/4 p0, 0x0

    .line 210
    throw p0

    .line 211
    :cond_1a
    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    const-string v0, " cannot be cast to "

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Landroidx/camera/core/impl/utils/f;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-class p0, Lkotlin/jvm/internal/z;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->j(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
