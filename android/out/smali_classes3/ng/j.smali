.class public final Lng/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/SharedPreferences;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "recent_search_texts"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 22
    :goto_1
    if-nez v3, :cond_7

    .line 23
    .line 24
    new-instance v3, Lj7/h;

    .line 25
    .line 26
    invoke-direct {v3}, Lj7/h;-><init>()V

    .line 27
    .line 28
    .line 29
    const-class v4, [Ljava/lang/String;

    .line 30
    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    new-instance v5, Ljava/io/StringReader;

    .line 36
    .line 37
    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Lq7/a;

    .line 41
    .line 42
    invoke-direct {p0, v5}, Lq7/a;-><init>(Ljava/io/StringReader;)V

    .line 43
    .line 44
    .line 45
    const-string v5, "AssertionError (GSON 2.8.5): "

    .line 46
    .line 47
    iput-boolean v0, p0, Lq7/a;->b:Z

    .line 48
    .line 49
    :try_start_0
    invoke-virtual {p0}, Lq7/a;->B()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_1
    new-instance v0, Lp7/a;

    .line 53
    .line 54
    invoke-direct {v0, v4}, Lp7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Lj7/h;->b(Lp7/a;)Lj7/u;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lj7/u;->a(Lq7/a;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_3

    .line 66
    :catch_0
    move-exception v0

    .line 67
    move-object v3, v0

    .line 68
    const/4 v0, 0x0

    .line 69
    goto :goto_2

    .line 70
    :catch_1
    move-exception v0

    .line 71
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-direct {v1, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :catch_2
    move-exception v0

    .line 94
    new-instance v1, Lj7/s;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_6

    .line 102
    :catch_3
    move-exception v0

    .line 103
    new-instance v1, Lj7/s;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 106
    .line 107
    .line 108
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :catch_4
    move-exception v3

    .line 110
    :goto_2
    if-eqz v0, :cond_6

    .line 111
    .line 112
    :goto_3
    iput-boolean v2, p0, Lq7/a;->b:Z

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    :try_start_3
    invoke-virtual {p0}, Lq7/a;->B()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    const/16 v0, 0xa

    .line 121
    .line 122
    if-ne p0, v0, :cond_3

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_3
    new-instance p0, Lj7/m;

    .line 126
    .line 127
    const-string v0, "JSON document was not fully consumed."

    .line 128
    .line 129
    invoke-direct {p0, v0}, Lj7/m;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
    :try_end_3
    .catch Lq7/c; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 133
    :catch_5
    move-exception p0

    .line 134
    new-instance v0, Lj7/m;

    .line 135
    .line 136
    invoke-direct {v0, p0}, Lj7/m;-><init>(Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :catch_6
    move-exception p0

    .line 141
    new-instance v0, Lj7/s;

    .line 142
    .line 143
    invoke-direct {v0, p0}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_4
    :goto_4
    sget-object p0, Ll7/k;->a:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Ljava/lang/Class;

    .line 154
    .line 155
    if-nez p0, :cond_5

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_5
    move-object v4, p0

    .line 159
    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, [Ljava/lang/String;

    .line 164
    .line 165
    return-object p0

    .line 166
    :cond_6
    :try_start_4
    new-instance v0, Lj7/s;

    .line 167
    .line 168
    invoke-direct {v0, v3}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 169
    .line 170
    .line 171
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :goto_6
    iput-boolean v2, p0, Lq7/a;->b:Z

    .line 173
    .line 174
    throw v0

    .line 175
    :cond_7
    return-object v1
.end method
