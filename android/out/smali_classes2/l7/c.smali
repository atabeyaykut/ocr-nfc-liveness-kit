.class public final Ll7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lj7/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Lo7/b;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lj7/i<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo7/b;->a:Lo7/b;

    .line 5
    .line 6
    iput-object v0, p0, Ll7/c;->b:Lo7/b;

    .line 7
    .line 8
    iput-object p1, p0, Ll7/c;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lp7/a;)Ll7/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp7/a<",
            "TT;>;)",
            "Ll7/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lp7/a;->b:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    iget-object v1, p0, Ll7/c;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lj7/i;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance p1, Ll7/c$a;

    .line 14
    .line 15
    invoke-direct {p1, v2, v0}, Ll7/c$a;-><init>(Lj7/i;Ljava/lang/reflect/Type;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object p1, p1, Lp7/a;->a:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lj7/i;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Ll7/c$b;

    .line 30
    .line 31
    invoke-direct {p1, v1, v0}, Ll7/c$b;-><init>(Lj7/i;Ljava/lang/reflect/Type;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    iget-object v4, p0, Ll7/c;->b:Lo7/b;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Lo7/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    new-instance v4, Ll7/d;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Ll7/d;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    nop

    .line 61
    move-object v4, v1

    .line 62
    :goto_0
    if-eqz v4, :cond_3

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_3
    const-class v3, Ljava/util/Collection;

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_8

    .line 72
    .line 73
    const-class v1, Ljava/util/SortedSet;

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    new-instance v1, Lc5/w;

    .line 82
    .line 83
    invoke-direct {v1}, Lc5/w;-><init>()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_4
    const-class v1, Ljava/util/EnumSet;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    new-instance v1, Ll7/e;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ll7/e;-><init>(Ljava/lang/reflect/Type;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_5
    const-class v1, Ljava/util/Set;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    new-instance v1, Lc5/e0;

    .line 112
    .line 113
    invoke-direct {v1}, Lc5/e0;-><init>()V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_6
    const-class v1, Ljava/util/Queue;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    new-instance v1, La0/b;

    .line 127
    .line 128
    invoke-direct {v1}, La0/b;-><init>()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    new-instance v1, La2/b;

    .line 133
    .line 134
    invoke-direct {v1}, La2/b;-><init>()V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    const-class v3, Ljava/util/Map;

    .line 139
    .line 140
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_d

    .line 145
    .line 146
    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    new-instance v1, Lb0/a;

    .line 155
    .line 156
    invoke-direct {v1}, Lb0/a;-><init>()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_9
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_a

    .line 167
    .line 168
    new-instance v1, Lcom/google/android/gms/internal/clearcut/d0;

    .line 169
    .line 170
    invoke-direct {v1}, Lcom/google/android/gms/internal/clearcut/d0;-><init>()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_a
    const-class v1, Ljava/util/SortedMap;

    .line 175
    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_b

    .line 181
    .line 182
    new-instance v1, La6/a;

    .line 183
    .line 184
    invoke-direct {v1}, La6/a;-><init>()V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_b
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 189
    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    move-object v1, v0

    .line 193
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    aget-object v1, v1, v2

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v1}, Ll7/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v1}, Ll7/a;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 213
    .line 214
    .line 215
    const-class v1, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_c

    .line 222
    .line 223
    new-instance v1, Lc5/y;

    .line 224
    .line 225
    invoke-direct {v1}, Lc5/y;-><init>()V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_c
    new-instance v1, Lc5/u;

    .line 230
    .line 231
    invoke-direct {v1}, Lc5/u;-><init>()V

    .line 232
    .line 233
    .line 234
    :cond_d
    :goto_1
    if-eqz v1, :cond_e

    .line 235
    .line 236
    return-object v1

    .line 237
    :cond_e
    new-instance v1, Ll7/b;

    .line 238
    .line 239
    invoke-direct {v1, p1, v0}, Ll7/b;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 240
    .line 241
    .line 242
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll7/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
