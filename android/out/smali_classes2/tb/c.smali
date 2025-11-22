.class public final enum Ltb/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltb/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ltb/c;

.field public static final enum f:Ltb/c;

.field public static final enum g:Ltb/c;

.field public static final enum h:Ltb/c;

.field public static final enum j:Ltb/c;

.field public static final enum k:Ltb/c;

.field public static final enum l:Ltb/c;

.field public static final enum m:Ltb/c;

.field public static final n:Ljava/util/HashSet;

.field public static final p:Ljava/util/HashMap;

.field public static final q:Ljava/util/EnumMap;

.field public static final r:Ljava/util/HashMap;

.field public static final synthetic s:[Ltb/c;


# instance fields
.field public final a:Lja/l;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Llb/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Ltb/c;

    .line 2
    .line 3
    const-string v1, "BOOLEAN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lja/l;->f:Lja/l;

    .line 7
    .line 8
    const-string v4, "boolean"

    .line 9
    .line 10
    const-string v5, "Z"

    .line 11
    .line 12
    const-string v6, "java.lang.Boolean"

    .line 13
    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v7, Ltb/c;->e:Ltb/c;

    .line 19
    .line 20
    new-instance v0, Ltb/c;

    .line 21
    .line 22
    const-string v9, "CHAR"

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    sget-object v11, Lja/l;->g:Lja/l;

    .line 26
    .line 27
    const-string v12, "char"

    .line 28
    .line 29
    const-string v13, "C"

    .line 30
    .line 31
    const-string v14, "java.lang.Character"

    .line 32
    .line 33
    move-object v8, v0

    .line 34
    invoke-direct/range {v8 .. v14}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Ltb/c;->f:Ltb/c;

    .line 38
    .line 39
    new-instance v1, Ltb/c;

    .line 40
    .line 41
    const-string v16, "BYTE"

    .line 42
    .line 43
    const/16 v17, 0x2

    .line 44
    .line 45
    sget-object v18, Lja/l;->h:Lja/l;

    .line 46
    .line 47
    const-string v19, "byte"

    .line 48
    .line 49
    const-string v20, "B"

    .line 50
    .line 51
    const-string v21, "java.lang.Byte"

    .line 52
    .line 53
    move-object v15, v1

    .line 54
    invoke-direct/range {v15 .. v21}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Ltb/c;->g:Ltb/c;

    .line 58
    .line 59
    new-instance v2, Ltb/c;

    .line 60
    .line 61
    const-string v9, "SHORT"

    .line 62
    .line 63
    const/4 v10, 0x3

    .line 64
    sget-object v11, Lja/l;->j:Lja/l;

    .line 65
    .line 66
    const-string v12, "short"

    .line 67
    .line 68
    const-string v13, "S"

    .line 69
    .line 70
    const-string v14, "java.lang.Short"

    .line 71
    .line 72
    move-object v8, v2

    .line 73
    invoke-direct/range {v8 .. v14}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v2, Ltb/c;->h:Ltb/c;

    .line 77
    .line 78
    new-instance v3, Ltb/c;

    .line 79
    .line 80
    const-string v16, "INT"

    .line 81
    .line 82
    const/16 v17, 0x4

    .line 83
    .line 84
    sget-object v18, Lja/l;->k:Lja/l;

    .line 85
    .line 86
    const-string v19, "int"

    .line 87
    .line 88
    const-string v20, "I"

    .line 89
    .line 90
    const-string v21, "java.lang.Integer"

    .line 91
    .line 92
    move-object v15, v3

    .line 93
    invoke-direct/range {v15 .. v21}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v3, Ltb/c;->j:Ltb/c;

    .line 97
    .line 98
    new-instance v4, Ltb/c;

    .line 99
    .line 100
    const-string v9, "FLOAT"

    .line 101
    .line 102
    const/4 v10, 0x5

    .line 103
    sget-object v11, Lja/l;->l:Lja/l;

    .line 104
    .line 105
    const-string v12, "float"

    .line 106
    .line 107
    const-string v13, "F"

    .line 108
    .line 109
    const-string v14, "java.lang.Float"

    .line 110
    .line 111
    move-object v8, v4

    .line 112
    invoke-direct/range {v8 .. v14}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sput-object v4, Ltb/c;->k:Ltb/c;

    .line 116
    .line 117
    new-instance v5, Ltb/c;

    .line 118
    .line 119
    const-string v16, "LONG"

    .line 120
    .line 121
    const/16 v17, 0x6

    .line 122
    .line 123
    sget-object v18, Lja/l;->m:Lja/l;

    .line 124
    .line 125
    const-string v19, "long"

    .line 126
    .line 127
    const-string v20, "J"

    .line 128
    .line 129
    const-string v21, "java.lang.Long"

    .line 130
    .line 131
    move-object v15, v5

    .line 132
    invoke-direct/range {v15 .. v21}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v5, Ltb/c;->l:Ltb/c;

    .line 136
    .line 137
    new-instance v6, Ltb/c;

    .line 138
    .line 139
    const-string v9, "DOUBLE"

    .line 140
    .line 141
    const/4 v10, 0x7

    .line 142
    sget-object v11, Lja/l;->n:Lja/l;

    .line 143
    .line 144
    const-string v12, "double"

    .line 145
    .line 146
    const-string v13, "D"

    .line 147
    .line 148
    const-string v14, "java.lang.Double"

    .line 149
    .line 150
    move-object v8, v6

    .line 151
    invoke-direct/range {v8 .. v14}, Ltb/c;-><init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sput-object v6, Ltb/c;->m:Ltb/c;

    .line 155
    .line 156
    const/16 v8, 0x8

    .line 157
    .line 158
    new-array v8, v8, [Ltb/c;

    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    aput-object v7, v8, v9

    .line 162
    .line 163
    const/4 v7, 0x1

    .line 164
    aput-object v0, v8, v7

    .line 165
    .line 166
    const/4 v0, 0x2

    .line 167
    aput-object v1, v8, v0

    .line 168
    .line 169
    const/4 v0, 0x3

    .line 170
    aput-object v2, v8, v0

    .line 171
    .line 172
    const/4 v0, 0x4

    .line 173
    aput-object v3, v8, v0

    .line 174
    .line 175
    const/4 v0, 0x5

    .line 176
    aput-object v4, v8, v0

    .line 177
    .line 178
    const/4 v0, 0x6

    .line 179
    aput-object v5, v8, v0

    .line 180
    .line 181
    const/4 v0, 0x7

    .line 182
    aput-object v6, v8, v0

    .line 183
    .line 184
    sput-object v8, Ltb/c;->s:[Ltb/c;

    .line 185
    .line 186
    new-instance v0, Ljava/util/HashSet;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    .line 190
    .line 191
    sput-object v0, Ltb/c;->n:Ljava/util/HashSet;

    .line 192
    .line 193
    new-instance v0, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .line 197
    .line 198
    sput-object v0, Ltb/c;->p:Ljava/util/HashMap;

    .line 199
    .line 200
    new-instance v0, Ljava/util/EnumMap;

    .line 201
    .line 202
    const-class v1, Lja/l;

    .line 203
    .line 204
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Ltb/c;->q:Ljava/util/EnumMap;

    .line 208
    .line 209
    new-instance v0, Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .line 213
    .line 214
    sput-object v0, Ltb/c;->r:Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-static {}, Ltb/c;->values()[Ltb/c;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    array-length v1, v0

    .line 221
    :goto_0
    if-ge v9, v1, :cond_1

    .line 222
    .line 223
    aget-object v2, v0, v9

    .line 224
    .line 225
    sget-object v3, Ltb/c;->n:Ljava/util/HashSet;

    .line 226
    .line 227
    invoke-virtual {v2}, Ltb/c;->t()Llb/c;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    sget-object v3, Ltb/c;->p:Ljava/util/HashMap;

    .line 235
    .line 236
    iget-object v4, v2, Ltb/c;->b:Ljava/lang/String;

    .line 237
    .line 238
    if-eqz v4, :cond_0

    .line 239
    .line 240
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    sget-object v3, Ltb/c;->q:Ljava/util/EnumMap;

    .line 244
    .line 245
    invoke-virtual {v2}, Ltb/c;->r()Lja/l;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v3, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    sget-object v3, Ltb/c;->r:Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-virtual {v2}, Ltb/c;->q()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    add-int/lit8 v9, v9, 0x1

    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_0
    const/16 v0, 0xb

    .line 265
    .line 266
    invoke-static {v0}, Ltb/c;->n(I)V

    .line 267
    .line 268
    .line 269
    const/4 v0, 0x0

    .line 270
    throw v0

    .line 271
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILja/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ltb/c;->a:Lja/l;

    iput-object p4, p0, Ltb/c;->b:Ljava/lang/String;

    iput-object p5, p0, Ltb/c;->c:Ljava/lang/String;

    new-instance p1, Llb/c;

    invoke-direct {p1, p6}, Llb/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ltb/c;->d:Llb/c;

    return-void

    :cond_0
    const/4 p1, 0x6

    invoke-static {p1}, Ltb/c;->n(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic n(I)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v3, 0x2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v6, "className"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "wrapperClassName"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "primitiveType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "desc"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "type"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "name"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "get"

    const/4 v6, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_8
    const-string v4, "getWrapperFqName"

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_9
    const-string v4, "getDesc"

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_a
    const-string v4, "getJavaKeywordName"

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_b
    const-string v4, "getPrimitiveType"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v4, "isWrapperClassName"

    aput-object v4, v3, v1

    goto :goto_4

    :pswitch_c
    const-string v4, "<init>"

    aput-object v4, v3, v1

    goto :goto_4

    :pswitch_d
    const-string v4, "getByDesc"

    aput-object v4, v3, v1

    goto :goto_4

    :pswitch_e
    aput-object v5, v3, v1

    :goto_4
    :pswitch_f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    :pswitch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static o(Ljava/lang/String;)Ltb/c;
    .locals 2

    sget-object v0, Ltb/c;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Non-primitive type name passed: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltb/c;
    .locals 1

    const-class v0, Ltb/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltb/c;

    return-object p0
.end method

.method public static values()[Ltb/c;
    .locals 1

    sget-object v0, Ltb/c;->s:[Ltb/c;

    invoke-virtual {v0}, [Ltb/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltb/c;

    return-object v0
.end method


# virtual methods
.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltb/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Ltb/c;->n(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final r()Lja/l;
    .locals 1

    iget-object v0, p0, Ltb/c;->a:Lja/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Ltb/c;->n(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final t()Llb/c;
    .locals 1

    iget-object v0, p0, Ltb/c;->d:Llb/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Ltb/c;->n(I)V

    const/4 v0, 0x0

    throw v0
.end method
