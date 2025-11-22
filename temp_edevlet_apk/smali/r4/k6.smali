.class public final synthetic Lr4/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/m6;

.field public final synthetic b:Lr4/q4;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lp4/c7;


# direct methods
.method public synthetic constructor <init>(Lr4/m6;Lp4/c7;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lr4/q4;->b:Lr4/q4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/k6;->a:Lr4/m6;

    iput-object p2, p0, Lr4/k6;->d:Lp4/c7;

    iput-object v0, p0, Lr4/k6;->b:Lr4/q4;

    iput-object p3, p0, Lr4/k6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lr4/k6;->a:Lr4/m6;

    .line 4
    .line 5
    iget-object v2, v1, Lr4/k6;->d:Lp4/c7;

    .line 6
    .line 7
    iget-object v3, v1, Lr4/k6;->b:Lr4/q4;

    .line 8
    .line 9
    iget-object v4, v1, Lr4/k6;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v2, Lp4/c7;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v5, Lpf/k;

    .line 17
    .line 18
    iput-object v3, v5, Lpf/k;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v3, v5, Lpf/k;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Lr4/b6;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    sget v7, Lr4/z2;->a:I

    .line 29
    .line 30
    iget-object v3, v3, Lr4/b6;->d:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v7, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 44
    :goto_1
    if-nez v7, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const-string v3, "NA"

    .line 51
    .line 52
    :goto_2
    new-instance v7, Lr4/a6;

    .line 53
    .line 54
    invoke-direct {v7}, Lr4/a6;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v8, v0, Lr4/m6;->a:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v8, v7, Lr4/a6;->a:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v8, v0, Lr4/m6;->b:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v8, v7, Lr4/a6;->b:Ljava/lang/String;

    .line 64
    .line 65
    const-class v8, Lr4/m6;

    .line 66
    .line 67
    monitor-enter v8

    .line 68
    :try_start_0
    sget-object v9, Lr4/m6;->i:Lr4/y6;

    .line 69
    .line 70
    const v10, 0x7fffffff

    .line 71
    .line 72
    .line 73
    if-eqz v9, :cond_3

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-static {v9}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    const/4 v11, 0x4

    .line 89
    new-array v11, v11, [Ljava/lang/Object;

    .line 90
    .line 91
    move-object v12, v11

    .line 92
    const/4 v11, 0x0

    .line 93
    :goto_3
    invoke-virtual {v9}, Landroidx/core/os/LocaleListCompat;->size()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-ge v5, v13, :cond_7

    .line 98
    .line 99
    invoke-virtual {v9, v5}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    sget-object v14, Lv7/c;->a:Lr3/j;

    .line 104
    .line 105
    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v14, v11, 0x1

    .line 113
    .line 114
    array-length v15, v12

    .line 115
    if-ge v15, v14, :cond_6

    .line 116
    .line 117
    shr-int/lit8 v16, v15, 0x1

    .line 118
    .line 119
    add-int v15, v15, v16

    .line 120
    .line 121
    add-int/2addr v15, v6

    .line 122
    if-ge v15, v14, :cond_4

    .line 123
    .line 124
    add-int/lit8 v15, v14, -0x1

    .line 125
    .line 126
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    add-int/2addr v15, v15

    .line 131
    :cond_4
    if-gez v15, :cond_5

    .line 132
    .line 133
    const v15, 0x7fffffff

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    :cond_6
    aput-object v13, v12, v11

    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    move v11, v14

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    sget-object v5, Lr4/x6;->b:Lr4/v6;

    .line 147
    .line 148
    if-nez v11, :cond_8

    .line 149
    .line 150
    sget-object v5, Lr4/y6;->e:Lr4/y6;

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    new-instance v5, Lr4/y6;

    .line 154
    .line 155
    invoke-direct {v5, v12, v11}, Lr4/y6;-><init>([Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    :goto_4
    move-object v9, v5

    .line 159
    sput-object v9, Lr4/m6;->i:Lr4/y6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    :goto_5
    monitor-exit v8

    .line 162
    iput-object v9, v7, Lr4/a6;->e:Lr4/x6;

    .line 163
    .line 164
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    iput-object v5, v7, Lr4/a6;->h:Ljava/lang/Boolean;

    .line 167
    .line 168
    iput-object v3, v7, Lr4/a6;->d:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v4, v7, Lr4/a6;->c:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v3, v0, Lr4/m6;->f:Lh5/z;

    .line 173
    .line 174
    invoke-virtual {v3}, Lh5/z;->m()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_9

    .line 179
    .line 180
    iget-object v3, v0, Lr4/m6;->f:Lh5/z;

    .line 181
    .line 182
    invoke-virtual {v3}, Lh5/z;->i()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/lang/String;

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_9
    iget-object v3, v0, Lr4/m6;->d:Lv7/l;

    .line 190
    .line 191
    invoke-virtual {v3}, Lv7/l;->a()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    :goto_6
    iput-object v3, v7, Lr4/a6;->f:Ljava/lang/String;

    .line 196
    .line 197
    const/16 v3, 0xa

    .line 198
    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    and-int/2addr v3, v10

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    iput-object v3, v7, Lr4/a6;->j:Ljava/lang/Integer;

    .line 213
    .line 214
    iput-object v7, v2, Lp4/c7;->b:Ljava/lang/Object;

    .line 215
    .line 216
    iget-object v0, v0, Lr4/m6;->c:Lr4/l6;

    .line 217
    .line 218
    invoke-interface {v0, v2}, Lr4/l6;->a(Lp4/c7;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    monitor-exit v8

    .line 224
    throw v0
.end method
