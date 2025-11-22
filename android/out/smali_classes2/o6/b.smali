.class public final Lo6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh5/j<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lo6/c;


# direct methods
.method public constructor <init>(Lo6/c;)V
    .locals 0

    iput-object p1, p0, Lo6/b;->a:Lo6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lh5/k;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Void;

    .line 4
    .line 5
    iget-object p1, p0, Lo6/b;->a:Lo6/c;

    .line 6
    .line 7
    iget-object v1, p1, Lo6/c;->f:Lp4/m9;

    .line 8
    .line 9
    iget-object v2, p1, Lo6/c;->b:Lp6/f;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "Settings query params were: "

    .line 15
    .line 16
    const-string v4, "Requesting settings from "

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :try_start_0
    invoke-static {v2}, Lp4/m9;->c(Lp6/f;)Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v7, v1, Lp4/m9;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v7, Lb0/a;

    .line 26
    .line 27
    iget-object v8, v1, Lp4/m9;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v8, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v7, Ll6/a;

    .line 35
    .line 36
    invoke-direct {v7, v8, v6}, Ll6/a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 37
    .line 38
    .line 39
    iget-object v8, v7, Ll6/a;->c:Ljava/util/HashMap;

    .line 40
    .line 41
    const-string v9, "User-Agent"

    .line 42
    .line 43
    const-string v10, "Crashlytics Android SDK/18.2.6"

    .line 44
    .line 45
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v9, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    .line 49
    .line 50
    const-string v10, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 51
    .line 52
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {v7, v2}, Lp4/m9;->a(Ll6/a;Lp6/f;)V

    .line 56
    .line 57
    .line 58
    iget-object v8, v1, Lp4/m9;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v8, Lc5/y;

    .line 61
    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v1, Lp4/m9;->a:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v8, v4}, Lc5/y;->l(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v4, v1, Lp4/m9;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Lc5/y;

    .line 84
    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v4, v3}, Lc5/y;->E(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ll6/a;->b()Lp4/i1;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Lp4/m9;->d(Lp4/i1;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v3

    .line 110
    iget-object v1, v1, Lp4/m9;->c:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lc5/y;

    .line 113
    .line 114
    const/4 v4, 0x6

    .line 115
    invoke-virtual {v1, v4}, Lc5/y;->f(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    .line 121
    const-string v1, "Settings request failed."

    .line 122
    .line 123
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :cond_0
    move-object v1, v5

    .line 127
    :goto_0
    if-eqz v1, :cond_3

    .line 128
    .line 129
    iget-object v3, p1, Lo6/c;->c:Lo6/e;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const-string v4, "settings_version"

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    const/4 v6, 0x3

    .line 141
    if-eq v4, v6, :cond_1

    .line 142
    .line 143
    new-instance v4, Lo6/a;

    .line 144
    .line 145
    invoke-direct {v4}, Lo6/a;-><init>()V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    new-instance v4, Lo6/g;

    .line 150
    .line 151
    invoke-direct {v4}, Lo6/g;-><init>()V

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v3, v3, Lo6/e;->a:Lcom/google/android/gms/internal/clearcut/z;

    .line 155
    .line 156
    invoke-interface {v4, v3, v1}, Lo6/f;->a(Lcom/google/android/gms/internal/clearcut/z;Lorg/json/JSONObject;)Lp6/e;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iget-wide v6, v3, Lp6/e;->d:J

    .line 161
    .line 162
    iget-object v4, p1, Lo6/c;->e:Lcom/google/android/gms/internal/measurement/w5;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const-string v8, "Failed to close settings writer."

    .line 168
    .line 169
    const/4 v9, 0x2

    .line 170
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_2

    .line 175
    .line 176
    const-string v9, "Writing settings to cache file..."

    .line 177
    .line 178
    invoke-static {v0, v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    :cond_2
    :try_start_1
    const-string v9, "expires_at"

    .line 182
    .line 183
    invoke-virtual {v1, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    new-instance v6, Ljava/io/FileWriter;

    .line 187
    .line 188
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v4, Ljava/io/File;

    .line 191
    .line 192
    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .line 194
    .line 195
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catch_1
    move-exception v4

    .line 207
    goto :goto_2

    .line 208
    :catchall_0
    move-exception p1

    .line 209
    goto :goto_4

    .line 210
    :catch_2
    move-exception v4

    .line 211
    move-object v6, v5

    .line 212
    :goto_2
    :try_start_3
    const-string v7, "Failed to cache settings"

    .line 213
    .line 214
    invoke-static {v0, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    .line 216
    .line 217
    :goto_3
    invoke-static {v6, v8}, Lh6/e;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v0, "Loaded settings: "

    .line 221
    .line 222
    invoke-static {v1, v0}, Lo6/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, v2, Lp6/f;->f:Ljava/lang/String;

    .line 226
    .line 227
    const-string v1, "com.google.firebase.crashlytics"

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    iget-object v4, p1, Lo6/c;->a:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const-string v2, "existing_instance_identifier"

    .line 241
    .line 242
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    .line 247
    .line 248
    iget-object v0, p1, Lo6/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p1, Lo6/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Lh5/l;

    .line 260
    .line 261
    iget-object v1, v3, Lp6/e;->a:Lp6/a;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Lh5/l;

    .line 267
    .line 268
    invoke-direct {v0}, Lh5/l;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :catchall_1
    move-exception p1

    .line 279
    move-object v5, v6

    .line 280
    :goto_4
    invoke-static {v5, v8}, Lh6/e;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p1

    .line 284
    :cond_3
    :goto_5
    invoke-static {v5}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    return-object p1
.end method
