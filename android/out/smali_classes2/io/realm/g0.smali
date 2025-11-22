.class public final Lio/realm/g0;
.super Lio/realm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/g0$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Object;

.field public static l:Lio/realm/o0;


# instance fields
.field public final j:Lio/realm/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/g0;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 3

    invoke-direct {p0, p1}, Lio/realm/a;-><init>(Lio/realm/internal/OsSharedRealm;)V

    new-instance v0, Lio/realm/u;

    new-instance v1, Lio/realm/internal/b;

    iget-object v2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 11
    iget-object v2, v2, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 12
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/realm/internal/b;-><init>(Lio/realm/internal/o;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {v0, p0, v1}, Lio/realm/u;-><init>(Lio/realm/a;Lio/realm/internal/b;)V

    iput-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    return-void
.end method

.method public constructor <init>(Lio/realm/m0;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/realm/m0;->c:Lio/realm/o0;

    .line 2
    iget-object v0, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 3
    new-instance v1, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v0}, Lio/realm/internal/o;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-direct {p0, p1, v1, p2}, Lio/realm/a;-><init>(Lio/realm/m0;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V

    new-instance p1, Lio/realm/u;

    new-instance p2, Lio/realm/internal/b;

    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 5
    iget-object v0, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 6
    iget-object v1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/realm/internal/b;-><init>(Lio/realm/internal/o;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {p1, p0, p2}, Lio/realm/u;-><init>(Lio/realm/a;Lio/realm/internal/b;)V

    iput-object p1, p0, Lio/realm/g0;->j:Lio/realm/u;

    iget-object p1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 7
    iget-boolean p2, p1, Lio/realm/o0;->l:Z

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Lio/realm/o0;->i:Lio/realm/internal/o;

    invoke-virtual {p1}, Lio/realm/internal/o;->f()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lio/realm/internal/o;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->close()V

    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    iget-object p2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 9
    iget-object p2, p2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lio/realm/internal/Table;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Cannot open the read only Realm. \'%s\' is missing."

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static F(Lio/realm/o0;)V
    .locals 1

    sget-object v0, Lio/realm/g0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lio/realm/g0;->l:Lio/realm/o0;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static t()Lio/realm/g0;
    .locals 4

    .line 1
    sget-object v0, Lio/realm/g0;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lio/realm/g0;->l:Lio/realm/o0;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    sget-object v0, Lio/realm/a;->g:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Call `Realm.init(Context)` before calling this method."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`."

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    const-class v0, Lio/realm/g0;

    .line 30
    .line 31
    sget-object v2, Lio/realm/m0;->e:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v2, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v2, v3}, Lio/realm/m0;->d(Ljava/lang/String;Z)Lio/realm/m0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lio/realm/internal/OsSharedRealm$a;->c:Lio/realm/internal/OsSharedRealm$a;

    .line 41
    .line 42
    invoke-virtual {v2, v1, v0, v3}, Lio/realm/m0;->b(Lio/realm/o0;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lio/realm/g0;

    .line 47
    .line 48
    return-object v0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v1
.end method

.method public static y(Landroid/content/Context;)V
    .locals 8

    .line 1
    sget-object v0, Lio/realm/a;->g:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    if-eqz p0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    nop

    .line 26
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_5

    .line 33
    .line 34
    :cond_2
    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    :cond_4
    add-int/2addr v4, v1

    .line 60
    const/4 v5, 0x4

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    aget-wide v5, v0, v5

    .line 66
    .line 67
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 68
    .line 69
    .line 70
    add-long/2addr v2, v5

    .line 71
    const-wide/16 v5, 0xc8

    .line 72
    .line 73
    cmp-long v7, v2, v5

    .line 74
    .line 75
    if-lez v7, :cond_3

    .line 76
    .line 77
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_a

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_a

    .line 92
    .line 93
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v2, 0x1a

    .line 96
    .line 97
    if-lt v0, v2, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Landroidx/appcompat/view/d;->p(Landroid/content/pm/PackageManager;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    goto :goto_2

    .line 108
    :cond_6
    const/4 v0, 0x0

    .line 109
    :try_start_1
    const-string v2, "com.google.android.gms.instantapps.InstantApps"

    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "getPackageManagerCompat"

    .line 116
    .line 117
    new-array v4, v1, [Ljava/lang/Class;

    .line 118
    .line 119
    const-class v5, Landroid/content/Context;

    .line 120
    .line 121
    aput-object v5, v4, v0

    .line 122
    .line 123
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object p0, v1, v0

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "com.google.android.gms.instantapps.PackageManagerCompat"

    .line 137
    .line 138
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v3, "isInstantApp"

    .line 143
    .line 144
    new-array v4, v0, [Ljava/lang/Class;

    .line 145
    .line 146
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-array v3, v0, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    goto :goto_2

    .line 163
    :catch_1
    nop

    .line 164
    :goto_2
    if-nez v0, :cond_9

    .line 165
    .line 166
    invoke-static {p0}, Lio/realm/internal/m;->a(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lio/realm/o0$a;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Lio/realm/o0$a;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lio/realm/o0$a;->a()Lio/realm/o0;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lio/realm/g0;->F(Lio/realm/o0;)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Lio/realm/internal/j;->b:Lio/realm/internal/j;

    .line 182
    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    sget-object v0, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    .line 187
    .line 188
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Lio/realm/a;->g:Landroid/content/Context;

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_8
    sput-object p0, Lio/realm/a;->g:Landroid/content/Context;

    .line 205
    .line 206
    :goto_4
    new-instance v0, Ljava/io/File;

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const-string v1, ".realm.temp"

    .line 213
    .line 214
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->initialize(Ljava/io/File;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_9
    new-instance p0, Lio/realm/exceptions/RealmError;

    .line 222
    .line 223
    const-string v0, "Could not initialize Realm: Instant apps are not currently supported."

    .line 224
    .line 225
    invoke-direct {p0, v0}, Lio/realm/exceptions/RealmError;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v2, "Context.getFilesDir() returns "

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string p0, " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"

    .line 246
    .line 247
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    const-string v0, "Non-null context required."

    .line 261
    .line 262
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p0

    .line 266
    :cond_c
    :goto_5
    return-void

    .line 267
    :array_0
    .array-data 8
        0x1
        0x2
        0x5
        0xa
        0x10
    .end array-data
.end method


# virtual methods
.method public final B(Lio/realm/s0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 15
    .line 16
    iget-object v1, v1, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 17
    .line 18
    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/o;->k(Lio/realm/g0;Lio/realm/s0;Ljava/util/HashMap;)J

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Null object cannot be inserted into Realm."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Changing Realm data can only be done from inside a transaction."

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final E(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/s0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 15
    .line 16
    iget-object v0, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lio/realm/internal/o;->l(Lio/realm/g0;Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Changing Realm data can only be done from inside a transaction."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final J(Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/realm/RealmQuery;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/g0;Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Lio/realm/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/realm/m0;->e:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 10
    .line 11
    iget-object v2, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v2, v3}, Lio/realm/m0;->d(Ljava/lang/String;Z)Lio/realm/m0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-class v3, Lio/realm/g0;

    .line 19
    .line 20
    invoke-virtual {v2, v1, v3, v0}, Lio/realm/m0;->b(Lio/realm/o0;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lio/realm/g0;

    .line 25
    .line 26
    return-object v0
.end method

.method public final i()Lio/realm/z0;
    .locals 1

    iget-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    return-object v0
.end method

.method public final n(Lio/realm/s0;ZLjava/util/HashMap;Ljava/util/Set;)Lio/realm/s0;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/realm/a;->k()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 11
    .line 12
    iget-object v1, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lio/realm/internal/o;->m(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object v2, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 29
    .line 30
    move-object v3, p0

    .line 31
    move-object v4, p1

    .line 32
    move v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-object v7, p4

    .line 35
    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/o;->a(Lio/realm/g0;Lio/realm/s0;ZLjava/util/HashMap;Ljava/util/Set;)Lio/realm/s0;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string p3, "Attempting to create an object of type"

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    new-instance p2, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :cond_0
    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p2, "Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "`copyOrUpdate` can only be called inside a write transaction."

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final varargs o(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;[",
            "Lio/realm/v;",
            ")TE;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    array-length v4, p2

    .line 16
    if-ge v3, v4, :cond_1

    .line 17
    .line 18
    aget-object v4, p2, v3

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0, p1, v2, v0, v1}, Lio/realm/g0;->n(Lio/realm/s0;ZLjava/util/HashMap;Ljava/util/Set;)Lio/realm/s0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Null objects cannot be copied into Realm."

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final varargs p(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;[",
            "Lio/realm/v;",
            ")TE;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 8
    .line 9
    iget-object v1, v1, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lio/realm/internal/o;->j(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    array-length v3, p2

    .line 29
    if-ge v2, v3, :cond_1

    .line 30
    .line 31
    aget-object v3, p2, v2

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/realm/g0;->n(Lio/realm/s0;ZLjava/util/HashMap;Ljava/util/Set;)Lio/realm/s0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "A RealmObject with no @PrimaryKey cannot be updated: "

    .line 52
    .line 53
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p2, "Null objects cannot be copied into Realm."

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/s0;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_6

    .line 5
    .line 6
    invoke-static {p3}, Lio/realm/internal/Util;->c(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_5

    .line 11
    .line 12
    invoke-static {p2}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-static {p2}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lio/realm/z0;->b(Ljava/lang/Class;)Lio/realm/x0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 31
    .line 32
    invoke-virtual {v1}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lio/realm/z0;->b(Ljava/lang/Class;)Lio/realm/x0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast p2, Lio/realm/internal/n;

    .line 45
    .line 46
    invoke-virtual {v2, p3}, Lio/realm/x0;->a(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v2, p3}, Lio/realm/x0;->a(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    iget-object v7, v2, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 55
    .line 56
    invoke-virtual {v7, v5, v6}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {p2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object p2, p2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 65
    .line 66
    invoke-virtual {v2, p3}, Lio/realm/x0;->a(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    invoke-virtual {v7, v8, v9}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    sget-object v8, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x1

    .line 78
    if-eq v6, v8, :cond_1

    .line 79
    .line 80
    sget-object v8, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 81
    .line 82
    if-ne v6, v8, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v6, 0x0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 88
    :goto_1
    if-eqz v6, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2, p3}, Lio/realm/x0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    invoke-interface {p2, v3, v4, v5}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 101
    .line 102
    .line 103
    move-result-wide p2

    .line 104
    invoke-virtual {v0, v1}, Lio/realm/z0;->d(Ljava/lang/String;)Lio/realm/internal/Table;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget v2, Lio/realm/internal/CheckedRow;->f:I

    .line 112
    .line 113
    iget-wide v2, v1, Lio/realm/internal/Table;->a:J

    .line 114
    .line 115
    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    .line 116
    .line 117
    .line 118
    move-result-wide p2

    .line 119
    new-instance v5, Lio/realm/internal/CheckedRow;

    .line 120
    .line 121
    iget-object v2, v1, Lio/realm/internal/Table;->b:Lio/realm/internal/h;

    .line 122
    .line 123
    invoke-direct {v5, v2, v1, p2, p3}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 127
    .line 128
    iget-object v2, p2, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/4 v7, 0x1

    .line 135
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 136
    .line 137
    move-object v3, p1

    .line 138
    move-object v4, p0

    .line 139
    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/o;->n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const/4 p2, 0x4

    .line 147
    new-array p2, p2, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v7}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    aput-object v0, p2, v9

    .line 154
    .line 155
    aput-object p3, p2, v10

    .line 156
    .line 157
    const/4 p3, 0x2

    .line 158
    aput-object v2, p2, p3

    .line 159
    .line 160
    const/4 p3, 0x3

    .line 161
    aput-object v1, p2, p3

    .line 162
    .line 163
    const-string p3, "Parent type %s expects that property \'%s\' be of type %s but was %s."

    .line 164
    .line 165
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    new-array p2, v10, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object p3, p2, v9

    .line 178
    .line 179
    const-string p3, "Field \'%s\' does not contain a valid link"

    .line 180
    .line 181
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    const-string p2, "Only valid, managed objects can be a parent to an embedded object."

    .line 192
    .line 193
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    const-string p2, "Non-empty \'parentProperty\' required."

    .line 200
    .line 201
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string p2, "Nonnull \'parentObject\' required."

    .line 208
    .line 209
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1
.end method

.method public final r(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/a;->b()V

    iget-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v0, p1}, Lio/realm/z0;->c(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/Table;->b()V

    return-void
.end method

.method public final s(Lio/realm/g0$a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 5
    .line 6
    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    .line 7
    .line 8
    check-cast v0, Le9/a;

    .line 9
    .line 10
    iget-object v0, v0, Le9/a;->a:Landroid/os/Looper;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 27
    .line 28
    iget-boolean v0, v0, Lio/realm/o0;->o:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p1, Lio/realm/exceptions/RealmException;

    .line 34
    .line 35
    const-string v0, "Running transactions on the UI thread has been disabled. It can be enabled by setting \'RealmConfiguration.Builder.allowWritesOnUiThread(true)\'."

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/a;->beginTransaction()V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-interface {p1, p0}, Lio/realm/g0$a;->d(Lio/realm/g0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lio/realm/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    invoke-virtual {p0}, Lio/realm/a;->k()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 62
    .line 63
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    const/4 v2, 0x0

    .line 71
    const-string v3, "Could not cancel transaction, not currently in a transaction."

    .line 72
    .line 73
    invoke-static {v1, v2, v3, v0}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    throw p1
.end method

.method public final v(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v0, p1}, Lio/realm/z0;->c(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p1

    return-object p1
.end method
