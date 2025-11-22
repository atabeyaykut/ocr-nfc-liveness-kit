.class public final Lpg/p;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;)V
    .locals 4

    iput-object p1, p0, Lpg/p;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    const-wide/16 v0, 0x1b58

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 8

    .line 1
    iget-object v0, p0, Lpg/p;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 2
    .line 3
    iget v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->R:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->R:I

    .line 8
    .line 9
    iget v2, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->P:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->T:Lpg/p;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v1, Lpg/p;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lpg/p;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->T:Lpg/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->O:Lgd/c;

    .line 33
    .line 34
    if-nez v1, :cond_6

    .line 35
    .line 36
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->V:Lgd/e;

    .line 37
    .line 38
    const-string v2, "BeaconManager"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-array v4, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v5, "API removeAllRangeNotifiers"

    .line 46
    .line 47
    invoke-static {v2, v5, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v1, Lgd/e;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->V:Lgd/e;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    new-array v4, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v5, "API removeAllMonitorNotifiers"

    .line 62
    .line 63
    invoke-static {v2, v5, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lgd/e;->e()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, v1, Lgd/e;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_0
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->T:Lpg/p;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 83
    .line 84
    .line 85
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "result"

    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    const-string v2, "beacon"

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v2, "error"

    .line 102
    .line 103
    const-string v5, "FAIL_EXCEEDS_TRY_COUNT"

    .line 104
    .line 105
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    const-string v2, "errorMessage"

    .line 109
    .line 110
    const-string v5, "Beacon tarama sonucunda e\u015fle\u015fen bir cihaz bulunamad\u0131."

    .line 111
    .line 112
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    new-instance v2, Lorg/json/JSONObject;

    .line 116
    .line 117
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-wide v5, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->a0:D

    .line 121
    .line 122
    const-string v7, "latitude"

    .line 123
    .line 124
    invoke-virtual {v2, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    iget-wide v5, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->h0:D

    .line 128
    .line 129
    const-string v7, "longitude"

    .line 130
    .line 131
    invoke-virtual {v2, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    iget v5, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->Z:F

    .line 135
    .line 136
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const-string v6, "verticalAccuracy"

    .line 141
    .line 142
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    iget v5, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->Y:F

    .line 146
    .line 147
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    const-string v6, "horizontalAccuracy"

    .line 152
    .line 153
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v5, "location"

    .line 157
    .line 158
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    sget-object v2, Lyd/a;->a:Lyd/a$a;

    .line 162
    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v6, "Result Error "

    .line 166
    .line 167
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    new-array v3, v3, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {v2, v5, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v3, "muzekartBeaconResult("

    .line 191
    .line 192
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const/16 v1, 0x29

    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_6
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->T:Lpg/p;

    .line 212
    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 216
    .line 217
    .line 218
    :cond_7
    :goto_1
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    sget-object v0, Lyd/a;->a:Lyd/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seconds remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
