.class public final Lp4/y9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp4/q7;

.field public b:Lp4/f9;

.field public final c:I


# direct methods
.method public constructor <init>(Lp4/q7;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/f9;

    .line 5
    .line 6
    invoke-direct {v0}, Lp4/f9;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp4/y9;->b:Lp4/f9;

    .line 10
    .line 11
    iput-object p1, p0, Lp4/y9;->a:Lp4/q7;

    .line 12
    .line 13
    const-class p1, Lp4/fa;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    sget-object v0, Lp4/fa;->a:Lp4/fa;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lp4/fa;

    .line 21
    .line 22
    invoke-direct {v0}, Lp4/fa;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lp4/fa;->a:Lp4/fa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    :cond_0
    monitor-exit p1

    .line 28
    iput p2, p0, Lp4/y9;->c:I

    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    monitor-exit p1

    .line 33
    throw p2
.end method


# virtual methods
.method public final a(I)[B
    .locals 9

    .line 1
    iget-object v0, p0, Lp4/y9;->b:Lp4/f9;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v0, Lp4/f9;->i:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v0, p0, Lp4/y9;->b:Lp4/f9;

    .line 16
    .line 17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    iput-object v2, v0, Lp4/f9;->g:Ljava/lang/Boolean;

    .line 20
    .line 21
    new-instance v2, Lp4/g9;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lp4/g9;-><init>(Lp4/f9;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lp4/y9;->a:Lp4/q7;

    .line 27
    .line 28
    iput-object v2, v0, Lp4/q7;->a:Lp4/g9;

    .line 29
    .line 30
    :try_start_0
    const-class v2, Lp4/fa;

    .line 31
    .line 32
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    :try_start_1
    sget-object v3, Lp4/fa;->a:Lp4/fa;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    new-instance v3, Lp4/fa;

    .line 38
    .line 39
    invoke-direct {v3}, Lp4/fa;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v3, Lp4/fa;->a:Lp4/fa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    sget-object v2, Lcom/google/android/gms/internal/clearcut/d0;->d:Lcom/google/android/gms/internal/clearcut/d0;

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    :try_start_3
    new-instance p1, Lp4/r7;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lp4/r7;-><init>(Lp4/q7;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lv6/e;

    .line 55
    .line 56
    invoke-direct {v0}, Lv6/e;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/clearcut/d0;->l(Lu6/a;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, v0, Lv6/e;->d:Z

    .line 63
    .line 64
    new-instance v1, Ljava/io/StringWriter;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 67
    .line 68
    .line 69
    :try_start_4
    new-instance v2, Lv6/f;

    .line 70
    .line 71
    iget-object v5, v0, Lv6/e;->a:Ljava/util/HashMap;

    .line 72
    .line 73
    iget-object v6, v0, Lv6/e;->b:Ljava/util/HashMap;

    .line 74
    .line 75
    iget-object v7, v0, Lv6/e;->c:Lv6/a;

    .line 76
    .line 77
    iget-boolean v8, v0, Lv6/e;->d:Z

    .line 78
    .line 79
    move-object v3, v2

    .line 80
    move-object v4, v1

    .line 81
    invoke-direct/range {v3 .. v8}, Lv6/f;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lv6/a;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Lv6/f;->f(Ljava/lang/Object;)Lv6/f;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lv6/f;->h()V

    .line 88
    .line 89
    .line 90
    iget-object p1, v2, Lv6/f;->b:Landroid/util/JsonWriter;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    .line 94
    .line 95
    :catch_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "utf-8"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_2
    new-instance p1, Lp4/r7;

    .line 107
    .line 108
    invoke-direct {p1, v0}, Lp4/r7;-><init>(Lp4/q7;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lp4/r1;

    .line 112
    .line 113
    invoke-direct {v0}, Lp4/r1;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/clearcut/d0;->l(Lu6/a;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/util/HashMap;

    .line 120
    .line 121
    iget-object v2, v0, Lp4/r1;->a:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/util/HashMap;

    .line 127
    .line 128
    iget-object v3, v0, Lp4/r1;->b:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v0, Lp4/r1;->c:Lp4/q1;

    .line 134
    .line 135
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    .line 138
    .line 139
    .line 140
    :try_start_6
    new-instance v4, Lp4/p1;

    .line 141
    .line 142
    invoke-direct {v4, v3, v1, v2, v0}, Lp4/p1;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lt6/d;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, p1}, Lp4/p1;->h(Lp4/r7;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 146
    .line 147
    .line 148
    :catch_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :catch_2
    move-exception p1

    .line 154
    goto :goto_1

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    monitor-exit v2

    .line 157
    throw p1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    .line 158
    :goto_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 159
    .line 160
    const-string v1, "Failed to covert logging to UTF-8 byte array"

    .line 161
    .line 162
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw v0
.end method
