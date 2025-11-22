.class public final Lpg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/e;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final getContent(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/e;->a:Landroid/app/Activity;

    .line 2
    .line 3
    const-string v1, "pdf"

    .line 4
    .line 5
    const-string v2, "content"

    .line 6
    .line 7
    const-string v3, "content payment "

    .line 8
    .line 9
    const-string v4, "value"

    .line 10
    .line 11
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v5, "type"

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    sget-object v6, Lyd/a;->a:Lyd/a$a;

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v7, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v6, p1, v7}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "loading"

    .line 42
    .line 43
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Ldf/n;

    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-direct {v0, v1}, Ldf/n;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_0
    const-string p1, "externalLink"

    .line 65
    .line 66
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Ldf/f;

    .line 77
    .line 78
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v4}, Ldf/f;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string p1, "login"

    .line 86
    .line 87
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    const-string p1, "0"

    .line 94
    .line 95
    invoke-static {v4, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    new-instance p1, Landroid/content/Intent;

    .line 102
    .line 103
    const-string v1, "action.login.open"

    .line 104
    .line 105
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const v1, 0x8000

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    const/16 v2, 0x22

    .line 117
    .line 118
    if-lt v1, v2, :cond_2

    .line 119
    .line 120
    const-string v1, "tr.gov.turkiye.edevlet.kapisi"

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    :cond_2
    const v1, 0x10008000

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    invoke-static {v5, v1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v0, Ldf/i0;

    .line 149
    .line 150
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v4, v1, v3}, Ldf/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    const-string p1, "permission"

    .line 158
    .line 159
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Ldf/g;

    .line 170
    .line 171
    invoke-direct {v0}, Ldf/g;-><init>()V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    const-string p1, "edkCloseService"

    .line 176
    .line 177
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_6

    .line 182
    .line 183
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v0, Ldf/g0;

    .line 188
    .line 189
    invoke-direct {v0}, Ldf/g0;-><init>()V

    .line 190
    .line 191
    .line 192
    :goto_0
    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    const-string p1, "paymentResult"

    .line 197
    .line 198
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_7

    .line 203
    .line 204
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Ldf/x;

    .line 209
    .line 210
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v4}, Ldf/x;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    invoke-virtual {p1, v0}, Lqd/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    .line 219
    :catch_0
    :cond_7
    :goto_2
    return-void
.end method
