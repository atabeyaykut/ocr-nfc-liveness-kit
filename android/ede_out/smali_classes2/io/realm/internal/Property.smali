.class public Lio/realm/internal/Property;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;


# static fields
.field public static final b:J


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/Property;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Property;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/realm/internal/Property;->a:J

    sget-object p1, Lio/realm/internal/h;->b:Lio/realm/internal/h;

    invoke-virtual {p1, p0}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    return-void
.end method

.method public static a(Lio/realm/RealmFieldType;Z)I
    .locals 3

    sget-object v0, Lio/realm/internal/Property$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Unsupported filed type: \'%s\'."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x109

    goto/16 :goto_0

    :pswitch_1
    const/16 p0, 0x107

    return p0

    :pswitch_2
    const/16 v1, 0x10c

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x10a

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x10b

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x104

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x103

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x106

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x105

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x100

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x102

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x101

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x207

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x20c

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0x20a

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x20b

    goto/16 :goto_0

    :pswitch_10
    const/16 v1, 0x204

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x203

    goto/16 :goto_0

    :pswitch_12
    const/16 v1, 0x206

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x205

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x200

    goto :goto_0

    :pswitch_15
    const/16 v1, 0x202

    goto :goto_0

    :pswitch_16
    const/16 v1, 0x201

    goto :goto_0

    :pswitch_17
    const/16 v1, 0x209

    goto :goto_0

    :pswitch_18
    const/16 v1, 0x89

    goto :goto_0

    :pswitch_19
    const/16 v1, 0x86

    goto :goto_0

    :pswitch_1a
    const/16 v1, 0x8c

    goto :goto_0

    :pswitch_1b
    const/16 v1, 0x8a

    goto :goto_0

    :pswitch_1c
    const/16 v1, 0x8b

    goto :goto_0

    :pswitch_1d
    const/16 v1, 0x85

    goto :goto_0

    :pswitch_1e
    const/16 v1, 0x84

    goto :goto_0

    :pswitch_1f
    const/16 v1, 0x83

    goto :goto_0

    :pswitch_20
    const/16 v1, 0x82

    goto :goto_0

    :pswitch_21
    const/16 v1, 0x81

    goto :goto_0

    :pswitch_22
    const/16 v1, 0x80

    goto :goto_0

    :pswitch_23
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_24
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_25
    const/16 v1, 0xc

    goto :goto_0

    :pswitch_26
    const/16 v1, 0xa

    goto :goto_0

    :pswitch_27
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_28
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_29
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_2a
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2b
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2c
    const/4 v1, 0x0

    :goto_0
    :pswitch_2d
    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x40

    :goto_1
    or-int p0, v1, v2

    return p0

    :pswitch_2e
    const/16 p0, 0x88

    return p0

    :pswitch_2f
    const/16 p0, 0x87

    return p0

    :pswitch_30
    const/16 p0, 0x47

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2c
        :pswitch_2d
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native nativeCreatePersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
.end method

.method public static native nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J
.end method

.method private static native nativeGetColumnKey(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetLinkedObjectName(J)Ljava/lang/String;
.end method

.method private static native nativeGetType(J)I
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetColumnKey(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetLinkedObjectName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lio/realm/RealmFieldType;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Property;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetType(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v1, v0, -0x41

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch v1, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    packed-switch v1, :pswitch_data_2

    .line 16
    .line 17
    .line 18
    packed-switch v1, :pswitch_data_3

    .line 19
    .line 20
    .line 21
    packed-switch v1, :pswitch_data_4

    .line 22
    .line 23
    .line 24
    packed-switch v1, :pswitch_data_5

    .line 25
    .line 26
    .line 27
    packed-switch v1, :pswitch_data_6

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    aput-object v0, v3, v4

    .line 43
    .line 44
    const-string v0, "Unsupported property type: \'%d\'"

    .line 45
    .line 46
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :pswitch_0
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_1
    sget-object v0, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_2
    sget-object v0, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_3
    sget-object v0, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_4
    sget-object v0, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_5
    sget-object v0, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_6
    sget-object v0, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_7
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_8
    sget-object v0, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :pswitch_9
    sget-object v0, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_a
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_b
    sget-object v0, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_c
    sget-object v0, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_d
    sget-object v0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :pswitch_e
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :pswitch_f
    sget-object v0, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :pswitch_10
    sget-object v0, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_11
    sget-object v0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_12
    sget-object v0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :pswitch_13
    sget-object v0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :pswitch_14
    sget-object v0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_15
    sget-object v0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :pswitch_16
    sget-object v0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :pswitch_17
    sget-object v0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_18
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_19
    sget-object v0, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_1a
    sget-object v0, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :pswitch_1b
    sget-object v0, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :pswitch_1c
    sget-object v0, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_1d
    sget-object v0, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_1e
    sget-object v0, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :pswitch_1f
    sget-object v0, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_20
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_21
    sget-object v0, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :pswitch_22
    sget-object v0, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_23
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_24
    sget-object v0, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :pswitch_25
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :pswitch_26
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :pswitch_27
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :pswitch_28
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :pswitch_29
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :pswitch_2a
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :pswitch_2b
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :pswitch_2c
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :pswitch_2d
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :pswitch_2e
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :pswitch_2f
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :pswitch_30
    sget-object v0, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    .line 222
    .line 223
    :goto_0
    return-object v0

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :pswitch_data_4
    .packed-switch 0x109
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :pswitch_data_5
    .packed-switch 0x200
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :pswitch_data_6
    .packed-switch 0x209
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/Property;->b:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->a:J

    return-wide v0
.end method
