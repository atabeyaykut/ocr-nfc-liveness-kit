.class public final Lr4/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lr4/b6;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr4/j3;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;

.field public static final f:Lt6/c;

.field public static final g:Lt6/c;

.field public static final h:Lt6/c;

.field public static final i:Lt6/c;

.field public static final j:Lt6/c;

.field public static final k:Lt6/c;

.field public static final l:Lt6/c;

.field public static final m:Lt6/c;

.field public static final n:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lr4/j3;

    .line 2
    .line 3
    invoke-direct {v0}, Lr4/j3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr4/j3;->a:Lr4/j3;

    .line 7
    .line 8
    sget-object v0, Lr4/d7;->a:Lr4/d7;

    .line 9
    .line 10
    new-instance v1, Lr4/a7;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 14
    .line 15
    .line 16
    const-class v2, Lr4/e7;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Lt6/c;

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v4, "appId"

    .line 29
    .line 30
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lr4/j3;->b:Lt6/c;

    .line 34
    .line 35
    new-instance v1, Lr4/a7;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Lt6/c;

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v4, "appVersion"

    .line 52
    .line 53
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    sput-object v3, Lr4/j3;->c:Lt6/c;

    .line 57
    .line 58
    new-instance v1, Lr4/a7;

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v3, Lt6/c;

    .line 69
    .line 70
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v4, "firebaseProjectId"

    .line 75
    .line 76
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    sput-object v3, Lr4/j3;->d:Lt6/c;

    .line 80
    .line 81
    new-instance v1, Lr4/a7;

    .line 82
    .line 83
    const/4 v3, 0x4

    .line 84
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v3, Lt6/c;

    .line 92
    .line 93
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v4, "mlSdkVersion"

    .line 98
    .line 99
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    .line 101
    .line 102
    sput-object v3, Lr4/j3;->e:Lt6/c;

    .line 103
    .line 104
    new-instance v1, Lr4/a7;

    .line 105
    .line 106
    const/4 v3, 0x5

    .line 107
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v3, Lt6/c;

    .line 115
    .line 116
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v4, "tfliteSchemaVersion"

    .line 121
    .line 122
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    sput-object v3, Lr4/j3;->f:Lt6/c;

    .line 126
    .line 127
    new-instance v1, Lr4/a7;

    .line 128
    .line 129
    const/4 v3, 0x6

    .line 130
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v3, Lt6/c;

    .line 138
    .line 139
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v4, "gcmSenderId"

    .line 144
    .line 145
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    .line 147
    .line 148
    sput-object v3, Lr4/j3;->g:Lt6/c;

    .line 149
    .line 150
    new-instance v1, Lr4/a7;

    .line 151
    .line 152
    const/4 v3, 0x7

    .line 153
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-instance v3, Lt6/c;

    .line 161
    .line 162
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const-string v4, "apiKey"

    .line 167
    .line 168
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    sput-object v3, Lr4/j3;->h:Lt6/c;

    .line 172
    .line 173
    new-instance v1, Lr4/a7;

    .line 174
    .line 175
    const/16 v3, 0x8

    .line 176
    .line 177
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    new-instance v3, Lt6/c;

    .line 185
    .line 186
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v4, "languages"

    .line 191
    .line 192
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    .line 194
    .line 195
    sput-object v3, Lr4/j3;->i:Lt6/c;

    .line 196
    .line 197
    new-instance v1, Lr4/a7;

    .line 198
    .line 199
    const/16 v3, 0x9

    .line 200
    .line 201
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    new-instance v3, Lt6/c;

    .line 209
    .line 210
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const-string v4, "mlSdkInstanceId"

    .line 215
    .line 216
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    sput-object v3, Lr4/j3;->j:Lt6/c;

    .line 220
    .line 221
    new-instance v1, Lr4/a7;

    .line 222
    .line 223
    const/16 v3, 0xa

    .line 224
    .line 225
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    new-instance v3, Lt6/c;

    .line 233
    .line 234
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v4, "isClearcutClient"

    .line 239
    .line 240
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    .line 242
    .line 243
    sput-object v3, Lr4/j3;->k:Lt6/c;

    .line 244
    .line 245
    new-instance v1, Lr4/a7;

    .line 246
    .line 247
    const/16 v3, 0xb

    .line 248
    .line 249
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v3, Lt6/c;

    .line 257
    .line 258
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const-string v4, "isStandaloneMlkit"

    .line 263
    .line 264
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 265
    .line 266
    .line 267
    sput-object v3, Lr4/j3;->l:Lt6/c;

    .line 268
    .line 269
    new-instance v1, Lr4/a7;

    .line 270
    .line 271
    const/16 v3, 0xc

    .line 272
    .line 273
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    new-instance v3, Lt6/c;

    .line 281
    .line 282
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-string v4, "isJsonLogging"

    .line 287
    .line 288
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    .line 290
    .line 291
    sput-object v3, Lr4/j3;->m:Lt6/c;

    .line 292
    .line 293
    new-instance v1, Lr4/a7;

    .line 294
    .line 295
    const/16 v3, 0xd

    .line 296
    .line 297
    invoke-direct {v1, v3, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    new-instance v1, Lt6/c;

    .line 305
    .line 306
    invoke-static {v0}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string v2, "buildLevel"

    .line 311
    .line 312
    invoke-direct {v1, v2, v0}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 313
    .line 314
    .line 315
    sput-object v1, Lr4/j3;->n:Lt6/c;

    .line 316
    .line 317
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lr4/b6;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    iget-object v0, p1, Lr4/b6;->a:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v1, Lr4/j3;->b:Lt6/c;

    .line 8
    .line 9
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lr4/j3;->c:Lt6/c;

    .line 13
    .line 14
    iget-object v1, p1, Lr4/b6;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lr4/j3;->d:Lt6/c;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lr4/j3;->e:Lt6/c;

    .line 26
    .line 27
    iget-object v2, p1, Lr4/b6;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p2, v0, v2}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lr4/j3;->f:Lt6/c;

    .line 33
    .line 34
    iget-object v2, p1, Lr4/b6;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p2, v0, v2}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lr4/j3;->g:Lt6/c;

    .line 40
    .line 41
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lr4/j3;->h:Lt6/c;

    .line 45
    .line 46
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lr4/j3;->i:Lt6/c;

    .line 50
    .line 51
    iget-object v1, p1, Lr4/b6;->e:Lr4/x6;

    .line 52
    .line 53
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 54
    .line 55
    .line 56
    sget-object v0, Lr4/j3;->j:Lt6/c;

    .line 57
    .line 58
    iget-object v1, p1, Lr4/b6;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 61
    .line 62
    .line 63
    sget-object v0, Lr4/j3;->k:Lt6/c;

    .line 64
    .line 65
    iget-object v1, p1, Lr4/b6;->g:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 68
    .line 69
    .line 70
    sget-object v0, Lr4/j3;->l:Lt6/c;

    .line 71
    .line 72
    iget-object v1, p1, Lr4/b6;->h:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lr4/j3;->m:Lt6/c;

    .line 78
    .line 79
    iget-object v1, p1, Lr4/b6;->i:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lr4/j3;->n:Lt6/c;

    .line 85
    .line 86
    iget-object p1, p1, Lr4/b6;->j:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 89
    .line 90
    .line 91
    return-void
.end method
