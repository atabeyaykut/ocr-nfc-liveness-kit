.class public final Lja/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/b;",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/b;",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/LinkedHashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lja/r;->values()[Lja/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    .line 16
    aget-object v5, v0, v4

    .line 17
    .line 18
    iget-object v5, v5, Lja/r;->b:Llb/f;

    .line 19
    .line 20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v1}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lja/s;->a:Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {}, Lja/q;->values()[Lja/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    array-length v2, v0

    .line 39
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    array-length v2, v0

    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-ge v4, v2, :cond_1

    .line 45
    .line 46
    aget-object v5, v0, v4

    .line 47
    .line 48
    iget-object v5, v5, Lja/q;->a:Llb/f;

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v1}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lja/s;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lja/s;->c:Ljava/util/HashMap;

    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    new-array v1, v0, [Ll9/g;

    .line 75
    .line 76
    sget-object v2, Lja/q;->b:Lja/q;

    .line 77
    .line 78
    const-string v4, "ubyteArrayOf"

    .line 79
    .line 80
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v5, Ll9/g;

    .line 85
    .line 86
    invoke-direct {v5, v2, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    aput-object v5, v1, v3

    .line 90
    .line 91
    sget-object v2, Lja/q;->c:Lja/q;

    .line 92
    .line 93
    const-string v4, "ushortArrayOf"

    .line 94
    .line 95
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    new-instance v5, Ll9/g;

    .line 100
    .line 101
    invoke-direct {v5, v2, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    aput-object v5, v1, v2

    .line 106
    .line 107
    sget-object v2, Lja/q;->d:Lja/q;

    .line 108
    .line 109
    const-string v4, "uintArrayOf"

    .line 110
    .line 111
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    new-instance v5, Ll9/g;

    .line 116
    .line 117
    invoke-direct {v5, v2, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    aput-object v5, v1, v2

    .line 122
    .line 123
    sget-object v2, Lja/q;->e:Lja/q;

    .line 124
    .line 125
    const-string v4, "ulongArrayOf"

    .line 126
    .line 127
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    new-instance v5, Ll9/g;

    .line 132
    .line 133
    invoke-direct {v5, v2, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    aput-object v5, v1, v2

    .line 138
    .line 139
    new-instance v2, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-static {v0}, Lb8/f;->V(I)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 146
    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    :goto_2
    if-ge v4, v0, :cond_2

    .line 150
    .line 151
    aget-object v5, v1, v4

    .line 152
    .line 153
    iget-object v6, v5, Ll9/g;->a:Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v5, v5, Ll9/g;->b:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    invoke-static {}, Lja/r;->values()[Lja/r;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 170
    .line 171
    .line 172
    array-length v2, v0

    .line 173
    const/4 v4, 0x0

    .line 174
    :goto_3
    if-ge v4, v2, :cond_3

    .line 175
    .line 176
    aget-object v5, v0, v4

    .line 177
    .line 178
    iget-object v5, v5, Lja/r;->c:Llb/b;

    .line 179
    .line 180
    invoke-virtual {v5}, Llb/b;->j()Llb/f;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_3
    sput-object v1, Lja/s;->d:Ljava/util/LinkedHashSet;

    .line 191
    .line 192
    invoke-static {}, Lja/r;->values()[Lja/r;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    array-length v1, v0

    .line 197
    :goto_4
    if-ge v3, v1, :cond_4

    .line 198
    .line 199
    aget-object v2, v0, v3

    .line 200
    .line 201
    sget-object v4, Lja/s;->b:Ljava/util/HashMap;

    .line 202
    .line 203
    iget-object v5, v2, Lja/r;->c:Llb/b;

    .line 204
    .line 205
    iget-object v6, v2, Lja/r;->a:Llb/b;

    .line 206
    .line 207
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget-object v4, Lja/s;->c:Ljava/util/HashMap;

    .line 211
    .line 212
    iget-object v2, v2, Lja/r;->c:Llb/b;

    .line 213
    .line 214
    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    add-int/lit8 v3, v3, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_4
    return-void
.end method

.method public static final a(Lcc/e0;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcc/q1;->q(Lcc/e0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Lcc/c1;->n()Lma/g;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-interface {p0}, Lma/j;->b()Lma/j;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v2, v0, Lma/e0;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    check-cast v0, Lma/e0;

    .line 29
    .line 30
    invoke-interface {v0}, Lma/e0;->d()Llb/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v2, Lja/o;->k:Llb/c;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    sget-object v0, Lja/s;->a:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    :cond_2
    return v1
.end method
