.class public final Lc5/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/v5;


# direct methods
.method public constructor <init>(Lc5/v5;)V
    .locals 0

    iput-object p1, p0, Lc5/i5;->a:Lc5/v5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lc5/i5;->a:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/v5;->p:Lc5/a8;

    .line 4
    .line 5
    iget-object v1, v0, Lc5/a8;->a:Lc5/i4;

    .line 6
    .line 7
    iget-object v2, v1, Lc5/i4;->k:Lc5/h4;

    .line 8
    .line 9
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lc5/a8;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Lc5/a8;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, v1, Lc5/i4;->r:Lc5/v5;

    .line 28
    .line 29
    iget-object v3, v1, Lc5/i4;->h:Lc5/s3;

    .line 30
    .line 31
    const-string v4, "_cc"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v3, Lc5/s3;->w:Lc5/q3;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "source"

    .line 50
    .line 51
    const-string v5, "(not set)"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "medium"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "_cis"

    .line 62
    .line 63
    const-string v5, "intent"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v5, 0x1

    .line 69
    .line 70
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "auto"

    .line 77
    .line 78
    const-string v4, "_cmpx"

    .line 79
    .line 80
    invoke-virtual {v2, v1, v4, v0}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_1
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v3, Lc5/s3;->w:Lc5/q3;

    .line 89
    .line 90
    invoke-virtual {v0}, Lc5/q3;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 101
    .line 102
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "Cache still valid but referrer not found"

    .line 106
    .line 107
    iget-object v0, v0, Lc5/e3;->g:Lc5/c3;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    iget-object v1, v3, Lc5/s3;->x:Lc5/o3;

    .line 114
    .line 115
    invoke-virtual {v1}, Lc5/o3;->a()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    const-wide/32 v8, 0x36ee80

    .line 120
    .line 121
    .line 122
    div-long/2addr v6, v8

    .line 123
    const-wide/16 v10, -0x1

    .line 124
    .line 125
    add-long/2addr v6, v10

    .line 126
    mul-long v6, v6, v8

    .line 127
    .line 128
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v8, Landroid/util/Pair;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-direct {v8, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_3

    .line 159
    .line 160
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v1, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 182
    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    const-string v0, "app"

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    check-cast v0, Ljava/lang/String;

    .line 189
    .line 190
    :goto_1
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Landroid/os/Bundle;

    .line 196
    .line 197
    const-string v4, "_cmp"

    .line 198
    .line 199
    invoke-virtual {v2, v0, v4, v1}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    iget-object v0, v3, Lc5/s3;->w:Lc5/q3;

    .line 203
    .line 204
    invoke-virtual {v0, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :goto_3
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v3, Lc5/s3;->x:Lc5/o3;

    .line 211
    .line 212
    const-wide/16 v1, 0x0

    .line 213
    .line 214
    invoke-virtual {v0, v1, v2}, Lc5/o3;->b(J)V

    .line 215
    .line 216
    .line 217
    :goto_4
    return-void
.end method
