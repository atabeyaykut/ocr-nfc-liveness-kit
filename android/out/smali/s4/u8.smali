.class public final synthetic Ls4/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls4/x8;

.field public final synthetic b:Ls4/z6;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ls4/a9;


# direct methods
.method public synthetic constructor <init>(Ls4/x8;Ls4/a9;Ls4/z6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/u8;->a:Ls4/x8;

    iput-object p2, p0, Ls4/u8;->d:Ls4/a9;

    iput-object p3, p0, Ls4/u8;->b:Ls4/z6;

    iput-object p4, p0, Ls4/u8;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Ls4/u8;->a:Ls4/x8;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/u8;->d:Ls4/a9;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/u8;->b:Ls4/z6;

    .line 6
    .line 7
    iget-object v3, p0, Ls4/u8;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v4, v1, Ls4/a9;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Ls4/a7;

    .line 15
    .line 16
    iput-object v2, v4, Ls4/a7;->b:Ls4/z6;

    .line 17
    .line 18
    iget-object v2, v4, Ls4/a7;->a:Ls4/n8;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v2, Ls4/n8;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Lx5/a;->D(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "NA"

    .line 35
    .line 36
    :goto_0
    new-instance v4, Ls4/m8;

    .line 37
    .line 38
    invoke-direct {v4}, Ls4/m8;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v5, v0, Ls4/x8;->a:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v5, v4, Ls4/m8;->a:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v5, v0, Ls4/x8;->b:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v5, v4, Ls4/m8;->b:Ljava/lang/String;

    .line 48
    .line 49
    const-class v5, Ls4/x8;

    .line 50
    .line 51
    monitor-enter v5

    .line 52
    :try_start_0
    sget-object v6, Ls4/x8;->j:Ls4/r0;

    .line 53
    .line 54
    const v7, 0x7fffffff

    .line 55
    .line 56
    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v6}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const/4 v8, 0x4

    .line 73
    new-array v8, v8, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    :goto_1
    invoke-virtual {v6}, Landroidx/core/os/LocaleListCompat;->size()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-ge v9, v11, :cond_5

    .line 82
    .line 83
    invoke-virtual {v6, v9}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    sget-object v12, Lv7/c;->a:Lr3/j;

    .line 88
    .line 89
    invoke-virtual {v11}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    add-int/lit8 v12, v10, 0x1

    .line 97
    .line 98
    array-length v13, v8

    .line 99
    if-ge v13, v12, :cond_4

    .line 100
    .line 101
    shr-int/lit8 v14, v13, 0x1

    .line 102
    .line 103
    add-int/2addr v13, v14

    .line 104
    add-int/lit8 v13, v13, 0x1

    .line 105
    .line 106
    if-ge v13, v12, :cond_2

    .line 107
    .line 108
    add-int/lit8 v13, v12, -0x1

    .line 109
    .line 110
    invoke-static {v13}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    add-int/2addr v13, v13

    .line 115
    :cond_2
    if-gez v13, :cond_3

    .line 116
    .line 117
    const v13, 0x7fffffff

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-static {v8, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    :cond_4
    aput-object v11, v8, v10

    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    move v10, v12

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    sget-object v6, Ls4/d0;->b:Ls4/b0;

    .line 131
    .line 132
    if-nez v10, :cond_6

    .line 133
    .line 134
    sget-object v6, Ls4/r0;->e:Ls4/r0;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    new-instance v6, Ls4/r0;

    .line 138
    .line 139
    invoke-direct {v6, v8, v10}, Ls4/r0;-><init>([Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    :goto_2
    sput-object v6, Ls4/x8;->j:Ls4/r0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    :goto_3
    monitor-exit v5

    .line 145
    iput-object v6, v4, Ls4/m8;->e:Ls4/d0;

    .line 146
    .line 147
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    .line 149
    iput-object v5, v4, Ls4/m8;->h:Ljava/lang/Boolean;

    .line 150
    .line 151
    iput-object v2, v4, Ls4/m8;->d:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v3, v4, Ls4/m8;->c:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v2, v0, Ls4/x8;->f:Lh5/z;

    .line 156
    .line 157
    invoke-virtual {v2}, Lh5/z;->m()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    iget-object v2, v0, Ls4/x8;->f:Lh5/z;

    .line 164
    .line 165
    invoke-virtual {v2}, Lh5/z;->i()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    iget-object v2, v0, Ls4/x8;->d:Lv7/l;

    .line 173
    .line 174
    invoke-virtual {v2}, Lv7/l;->a()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    :goto_4
    iput-object v2, v4, Ls4/m8;->f:Ljava/lang/String;

    .line 179
    .line 180
    const/16 v2, 0xa

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    and-int/2addr v2, v7

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iput-object v2, v4, Ls4/m8;->j:Ljava/lang/Integer;

    .line 196
    .line 197
    iput-object v4, v1, Ls4/a9;->c:Ljava/lang/Object;

    .line 198
    .line 199
    iget-object v0, v0, Ls4/x8;->c:Ls4/w8;

    .line 200
    .line 201
    invoke-interface {v0, v1}, Ls4/w8;->a(Ls4/a9;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    monitor-exit v5

    .line 207
    throw v0
.end method
