.class public final Ls4/a9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls4/a7;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls4/m8;

    invoke-direct {v0}, Ls4/m8;-><init>()V

    iput-object v0, p0, Ls4/a9;->c:Ljava/lang/Object;

    iput-object p1, p0, Ls4/a9;->b:Ljava/lang/Object;

    .line 1
    const-class p1, Ls4/e9;

    monitor-enter p1

    :try_start_0
    sget-object v0, Ls4/e9;->a:Ls4/e9;

    if-nez v0, :cond_0

    new-instance v0, Ls4/e9;

    invoke-direct {v0}, Ls4/e9;-><init>()V

    sput-object v0, Ls4/e9;->a:Ls4/e9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    .line 2
    iput p2, p0, Ls4/a9;->a:I

    return-void

    :catchall_0
    move-exception p2

    .line 3
    monitor-exit p1

    throw p2
.end method

.method public synthetic constructor <init>([Lq6/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Ls4/a9;->a:I

    iput-object p1, p0, Ls4/a9;->b:Ljava/lang/Object;

    new-instance p1, Lq6/a;

    invoke-direct {p1}, Lq6/a;-><init>()V

    iput-object p1, p0, Ls4/a9;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)[B
    .locals 9

    .line 1
    iget-object v0, p0, Ls4/a9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls4/m8;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v0, Ls4/m8;->i:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v0, p0, Ls4/a9;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ls4/m8;

    .line 20
    .line 21
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    iput-object v2, v0, Ls4/m8;->g:Ljava/lang/Boolean;

    .line 24
    .line 25
    iget-object v2, p0, Ls4/a9;->b:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Ls4/a7;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v4, Ls4/n8;

    .line 34
    .line 35
    invoke-direct {v4, v0}, Ls4/n8;-><init>(Ls4/m8;)V

    .line 36
    .line 37
    .line 38
    iput-object v4, v3, Ls4/a7;->a:Ls4/n8;

    .line 39
    .line 40
    :try_start_0
    const-class v0, Ls4/e9;

    .line 41
    .line 42
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 43
    :try_start_1
    sget-object v3, Ls4/e9;->a:Ls4/e9;

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    new-instance v3, Ls4/e9;

    .line 48
    .line 49
    invoke-direct {v3}, Ls4/e9;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v3, Ls4/e9;->a:Ls4/e9;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    sget-object v0, Ls4/d9;->b:Ls4/d9;

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    :try_start_3
    check-cast v2, Ls4/a7;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance p1, Ls4/b7;

    .line 65
    .line 66
    invoke-direct {p1, v2}, Ls4/b7;-><init>(Ls4/a7;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lv6/e;

    .line 70
    .line 71
    invoke-direct {v2}, Lv6/e;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ls4/d9;->a(Lu6/a;)V

    .line 75
    .line 76
    .line 77
    iput-boolean v1, v2, Lv6/e;->d:Z

    .line 78
    .line 79
    new-instance v0, Ljava/io/StringWriter;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 82
    .line 83
    .line 84
    :try_start_4
    new-instance v1, Lv6/f;

    .line 85
    .line 86
    iget-object v5, v2, Lv6/e;->a:Ljava/util/HashMap;

    .line 87
    .line 88
    iget-object v6, v2, Lv6/e;->b:Ljava/util/HashMap;

    .line 89
    .line 90
    iget-object v7, v2, Lv6/e;->c:Lv6/a;

    .line 91
    .line 92
    iget-boolean v8, v2, Lv6/e;->d:Z

    .line 93
    .line 94
    move-object v3, v1

    .line 95
    move-object v4, v0

    .line 96
    invoke-direct/range {v3 .. v8}, Lv6/f;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lv6/a;Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Lv6/f;->f(Ljava/lang/Object;)Lv6/f;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lv6/f;->h()V

    .line 103
    .line 104
    .line 105
    iget-object p1, v1, Lv6/f;->b:Landroid/util/JsonWriter;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .line 109
    .line 110
    :catch_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v0, "utf-8"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_2
    check-cast v2, Ls4/a7;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance p1, Ls4/b7;

    .line 127
    .line 128
    invoke-direct {p1, v2}, Ls4/b7;-><init>(Ls4/a7;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Ls4/d1;

    .line 132
    .line 133
    invoke-direct {v1}, Ls4/d1;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ls4/d9;->a(Lu6/a;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Ljava/util/HashMap;

    .line 140
    .line 141
    iget-object v2, v1, Ls4/d1;->a:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Ljava/util/HashMap;

    .line 147
    .line 148
    iget-object v3, v1, Ls4/d1;->b:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v1, Ls4/d1;->c:Ls4/c1;

    .line 154
    .line 155
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    .line 158
    .line 159
    .line 160
    :try_start_6
    new-instance v4, Ls4/b1;

    .line 161
    .line 162
    invoke-direct {v4, v3, v0, v2, v1}, Ls4/b1;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lt6/d;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, p1}, Ls4/b1;->h(Ls4/b7;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 166
    .line 167
    .line 168
    :catch_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1

    .line 173
    :catch_2
    move-exception p1

    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    monitor-exit v0

    .line 177
    throw p1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    .line 178
    :goto_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 179
    .line 180
    const-string v1, "Failed to covert logging to UTF-8 byte array"

    .line 181
    .line 182
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public final e([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    array-length v0, p1

    iget v1, p0, Ls4/a9;->a:I

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Ls4/a9;->b:Ljava/lang/Object;

    check-cast v0, [Lq6/b;

    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, p1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    array-length v6, v4

    if-gt v6, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v5, p1}, Lq6/b;->e([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length p1, v4

    if-le p1, v1, :cond_3

    iget-object p1, p0, Ls4/a9;->c:Ljava/lang/Object;

    check-cast p1, Lq6/a;

    invoke-virtual {p1, v4}, Lq6/a;->e([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    :cond_3
    return-object v4
.end method
