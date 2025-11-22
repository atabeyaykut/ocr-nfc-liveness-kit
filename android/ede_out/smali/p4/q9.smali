.class public final synthetic Lp4/q9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp4/v9;

.field public final synthetic b:Lp4/p7;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lp4/y9;


# direct methods
.method public synthetic constructor <init>(Lp4/v9;Lp4/y9;Lp4/p7;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/q9;->a:Lp4/v9;

    iput-object p2, p0, Lp4/q9;->d:Lp4/y9;

    iput-object p3, p0, Lp4/q9;->b:Lp4/p7;

    iput-object p4, p0, Lp4/q9;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lp4/q9;->a:Lp4/v9;

    .line 4
    .line 5
    iget-object v2, v1, Lp4/q9;->d:Lp4/y9;

    .line 6
    .line 7
    iget-object v3, v1, Lp4/q9;->b:Lp4/p7;

    .line 8
    .line 9
    iget-object v4, v1, Lp4/q9;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v2, Lp4/y9;->a:Lp4/q7;

    .line 15
    .line 16
    iput-object v3, v5, Lp4/q7;->b:Lp4/p7;

    .line 17
    .line 18
    iget-object v3, v5, Lp4/q7;->a:Lp4/g9;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    sget v7, Lp4/m;->a:I

    .line 25
    .line 26
    iget-object v3, v3, Lp4/g9;->d:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v7, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 40
    :goto_1
    if-nez v7, :cond_2

    .line 41
    .line 42
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const-string v3, "NA"

    .line 47
    .line 48
    :goto_2
    new-instance v7, Lp4/f9;

    .line 49
    .line 50
    invoke-direct {v7}, Lp4/f9;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v8, v0, Lp4/v9;->a:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v8, v7, Lp4/f9;->a:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v8, v0, Lp4/v9;->b:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v8, v7, Lp4/f9;->b:Ljava/lang/String;

    .line 60
    .line 61
    const-class v8, Lp4/v9;

    .line 62
    .line 63
    monitor-enter v8

    .line 64
    :try_start_0
    sget-object v9, Lp4/v9;->j:Lp4/d1;

    .line 65
    .line 66
    const v10, 0x7fffffff

    .line 67
    .line 68
    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static {v9}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    const/4 v11, 0x4

    .line 85
    new-array v11, v11, [Ljava/lang/Object;

    .line 86
    .line 87
    move-object v12, v11

    .line 88
    const/4 v11, 0x0

    .line 89
    :goto_3
    invoke-virtual {v9}, Landroidx/core/os/LocaleListCompat;->size()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-ge v5, v13, :cond_7

    .line 94
    .line 95
    invoke-virtual {v9, v5}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    sget-object v14, Lv7/c;->a:Lr3/j;

    .line 100
    .line 101
    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    add-int/lit8 v14, v11, 0x1

    .line 109
    .line 110
    array-length v15, v12

    .line 111
    if-ge v15, v14, :cond_6

    .line 112
    .line 113
    shr-int/lit8 v16, v15, 0x1

    .line 114
    .line 115
    add-int v15, v15, v16

    .line 116
    .line 117
    add-int/2addr v15, v6

    .line 118
    if-ge v15, v14, :cond_4

    .line 119
    .line 120
    add-int/lit8 v15, v14, -0x1

    .line 121
    .line 122
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    add-int/2addr v15, v15

    .line 127
    :cond_4
    if-gez v15, :cond_5

    .line 128
    .line 129
    const v15, 0x7fffffff

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    :cond_6
    aput-object v13, v12, v11

    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    move v11, v14

    .line 141
    goto :goto_3

    .line 142
    :cond_7
    sget-object v5, Lp4/u0;->b:Lp4/r0;

    .line 143
    .line 144
    if-nez v11, :cond_8

    .line 145
    .line 146
    sget-object v5, Lp4/d1;->e:Lp4/d1;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    new-instance v5, Lp4/d1;

    .line 150
    .line 151
    invoke-direct {v5, v12, v11}, Lp4/d1;-><init>([Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    :goto_4
    move-object v9, v5

    .line 155
    sput-object v9, Lp4/v9;->j:Lp4/d1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    :goto_5
    monitor-exit v8

    .line 158
    iput-object v9, v7, Lp4/f9;->e:Lp4/u0;

    .line 159
    .line 160
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 161
    .line 162
    iput-object v5, v7, Lp4/f9;->h:Ljava/lang/Boolean;

    .line 163
    .line 164
    iput-object v3, v7, Lp4/f9;->d:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v4, v7, Lp4/f9;->c:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v3, v0, Lp4/v9;->f:Lh5/z;

    .line 169
    .line 170
    invoke-virtual {v3}, Lh5/z;->m()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_9

    .line 175
    .line 176
    iget-object v3, v0, Lp4/v9;->f:Lh5/z;

    .line 177
    .line 178
    invoke-virtual {v3}, Lh5/z;->i()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_9
    iget-object v3, v0, Lp4/v9;->d:Lv7/l;

    .line 186
    .line 187
    invoke-virtual {v3}, Lv7/l;->a()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    :goto_6
    iput-object v3, v7, Lp4/f9;->f:Ljava/lang/String;

    .line 192
    .line 193
    const/16 v3, 0xa

    .line 194
    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    and-int/2addr v3, v10

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    iput-object v3, v7, Lp4/f9;->j:Ljava/lang/Integer;

    .line 209
    .line 210
    iput-object v7, v2, Lp4/y9;->b:Lp4/f9;

    .line 211
    .line 212
    iget-object v0, v0, Lp4/v9;->c:Lp4/u9;

    .line 213
    .line 214
    invoke-interface {v0, v2}, Lp4/u9;->a(Lp4/y9;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    monitor-exit v8

    .line 220
    throw v0
.end method
