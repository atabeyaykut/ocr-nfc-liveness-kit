.class public Lv9/d;
.super Lc5/w;
.source "SourceFile"


# direct methods
.method public static final g0(Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Lv9/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lv9/c;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lv9/c$b;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lv9/c$b;-><init>(Lv9/c;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 v0, 0x1

    .line 12
    :goto_1
    invoke-virtual {p0}, Lm9/b;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lm9/b;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    return-void
.end method

.method public static final h0(Ljava/io/File;)Ljava/io/File;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "image_cache"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "path"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x4

    .line 21
    invoke-static {v1, v2, v3, v3, v4}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v5, 0x1

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-le v2, v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sget-char v6, Ljava/io/File;->separatorChar:C

    .line 39
    .line 40
    if-ne v2, v6, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-static {v1, v6, v2, v3, v4}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ltz v2, :cond_0

    .line 48
    .line 49
    sget-char v6, Ljava/io/File;->separatorChar:C

    .line 50
    .line 51
    add-int/2addr v2, v5

    .line 52
    invoke-static {v1, v6, v2, v3, v4}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ltz v2, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/16 v4, 0x3a

    .line 62
    .line 63
    if-lez v2, :cond_2

    .line 64
    .line 65
    add-int/lit8 v6, v2, -0x1

    .line 66
    .line 67
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ne v6, v4, :cond_2

    .line 72
    .line 73
    :goto_0
    add-int/lit8 v1, v2, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v5, -0x1

    .line 77
    if-ne v2, v5, :cond_4

    .line 78
    .line 79
    invoke-static {v1, v4}, Lmc/n;->I(Ljava/lang/CharSequence;C)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 v1, 0x0

    .line 91
    :goto_1
    if-lez v1, :cond_5

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const/4 v1, 0x0

    .line 96
    :goto_2
    if-eqz v1, :cond_6

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v1, "this.toString()"

    .line 104
    .line 105
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    :cond_7
    if-nez v3, :cond_9

    .line 116
    .line 117
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 118
    .line 119
    invoke-static {p0, v1}, Lmc/n;->I(Ljava/lang/CharSequence;C)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_8
    new-instance v1, Ljava/io/File;

    .line 127
    .line 128
    invoke-static {p0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    :goto_3
    new-instance v1, Ljava/io/File;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_4
    move-object v0, v1

    .line 169
    :goto_5
    return-object v0
.end method
