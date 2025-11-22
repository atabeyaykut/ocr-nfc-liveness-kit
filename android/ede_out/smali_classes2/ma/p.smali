.class public final Lma/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lma/p$d;

.field public static final b:Lma/p$e;

.field public static final c:Lma/p$f;

.field public static final d:Lma/p$g;

.field public static final e:Lma/p$h;

.field public static final f:Lma/p$i;

.field public static final g:Lma/p$j;

.field public static final h:Lma/p$k;

.field public static final i:Lma/p$l;

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lma/q;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lma/p$h;

.field public static final l:Lma/p$a;

.field public static final m:Lma/p$b;

.field public static final n:Lma/p$c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Lic/o;

.field public static final p:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lma/p$d;

    .line 2
    .line 3
    sget-object v1, Lma/d1$e;->c:Lma/d1$e;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lma/p$d;-><init>(Lma/d1$e;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lma/p;->a:Lma/p$d;

    .line 9
    .line 10
    new-instance v1, Lma/p$e;

    .line 11
    .line 12
    sget-object v2, Lma/d1$f;->c:Lma/d1$f;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lma/p$e;-><init>(Lma/d1$f;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lma/p;->b:Lma/p$e;

    .line 18
    .line 19
    new-instance v2, Lma/p$f;

    .line 20
    .line 21
    sget-object v3, Lma/d1$g;->c:Lma/d1$g;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lma/p$f;-><init>(Lma/d1$g;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lma/p;->c:Lma/p$f;

    .line 27
    .line 28
    new-instance v3, Lma/p$g;

    .line 29
    .line 30
    sget-object v4, Lma/d1$b;->c:Lma/d1$b;

    .line 31
    .line 32
    invoke-direct {v3, v4}, Lma/p$g;-><init>(Lma/d1$b;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lma/p;->d:Lma/p$g;

    .line 36
    .line 37
    new-instance v4, Lma/p$h;

    .line 38
    .line 39
    sget-object v5, Lma/d1$h;->c:Lma/d1$h;

    .line 40
    .line 41
    invoke-direct {v4, v5}, Lma/p$h;-><init>(Lma/d1$h;)V

    .line 42
    .line 43
    .line 44
    sput-object v4, Lma/p;->e:Lma/p$h;

    .line 45
    .line 46
    new-instance v5, Lma/p$i;

    .line 47
    .line 48
    sget-object v6, Lma/d1$d;->c:Lma/d1$d;

    .line 49
    .line 50
    invoke-direct {v5, v6}, Lma/p$i;-><init>(Lma/d1$d;)V

    .line 51
    .line 52
    .line 53
    sput-object v5, Lma/p;->f:Lma/p$i;

    .line 54
    .line 55
    new-instance v6, Lma/p$j;

    .line 56
    .line 57
    sget-object v7, Lma/d1$a;->c:Lma/d1$a;

    .line 58
    .line 59
    invoke-direct {v6, v7}, Lma/p$j;-><init>(Lma/d1$a;)V

    .line 60
    .line 61
    .line 62
    sput-object v6, Lma/p;->g:Lma/p$j;

    .line 63
    .line 64
    new-instance v7, Lma/p$k;

    .line 65
    .line 66
    sget-object v8, Lma/d1$c;->c:Lma/d1$c;

    .line 67
    .line 68
    invoke-direct {v7, v8}, Lma/p$k;-><init>(Lma/d1$c;)V

    .line 69
    .line 70
    .line 71
    sput-object v7, Lma/p;->h:Lma/p$k;

    .line 72
    .line 73
    new-instance v8, Lma/p$l;

    .line 74
    .line 75
    sget-object v9, Lma/d1$i;->c:Lma/d1$i;

    .line 76
    .line 77
    invoke-direct {v8, v9}, Lma/p$l;-><init>(Lma/d1$i;)V

    .line 78
    .line 79
    .line 80
    sput-object v8, Lma/p;->i:Lma/p$l;

    .line 81
    .line 82
    const/4 v9, 0x4

    .line 83
    new-array v9, v9, [Lma/q;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    aput-object v0, v9, v10

    .line 91
    .line 92
    const/4 v10, 0x1

    .line 93
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    aput-object v1, v9, v10

    .line 98
    .line 99
    const/4 v10, 0x2

    .line 100
    aput-object v3, v9, v10

    .line 101
    .line 102
    const/4 v13, 0x3

    .line 103
    aput-object v5, v9, v13

    .line 104
    .line 105
    invoke-static {v9}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    new-instance v9, Ljava/util/HashMap;

    .line 113
    .line 114
    const/4 v13, 0x6

    .line 115
    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    sput-object v9, Lma/p;->j:Ljava/util/Map;

    .line 142
    .line 143
    sput-object v4, Lma/p;->k:Lma/p$h;

    .line 144
    .line 145
    new-instance v9, Lma/p$a;

    .line 146
    .line 147
    invoke-direct {v9}, Lma/p$a;-><init>()V

    .line 148
    .line 149
    .line 150
    sput-object v9, Lma/p;->l:Lma/p$a;

    .line 151
    .line 152
    new-instance v9, Lma/p$b;

    .line 153
    .line 154
    invoke-direct {v9}, Lma/p$b;-><init>()V

    .line 155
    .line 156
    .line 157
    sput-object v9, Lma/p;->m:Lma/p$b;

    .line 158
    .line 159
    new-instance v9, Lma/p$c;

    .line 160
    .line 161
    invoke-direct {v9}, Lma/p$c;-><init>()V

    .line 162
    .line 163
    .line 164
    sput-object v9, Lma/p;->n:Lma/p$c;

    .line 165
    .line 166
    const-class v9, Lic/o;

    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {v9, v10}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v9}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_0

    .line 185
    .line 186
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lic/o;

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_0
    sget-object v9, Lic/o$a;->a:Lic/o$a;

    .line 194
    .line 195
    :goto_0
    sput-object v9, Lma/p;->o:Lic/o;

    .line 196
    .line 197
    new-instance v9, Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 200
    .line 201
    .line 202
    sput-object v9, Lma/p;->p:Ljava/util/HashMap;

    .line 203
    .line 204
    invoke-static {v0}, Lma/p;->f(Lma/o;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lma/p;->f(Lma/o;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v2}, Lma/p;->f(Lma/o;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v3}, Lma/p;->f(Lma/o;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v4}, Lma/p;->f(Lma/o;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v5}, Lma/p;->f(Lma/o;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v6}, Lma/p;->f(Lma/o;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v7}, Lma/p;->f(Lma/o;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v8}, Lma/p;->f(Lma/o;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public static synthetic a(I)V
    .locals 8

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p0, v6, :cond_2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    const/4 v2, 0x7

    if-eq p0, v2, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v2, "what"

    aput-object v2, v4, v7

    goto :goto_2

    :pswitch_0
    aput-object v5, v4, v7

    goto :goto_2

    :pswitch_1
    const-string v2, "visibility"

    aput-object v2, v4, v7

    goto :goto_2

    :pswitch_2
    const-string v2, "second"

    aput-object v2, v4, v7

    goto :goto_2

    :pswitch_3
    const-string v2, "first"

    aput-object v2, v4, v7

    goto :goto_2

    :cond_2
    :pswitch_4
    const-string v2, "from"

    aput-object v2, v4, v7

    :goto_2
    const-string v2, "toDescriptorVisibility"

    if-eq p0, v0, :cond_3

    aput-object v5, v4, v6

    goto :goto_3

    :cond_3
    aput-object v2, v4, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v2, "isVisible"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_5
    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_6
    const-string v2, "isPrivate"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_7
    const-string v2, "compare"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_8
    const-string v2, "compareLocal"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_9
    const-string v2, "findInvisibleMember"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v2, "inSameFile"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_b
    const-string v2, "isVisibleWithAnyReceiver"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v2, "isVisibleIgnoringReceiver"

    aput-object v2, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method

.method public static b(Lma/q;Lma/q;)Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lma/q;->a()Lma/e1;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lma/q;->a()Lma/e1;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lma/e1;->a(Lma/e1;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lma/q;->a()Lma/e1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lma/q;->a()Lma/e1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Lma/e1;->a(Lma/e1;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    neg-int p0, p0

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    return-object v0

    .line 46
    :cond_2
    const/16 p0, 0xd

    .line 47
    .line 48
    invoke-static {p0}, Lma/p;->a(I)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_3
    const/16 p0, 0xc

    .line 53
    .line 54
    invoke-static {p0}, Lma/p;->a(I)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public static c(Lma/p$b;Lma/n;Lma/j;)Lma/n;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-interface {p1}, Lma/j;->a()Lma/j;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    check-cast v1, Lma/n;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Lma/n;->getVisibility()Lma/q;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lma/p;->f:Lma/p$i;

    .line 19
    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Lma/n;->getVisibility()Lma/q;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p0, v1, p2}, Lma/q;->c(Lma/p$b;Lma/n;Lma/j;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    const-class v3, Lma/n;

    .line 35
    .line 36
    invoke-static {v1, v3, v2}, Lob/i;->i(Lma/j;Ljava/lang/Class;Z)Lma/j;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v1, p1, Lpa/r0;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    check-cast p1, Lpa/r0;

    .line 46
    .line 47
    invoke-interface {p1}, Lpa/r0;->m0()Lma/d;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1, p2}, Lma/p;->c(Lma/p$b;Lma/n;Lma/j;)Lma/n;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    return-object v0

    .line 59
    :cond_3
    const/16 p0, 0x9

    .line 60
    .line 61
    invoke-static {p0}, Lma/p;->a(I)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_4
    const/16 p0, 0x8

    .line 66
    .line 67
    invoke-static {p0}, Lma/p;->a(I)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public static d(Lma/j;Lma/j;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lob/i;->f(Lma/j;)Lma/s0;

    move-result-object p1

    sget-object v0, Lma/s0;->a:Lma/s0$a;

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Lob/i;->f(Lma/j;)Lma/s0;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x7

    invoke-static {p0}, Lma/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lma/q;)Z
    .locals 1

    if-eqz p0, :cond_2

    sget-object v0, Lma/p;->a:Lma/p$d;

    if-eq p0, v0, :cond_1

    sget-object v0, Lma/p;->b:Lma/p$e;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    const/16 p0, 0xe

    invoke-static {p0}, Lma/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Lma/o;)V
    .locals 2

    sget-object v0, Lma/p;->p:Ljava/util/HashMap;

    iget-object v1, p0, Lma/o;->a:Lma/e1;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Lma/e1;)Lma/q;
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lma/p;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inapplicable visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0xf

    invoke-static {p0}, Lma/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
