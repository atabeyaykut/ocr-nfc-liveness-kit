.class public final synthetic Lc5/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/y5;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Exception;

.field public final synthetic d:[B

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lc5/y5;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/x5;->a:Lc5/y5;

    iput p2, p0, Lc5/x5;->b:I

    iput-object p3, p0, Lc5/x5;->c:Ljava/lang/Exception;

    iput-object p4, p0, Lc5/x5;->d:[B

    iput-object p5, p0, Lc5/x5;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc5/x5;->a:Lc5/y5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/y5;->c:Lc0/c;

    .line 4
    .line 5
    iget-object v0, v0, Lc0/c;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc5/i4;

    .line 8
    .line 9
    iget-object v1, v0, Lc5/i4;->m:Lc5/v7;

    .line 10
    .line 11
    const-string v2, "timestamp"

    .line 12
    .line 13
    const-string v3, "gclid"

    .line 14
    .line 15
    const-string v4, ""

    .line 16
    .line 17
    const-string v5, "deeplink"

    .line 18
    .line 19
    iget v6, p0, Lc5/x5;->b:I

    .line 20
    .line 21
    iget-object v7, p0, Lc5/x5;->c:Ljava/lang/Exception;

    .line 22
    .line 23
    const/16 v8, 0xc8

    .line 24
    .line 25
    iget-object v9, v0, Lc5/i4;->j:Lc5/e3;

    .line 26
    .line 27
    if-eq v6, v8, :cond_0

    .line 28
    .line 29
    const/16 v8, 0xcc

    .line 30
    .line 31
    if-eq v6, v8, :cond_0

    .line 32
    .line 33
    const/16 v8, 0x130

    .line 34
    .line 35
    if-ne v6, v8, :cond_7

    .line 36
    .line 37
    const/16 v6, 0x130

    .line 38
    .line 39
    :cond_0
    if-nez v7, :cond_7

    .line 40
    .line 41
    iget-object v6, v0, Lc5/i4;->h:Lc5/s3;

    .line 42
    .line 43
    invoke-static {v6}, Lc5/i4;->c(Lc5/y4;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, v6, Lc5/s3;->s:Lc5/m3;

    .line 47
    .line 48
    const/4 v7, 0x1

    .line 49
    invoke-virtual {v6, v7}, Lc5/m3;->a(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v6, p0, Lc5/x5;->d:[B

    .line 53
    .line 54
    if-eqz v6, :cond_6

    .line 55
    .line 56
    array-length v7, v6

    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_1
    new-instance v7, Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 67
    .line 68
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-wide/16 v10, 0x0

    .line 80
    .line 81
    invoke-virtual {v6, v2, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v9, Lc5/e3;->n:Lc5/c3;

    .line 95
    .line 96
    const-string v1, "Deferred Deep Link is empty."

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_2
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .line 105
    .line 106
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 107
    .line 108
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_3
    move-object v6, v1

    .line 117
    check-cast v6, Lc5/i4;

    .line 118
    .line 119
    iget-object v6, v6, Lc5/i4;->a:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-instance v8, Landroid/content/Intent;

    .line 126
    .line 127
    const-string v12, "android.intent.action.VIEW"

    .line 128
    .line 129
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    invoke-virtual {v6, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-eqz v6, :cond_5

    .line 142
    .line 143
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_5

    .line 148
    .line 149
    new-instance v6, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v3, "_cis"

    .line 158
    .line 159
    const-string v4, "ddp"

    .line 160
    .line 161
    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 165
    .line 166
    const-string v3, "auto"

    .line 167
    .line 168
    const-string v4, "_cmp"

    .line 169
    .line 170
    invoke-virtual {v0, v3, v4, v6}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    :try_start_2
    move-object v0, v1

    .line 181
    check-cast v0, Lc5/i4;

    .line 182
    .line 183
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 184
    .line 185
    const-string v3, "google.analytics.deferred.deeplink.prefs"

    .line 186
    .line 187
    invoke-virtual {v0, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    .line 197
    .line 198
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 199
    .line 200
    .line 201
    move-result-wide v3

    .line 202
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 203
    .line 204
    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    .line 207
    .line 208
    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    .line 212
    .line 213
    const-string v2, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 214
    .line 215
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    check-cast v1, Lc5/i4;

    .line 219
    .line 220
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    check-cast v1, Lc5/i4;

    .line 228
    .line 229
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 230
    .line 231
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 235
    .line 236
    const-string v2, "Failed to persist Deferred Deep Link. exception"

    .line 237
    .line 238
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_5
    :goto_0
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v9, Lc5/e3;->j:Lc5/c3;

    .line 246
    .line 247
    const-string v1, "Deferred Deep Link validation failed. gclid, deep link"

    .line 248
    .line 249
    invoke-virtual {v0, v4, v1, v7}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_1
    move-exception v0

    .line 254
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 255
    .line 256
    .line 257
    const-string v1, "Failed to parse the Deferred Deep Link response. exception"

    .line 258
    .line 259
    iget-object v2, v9, Lc5/e3;->f:Lc5/c3;

    .line 260
    .line 261
    invoke-virtual {v2, v0, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_6
    :goto_1
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 266
    .line 267
    .line 268
    const-string v0, "Deferred Deep Link response empty."

    .line 269
    .line 270
    iget-object v1, v9, Lc5/e3;->n:Lc5/c3;

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_7
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v1, v9, Lc5/e3;->j:Lc5/c3;

    .line 284
    .line 285
    const-string v2, "Network Request for Deferred Deep Link failed. response, exception"

    .line 286
    .line 287
    invoke-virtual {v1, v0, v2, v7}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_8
    :goto_2
    return-void
.end method
