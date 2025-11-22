.class public final Lc5/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public c:Landroid/os/Bundle;

.field public final synthetic d:Lc5/s3;


# direct methods
.method public constructor <init>(Lc5/s3;)V
    .locals 0

    iput-object p1, p0, Lc5/n3;->d:Lc5/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "default_event_parameters"

    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    iput-object p1, p0, Lc5/n3;->a:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lc5/n3;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/n3;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lc5/n3;->d:Lc5/s3;

    .line 8
    .line 9
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lc5/n3;->a:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_9

    .line 21
    .line 22
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 35
    .line 36
    .line 37
    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    if-ge v4, v5, :cond_8

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "n"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "t"

    .line 51
    .line 52
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    const/16 v9, 0x64

    .line 61
    .line 62
    const/4 v10, 0x2

    .line 63
    const/4 v11, 0x1

    .line 64
    if-eq v8, v9, :cond_3

    .line 65
    .line 66
    const/16 v9, 0x6c

    .line 67
    .line 68
    if-eq v8, v9, :cond_2

    .line 69
    .line 70
    const/16 v9, 0x73

    .line 71
    .line 72
    if-eq v8, v9, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v8, "s"

    .line 76
    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const-string v8, "l"

    .line 86
    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    const/4 v8, 0x2

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const-string v8, "d"

    .line 96
    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_4

    .line 102
    .line 103
    const/4 v8, 0x1

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :goto_1
    const/4 v8, -0x1

    .line 106
    :goto_2
    const-string v9, "v"

    .line 107
    .line 108
    if-eqz v8, :cond_7

    .line 109
    .line 110
    if-eq v8, v11, :cond_6

    .line 111
    .line 112
    if-eq v8, v10, :cond_5

    .line 113
    .line 114
    :try_start_2
    iget-object v5, v0, Lc5/x4;->a:Lc5/z4;

    .line 115
    .line 116
    check-cast v5, Lc5/i4;

    .line 117
    .line 118
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 119
    .line 120
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 121
    .line 122
    .line 123
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 124
    .line 125
    const-string v6, "Unrecognized persisted bundle type. Type"

    .line 126
    .line 127
    invoke-virtual {v5, v7, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v7

    .line 139
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 148
    .line 149
    .line 150
    move-result-wide v7

    .line 151
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catch_0
    :try_start_3
    iget-object v5, v0, Lc5/x4;->a:Lc5/z4;

    .line 164
    .line 165
    check-cast v5, Lc5/i4;

    .line 166
    .line 167
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 168
    .line 169
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 170
    .line 171
    .line 172
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 173
    .line 174
    const-string v6, "Error reading value from SharedPreferences. Value dropped"

    .line 175
    .line 176
    invoke-virtual {v5, v6}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_8
    iput-object v2, p0, Lc5/n3;->c:Landroid/os/Bundle;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :catch_1
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 187
    .line 188
    check-cast v0, Lc5/i4;

    .line 189
    .line 190
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 191
    .line 192
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 193
    .line 194
    .line 195
    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 196
    .line 197
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_4
    iget-object v0, p0, Lc5/n3;->c:Landroid/os/Bundle;

    .line 203
    .line 204
    if-nez v0, :cond_a

    .line 205
    .line 206
    iget-object v0, p0, Lc5/n3;->b:Landroid/os/Bundle;

    .line 207
    .line 208
    iput-object v0, p0, Lc5/n3;->c:Landroid/os/Bundle;

    .line 209
    .line 210
    :cond_a
    :goto_5
    iget-object v0, p0, Lc5/n3;->c:Landroid/os/Bundle;

    .line 211
    .line 212
    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lc5/n3;->d:Lc5/s3;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lc5/n3;->a:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    .line 32
    .line 33
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_6

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 63
    .line 64
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v8, "n"

    .line 68
    .line 69
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    const-string v5, "v"

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    instance-of v5, v6, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    const-string v8, "t"

    .line 84
    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    :try_start_1
    const-string v5, "s"

    .line 88
    .line 89
    :goto_1
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    instance-of v5, v6, Ljava/lang/Long;

    .line 94
    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    const-string v5, "l"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    instance-of v5, v6, Ljava/lang/Double;

    .line 101
    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    const-string v5, "d"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_2
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    iget-object v5, v0, Lc5/x4;->a:Lc5/z4;

    .line 112
    .line 113
    check-cast v5, Lc5/i4;

    .line 114
    .line 115
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 116
    .line 117
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 118
    .line 119
    .line 120
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 121
    .line 122
    const-string v7, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v5

    .line 133
    iget-object v6, v0, Lc5/x4;->a:Lc5/z4;

    .line 134
    .line 135
    check-cast v6, Lc5/i4;

    .line 136
    .line 137
    iget-object v6, v6, Lc5/i4;->j:Lc5/e3;

    .line 138
    .line 139
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 140
    .line 141
    .line 142
    const-string v7, "Cannot serialize bundle value to SharedPreferences"

    .line 143
    .line 144
    iget-object v6, v6, Lc5/e3;->f:Lc5/c3;

    .line 145
    .line 146
    invoke-virtual {v6, v5, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    .line 156
    .line 157
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lc5/n3;->c:Landroid/os/Bundle;

    .line 161
    .line 162
    return-void
.end method
