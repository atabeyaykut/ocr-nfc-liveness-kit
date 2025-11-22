.class public final Lr4/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l6;


# instance fields
.field public final a:Lc6/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lc6/t;

.field public final c:Lr4/i6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/i6;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lr4/p6;->c:Lr4/i6;

    .line 5
    .line 6
    sget-object p2, Ls2/a;->e:Ls2/a;

    .line 7
    .line 8
    invoke-static {p1}, Lu2/w;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lu2/w;->a()Lu2/w;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lu2/w;->c(Ls2/a;)Lu2/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Ls2/a;->d:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v0, Lr2/b;

    .line 22
    .line 23
    const-string v1, "json"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lc6/t;

    .line 35
    .line 36
    new-instance v0, Lr4/n6;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lr4/n6;-><init>(Lu2/t;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0}, Lc6/t;-><init>(La7/b;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lr4/p6;->a:Lc6/t;

    .line 45
    .line 46
    :cond_0
    new-instance p2, Lc6/t;

    .line 47
    .line 48
    new-instance v0, Lr4/o6;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lr4/o6;-><init>(Lu2/t;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, v0}, Lc6/t;-><init>(La7/b;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lr4/p6;->b:Lc6/t;

    .line 57
    .line 58
    return-void
.end method

.method public static b(Lr4/i6;Lp4/c7;)Lr2/a;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr4/i6;->a()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    iget-object v0, p1, Lp4/c7;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lr4/a6;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v0, Lr4/a6;->i:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v0, p1, Lp4/c7;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lr4/a6;

    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    iput-object v2, v0, Lr4/a6;->g:Ljava/lang/Boolean;

    .line 28
    .line 29
    iget-object v2, p1, Lp4/c7;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lpf/k;

    .line 32
    .line 33
    new-instance v3, Lr4/b6;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Lr4/b6;-><init>(Lr4/a6;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, v2, Lpf/k;->a:Ljava/lang/Object;

    .line 39
    .line 40
    :try_start_0
    invoke-static {}, Lr4/t6;->a()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    .line 42
    .line 43
    sget-object v0, Lc5/e0;->m:Lc5/e0;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    :try_start_1
    iget-object p0, p1, Lp4/c7;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lpf/k;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance p1, Lr4/r4;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lr4/r4;-><init>(Lpf/k;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lv6/e;

    .line 60
    .line 61
    invoke-direct {p0}, Lv6/e;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lc5/e0;->d(Lu6/a;)V

    .line 65
    .line 66
    .line 67
    iput-boolean v1, p0, Lv6/e;->d:Z

    .line 68
    .line 69
    new-instance v0, Ljava/io/StringWriter;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    .line 73
    .line 74
    :try_start_2
    new-instance v1, Lv6/f;

    .line 75
    .line 76
    iget-object v4, p0, Lv6/e;->a:Ljava/util/HashMap;

    .line 77
    .line 78
    iget-object v5, p0, Lv6/e;->b:Ljava/util/HashMap;

    .line 79
    .line 80
    iget-object v6, p0, Lv6/e;->c:Lv6/a;

    .line 81
    .line 82
    iget-boolean v7, p0, Lv6/e;->d:Z

    .line 83
    .line 84
    move-object v2, v1

    .line 85
    move-object v3, v0

    .line 86
    invoke-direct/range {v2 .. v7}, Lv6/f;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lv6/a;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lv6/f;->f(Ljava/lang/Object;)Lv6/f;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lv6/f;->h()V

    .line 93
    .line 94
    .line 95
    iget-object p0, v1, Lv6/f;->b:Landroid/util/JsonWriter;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    .line 100
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string p1, "utf-8"

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    iget-object p0, p1, Lp4/c7;->a:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lpf/k;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance p1, Lr4/r4;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Lr4/r4;-><init>(Lpf/k;)V

    .line 121
    .line 122
    .line 123
    new-instance p0, Lr4/b;

    .line 124
    .line 125
    invoke-direct {p0}, Lr4/b;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p0}, Lc5/e0;->d(Lu6/a;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Ljava/util/HashMap;

    .line 132
    .line 133
    iget-object v1, p0, Lr4/b;->a:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v2, p0, Lr4/b;->b:Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lr4/b;->c:Lr4/a;

    .line 146
    .line 147
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    .line 151
    .line 152
    :try_start_4
    new-instance v3, Lr4/g7;

    .line 153
    .line 154
    invoke-direct {v3, v2, v0, v1, p0}, Lr4/g7;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lt6/d;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, p1}, Lr4/g7;->h(Lr4/r4;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 158
    .line 159
    .line 160
    :catch_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 161
    .line 162
    .line 163
    move-result-object p0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    .line 164
    :goto_1
    new-instance p1, Lr2/a;

    .line 165
    .line 166
    sget-object v0, Lr2/d;->b:Lr2/d;

    .line 167
    .line 168
    invoke-direct {p1, p0, v0}, Lr2/a;-><init>(Ljava/lang/Object;Lr2/d;)V

    .line 169
    .line 170
    .line 171
    return-object p1

    .line 172
    :catch_2
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 174
    .line 175
    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 176
    .line 177
    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method


# virtual methods
.method public final a(Lp4/c7;)V
    .locals 2

    iget-object v0, p0, Lr4/p6;->c:Lr4/i6;

    invoke-virtual {v0}, Lr4/i6;->a()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/p6;->a:Lc6/t;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/p6;->b:Lc6/t;

    :goto_0
    invoke-virtual {v1}, Lc6/t;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f;

    invoke-static {v0, p1}, Lr4/p6;->b(Lr4/i6;Lp4/c7;)Lr2/a;

    move-result-object p1

    invoke-interface {v1, p1}, Lr2/f;->a(Lr2/a;)V

    :cond_1
    return-void
.end method
